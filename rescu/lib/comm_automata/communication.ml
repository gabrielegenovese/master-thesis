open Buffer_util

(** Representation of a communication in an execution of a system.*)

type t =
  | Matched of System.ctrl_state * System.id_actor list * Buffer_id.t * System.message
    (* new state, list of actors, buffer, message *)
  | Unmatched of System.ctrl_state * System.id_actor * Buffer_id.t * System.message
    (* new state, actor, buffer, message *)
  | Unmatched_reception of
      System.ctrl_state * System.id_actor * Buffer_id.t * System.message
(* new state, actor, buffer, message *)

exception Unexpected_unmatched_reception of string
exception Unexpected_reception of string

let create_matched new_state actors buff msg = Matched (new_state, actors, buff, msg)

let create_unmatched new_state actor buffer message =
  Unmatched (new_state, actor, buffer, message)

let create_unmatched_reception new_state actor buffer message =
  Unmatched_reception (new_state, actor, buffer, message)

let short_string (comm : t) : string =
  match comm with
  | Matched (_, _, buffer, message) -> Printf.sprintf "%d!?%s" buffer message
  | Unmatched (_, _, buffer, message) -> Printf.sprintf "%d!%s" buffer message
  | Unmatched_reception (_, _, buffer, message) -> Printf.sprintf "%d?%s" buffer message

let short_print (comm : t) : unit = Format.printf "%s" (short_string comm)

let print_with_state (system : System.t) (comm : t) : unit =
  Format.printf " --";
  match comm with
  | Matched (state, _, buffer, message) ->
      Format.printf "%d!?%s--> %s" buffer message (System.state_to_string system state)
  | Unmatched (state, _, buffer, message) ->
      Format.printf "%d!%s--> %s" buffer message (System.state_to_string system state)
  | Unmatched_reception (state, _, buffer, message) ->
      Format.printf "%d?%s--> %s" buffer message (System.state_to_string system state)

let compare = compare
let default = Matched (System.default_ctrl_state, [], 0, "")
(* TODO: probably a good idea to improve that *)

(** Returns the list of unmatched communications possible from a state in a system *)
let unmatched_comms_from_state (system : System.t) (sys_ctrl_state : System.ctrl_state) :
    t list =
  let rec aux (transition_list : System.transition list) : t list =
    match transition_list with
    | [] -> []
    | head :: tail -> (
        let destination_state_id = head.new_state in
        match head.action with
        | Some (Send (buffer, message)) ->
            create_unmatched destination_state_id head.owner buffer message :: aux tail
        | _ -> aux tail (* The transition is not a send action, ignored *))
  in
  aux (System.transitions_from_state system sys_ctrl_state)

(** Returns the list of matched communications that may complete the send of
      pending_message *)
let rec possible_completions_of_unmatched_comm (actor_id : System.id_actor)
    (pending_buffer : int) (pending_message : string)
    (transition_list : System.transition list) : t list =
  match transition_list with
  | [] -> []
  | head :: tail -> (
      match head.action with
      | Some (Reception (buffer, message)) ->
          if message <> pending_message || buffer <> pending_buffer then
            possible_completions_of_unmatched_comm actor_id pending_buffer pending_message
              tail
          else
            create_matched head.new_state [ head.owner; actor_id ] buffer message
            :: possible_completions_of_unmatched_comm actor_id pending_buffer
                 pending_message tail
      | _ ->
          possible_completions_of_unmatched_comm actor_id pending_buffer pending_message
            tail)

let unmatched_reception_from_state (system : System.t)
    (sys_ctrl_state : System.ctrl_state) : t list =
  let rec aux (transitions : System.transition list) =
    match transitions with
    | [] -> []
    | hd :: tl -> (
        match hd.action with
        | Some (Reception (buffer, message)) ->
            create_unmatched_reception hd.new_state hd.owner buffer message :: aux tl
        | _ -> aux tl)
  in
  let possible_transitions = System.transitions_from_state system sys_ctrl_state in
  aux possible_transitions

(** [add_matched system blocked_buffers list_unmatched] *)
let add_matched (system : System.t) (blocked_buffers : Buffer_set.t)
    (list_unmatched : t list) : t list =
  let rec aux (list_res : t list) (comms_to_match : t list) : t list =
    match comms_to_match with
    | [] -> list_res
    | head :: tail -> (
        match head with
        | Unmatched (new_state, actor, buffer, message) ->
            if Buffer_set.mem buffer blocked_buffers then aux list_res tail
            else
              let list_reachable =
                possible_completions_of_unmatched_comm actor buffer message
                  (System.transitions_from_state system new_state)
              in
              aux (List.rev_append list_reachable list_res) tail
        | _ ->
            raise
              (Unexpected_reception "Cannot match a communication containing a reception")
        )
  in
  aux list_unmatched list_unmatched

let comms_from_state (system : System.t) (initial_state : System.ctrl_state)
    (blocked_buffers : Buffer_set.t) : t list =
  let list_unmatched = unmatched_comms_from_state system initial_state in
  let list_all = add_matched system blocked_buffers list_unmatched in
  list_all

let comms_from_state_with_rec (system : System.t) (initial_state : System.ctrl_state)
    (blocked_buffers : Buffer_set.t) : t list =
  let list_unmatched_rec = unmatched_reception_from_state system initial_state in
  let list_other = comms_from_state system initial_state blocked_buffers in
  List.rev_append list_other list_unmatched_rec
