open Comm_automata.Buffer_util
open Comm_automata

type t =
  System.ctrl_state
  * (Buffer_id.t * string) option
  * Buffer_set.t
  * Communication.t
  * bool
  * bool

let list_initials = ref []
let initial_states () = !list_initials

let create ctrl_state pending_rcv blocked_buffers last_comm abv_flag : t =
  (ctrl_state, pending_rcv, blocked_buffers, last_comm, abv_flag, false)

let create_initial ctrl_state : t =
  let state = (ctrl_state, None, Buffer_set.empty, Communication.default, false, false) in
  let _ = list_initials := state :: !list_initials in
  state

let create_accepting ctrl_state pending_rcv blocked_buffers last_comm abv_flag : t =
  (ctrl_state, pending_rcv, blocked_buffers, last_comm, abv_flag, true)

let is_initial (state : t) : bool = List.mem state !list_initials

let is_accepting (state : t) : bool =
  match state with _, _, _, _, _, accepting -> accepting

let pretty_string (system : System.t) (state : t) : string =
  match state with
  | ctrl_state, pending_msg, blocked, comm, flag, accepting ->
      String.concat " "
        [
          "\"";
          Printf.sprintf "%s" (System.state_to_string system ctrl_state);
          (match pending_msg with
          | Some (buffer, message) -> Printf.sprintf "(%s, %d)" message buffer
          | None -> Printf.sprintf "");
          Printf.sprintf "{%s}"
            (String.concat ", "
               (Buffer_set.fold (fun elem acc -> string_of_int elem :: acc) blocked []));
          Communication.short_string comm;
          (match flag with true -> "F" | false -> "");
          (if accepting then "X" else "");
          "\"";
        ]

let print_ctrl_state (system : System.t) (state : t) : unit =
  let ctrl_state, _, _, _, _, _ = state in
  Format.printf "%s" (System.state_to_string system ctrl_state)

let equal = ( = )
let compare = compare
let hash = Hashtbl.hash

(** Returns the list of Arsc_state reachable given an Membership_state and
        an unmatched communication *)
let reachable_unmatched (system : System.t) (state : t) new_ctrl_state actor buffer
    message (comm : Communication.t) =
  let _, pending_rcv, blocked_buffers, last_comm, abv_flag, _ = state in
  let buffer_is_bag = Buffer_set.mem buffer system.bag_buffers in
  let new_blocked_buffers =
    if buffer_is_bag then blocked_buffers else Buffer_set.add buffer blocked_buffers
    (* If the buffer has a bag semantic, we don't block it after an unmatched send. *)
  in
  (* A_bv: Loop over each possible communication *)
  create new_ctrl_state pending_rcv new_blocked_buffers last_comm abv_flag
  ::
  (match pending_rcv with
  | None ->
      if Buffer_set.mem buffer blocked_buffers then []
      else
        (* Candidate for the final reception *)
        [ create new_ctrl_state (Some (buffer, message)) new_blocked_buffers comm false ]
  | Some _ ->
      let prev_actors, prev_buffer =
        match last_comm with
        | Unmatched (_, prev_actor, prev_buffer, _) -> ([ prev_actor ], prev_buffer)
        | Matched (_, prev_actor, prev_buffer, _) -> (prev_actor, prev_buffer)
        | _ -> ([], -1)
        (* TODO: Decide how to deal with this kind of case *)
      in
      if
        ((not buffer_is_bag) && prev_buffer = buffer)
        (* Same action in the same FIFO buffer *)
        || List.mem actor prev_actors
      then [ create new_ctrl_state pending_rcv new_blocked_buffers comm true ]
      else [])

(** Returns the list of Arsc_state reachable given an Membership_state and
        a matched communication *)
let reachable_matched (initial_state : t) new_state actors buffer comm =
  let _, pending_rcv, blocked_buffers, last_comm, abv_flag, _ = initial_state in
  create new_state pending_rcv blocked_buffers last_comm abv_flag
  ::
  (match pending_rcv with
  | Some _ ->
      let last_comm, prev_buffer =
        match last_comm with
        | Unmatched (_, actor, prev_buffer, _) -> ([ actor ], prev_buffer)
        | Matched (_, actors, prev_buffer, _) -> (actors, prev_buffer)
        | Unmatched_reception _ ->
            raise
              (Communication.Unexpected_unmatched_reception
                 "The search is not supposed to continue from a state reached through a \
                  unmatched reception")
      in
      if
        buffer = prev_buffer
        || List.mem (List.hd actors) last_comm
        || List.mem (List.hd (List.tl actors)) last_comm
        (* Is there a better way to compute the intersection of the two lists ? *)
      then [ create new_state pending_rcv blocked_buffers comm true ]
      else []
  | _ -> [])

(** Returns the list of accepting states reachable through an unmatched reception *)
let reachable_last_reception (system : System.t) (init_state : t) new_state actor buffer
    message =
  let _, pending_rcv, blocked_buffers, last_comm, abv_flag, _ = init_state in
  match (pending_rcv, abv_flag) with
  | Some (pending_buffer, pending_msg), true ->
      let actors, buffer_last =
        match last_comm with
        | Unmatched (_, actor, _, _) -> ([ actor ], None)
        | Matched (_, actors, buffer, _) -> (actors, Some buffer)
        | _ ->
            raise
              (Communication.Unexpected_unmatched_reception
                 "The search is not supposed to continue from a state reached through a \
                  unmatched reception")
      in
      if
        buffer = pending_buffer && message = pending_msg
        && (List.mem actor actors
           || (not (Buffer_set.mem buffer system.bag_buffers))
              &&
              match buffer_last with
              | None -> false
              | Some buffer_last -> buffer = buffer_last)
        (* The last remembered communication was a matching pair on the same FIFO buffer as the last reception *)
      then [ create_accepting new_state None blocked_buffers last_comm true ]
        (* We don't change the last communication, we don't really care at this point (exploration is over) *)
      else []
  | _, _ -> []

let reachable_states (system : System.t) (initial_state : t) (comm : Communication.t) :
    t list =
  match comm with
  | Matched (new_state, actors, buffer, _) ->
      reachable_matched initial_state new_state actors buffer comm
  | Unmatched (new_state, actor, buffer, message) ->
      reachable_unmatched system initial_state new_state actor buffer message comm
  | Unmatched_reception (new_state, actor, buffer, message) ->
      reachable_last_reception system initial_state new_state actor buffer message

let comms_from_state system (state : t) =
  match state with
  | ctrl_state, _, blocked_buffers, _, _, _ ->
      Communication.comms_from_state_with_rec system ctrl_state blocked_buffers
