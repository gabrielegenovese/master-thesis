open Verify_util
open Verify_util.Buffer_automaton
open Comm_automata.Buffer_util
open Comm_automata

module Control_state = struct
  type t = System.ctrl_state

  let print system state = Format.printf "%s" (System.state_to_string system state)
end
(* TODO: move that somwhere else ? *)

type t =
  Control_state.t
  * (System.id_actor * System.id_local_state) list
  * A_p_state.t list
  * A_p_state.t list
  * Buffer_set.t
  * bool
(* TODO: use arrays rather than lists for pebbles, or another appropriate datastructure. *)

let create state target_state pebbles initial_pebbles blocked_buffers : t =
  (state, target_state, pebbles, initial_pebbles, blocked_buffers, false)

let create_init state target_state pebbles initial_pebbles blocked_buffers : t =
  (state, target_state, pebbles, initial_pebbles, blocked_buffers, true)

(** [are_pebbles_in_final_conf automaton cur_pebbles init_pebbles]
checks whether the set of pebbles [cur_pebbles] and [init_pebbles] are in the right
configuration for an accepting state.
[init_pebbles] is supposed to be missing the position of the first pebble,
which is useless at this step. *)
let rec are_pebbles_in_final_conf (automaton : A_p.t) (cur_pebbles : A_p_state.t list)
    (init_pebbles : A_p_state.t list) =
  (* Checks that :
     - for each pebble, reading '#' in A_p from that state leads to the initial position
        of the next pebble
     - the last pebble is an accepting state *)
  (* TODO? : ensure cur_pebble and init_pebble have the right relative lengths:
     cur_pebbles should be exactly one element longer than init_pebbles. *)
  match cur_pebbles with
  | [] -> true
  | hd_cur :: tl_cur -> (
      match init_pebbles with
      | [] ->
          A_p_state.accepting hd_cur
          (* We are in the case where the init list is empty,
             therefore we reached the last current pebble. We check that it is in an accepting state. *)
      | hd_init :: tl_init ->
          List.mem hd_init (A_p.reachable_states automaton (hd_cur, Some "#"))
          && are_pebbles_in_final_conf automaton tl_cur tl_init)

let is_accepting (automaton : A_p.t) (state : t) : bool =
  let ctrl_state, taget_state, pebbles, initial_pebbles, _, _ = state in
  System.state_match_bad ctrl_state taget_state
  &&
  match initial_pebbles with
  | [] -> true
  | _ :: tl -> are_pebbles_in_final_conf automaton pebbles tl

(** Given a list of list, returns the list of combinations of elements
    from each list. Each combination is a list. *)
let rec enumerate_combinations (inputs : 'a list list) : 'a list list =
  match inputs with
  | [] -> []
  | hd :: tl -> (
      let combinations_rest = enumerate_combinations tl in
      match combinations_rest with
      | [] -> List.map (fun elem -> [ elem ]) hd
      | _ :: _ ->
          let add_position_to_combinations combination_list position =
            List.map (fun combination -> position :: combination) combination_list
          in
          List.fold_left
            (fun acc elem ->
              List.rev_append (add_position_to_combinations combinations_rest elem) acc)
            [] hd)

(* [initial_states_for_a_bad automaton_p nb_buffers init_ctrl_state bad_ctrl_state]
   Returns a list of initial states targetting a state matching bad_ctrl_state and initializing pebbles
      on states of A_p *)
let initial_states_for_a_bad (automaton_p : A_p.t) (nb_buffers : int)
    (init_ctrl_state : System.ctrl_state)
    (bad_ctrl_state : (System.id_actor * System.id_local_state) list) : t list =
  let initial_positions_of_pebbles =
    Buffer_automaton.candidates_for_initial_pebbles automaton_p nb_buffers
  in
  let initial_combinations_of_pebbles =
    enumerate_combinations initial_positions_of_pebbles
  in
  List.map
    (fun combination ->
      create_init init_ctrl_state bad_ctrl_state combination combination Buffer_set.empty)
    initial_combinations_of_pebbles

(** [update_pebbles pebbles buffer_id new_value] provide a new set of pebbles,
    with the pebbles of buffer number [buffer_id] set to [new_value]. *)
let update_pebbles pebbles buffer_id new_value =
  List.mapi (fun i a -> if i = buffer_id then new_value else a) pebbles

exception Unexpected_bag

(** [initial_situation bad_ctrl_state nb_buffers init_ctrl_states]
    computes the A_p automaton and the list of initial A_p(s) states for
    a list of initial ctrl states and a given bad state,
    together with a regular expression about the buffers. *)
let initial_situation (bad_conf : System.bad_conf) (nb_buffers : int)
    (init_ctrl_states : System.ctrl_state list) (bag_present : bool) : A_p.t * t list =
  let bad_ctrl_states, buff_regexp = bad_conf in
  match buff_regexp with
  | Exp exp ->
      let _ = if bag_present then raise Unexpected_bag in
      let automaton = automaton_from_regexep exp in
      ( automaton,
        List.fold_left
          (fun acc elem ->
            List.rev_append
              (initial_states_for_a_bad automaton nb_buffers elem bad_ctrl_states)
              acc)
          [] init_ctrl_states )
  | Empty ->
      let automaton = A_p.create () in
      ( automaton,
        List.fold_left
          (fun acc elem -> create elem bad_ctrl_states [] [] Buffer_set.empty :: acc)
          [] init_ctrl_states )

(** Computes the list of all initial situation for an exploration. *)
let initial_situations (system : System.t) : (A_p.t * t list) list =
  (* TODO: Should not be part of this module *)
  let rec aux (bad_confs : System.bad_conf list) =
    match bad_confs with
    | [] -> []
    | hd :: tl ->
        initial_situation hd system.nb_buffers system.initial_states
          (system.bag_buffers != Buffer_set.empty)
        :: aux tl
  in
  aux system.bad_confs

(** Returns the list of a_ps_states reachable from a give one applying a given communication. *)
let reachable_states (system : System.t) (automaton : A_p.t) (init_state : t)
    (comm : Communication.t) : t list =
  let _, target_ctrl_state, pebbles, pebbles_init, blocked_buffers, _ = init_state in
  match comm with
  | Matched (new_ctrl_state, _, _, _) ->
      [ create new_ctrl_state target_ctrl_state pebbles pebbles_init blocked_buffers ]
  | Unmatched (new_ctrl_state, _, buffer, msg) ->
      let new_blocked_buffers =
        if Buffer_set.mem buffer system.bag_buffers then blocked_buffers
        else Buffer_set.add buffer blocked_buffers
        (* If the buffer has a bag semantic, we don't block it *)
      in
      (* TODO: maybe we could avoid this branching by having two specific reachable_states functions *)
      if A_p.is_empty automaton then
        [
          create new_ctrl_state target_ctrl_state pebbles pebbles_init new_blocked_buffers;
        ]
      else
        let reachable_states_in_a_p =
          A_p.reachable_states automaton (List.nth pebbles buffer, Some msg)
        in
        (* TODO: *)
        (* List of positions, for the pebble of the current buffer, reachable by applying
           this unmatched send. If A_p was not ready to read this message in the buffer,
           this list will be empty. *)
        List.map
          (fun a_p_state ->
            create new_ctrl_state target_ctrl_state
              (update_pebbles pebbles buffer a_p_state)
              pebbles_init new_blocked_buffers)
          reachable_states_in_a_p
  | Unmatched_reception _ ->
      raise
        (Communication.Unexpected_unmatched_reception
           "Model Checking: unmatched receptions should not be considered here.")

let print_ctrl_state system ((state, _, _, _, _, _) : t) : unit =
  Control_state.print system state

let comms_from_state system state =
  let ctrl_state, _, _, _, blocked_buffers, _ = state in
  Communication.comms_from_state system ctrl_state blocked_buffers
(* TODO: Should be merged with reachable_states *)

(* TODO: Set the the initial pebble of buffer 0 to the initial state of A_p *)

(* TODO: Set the initial pebbles of each buffer to a sensible position *)

(* TOFIX: Is it normal that last state (only accepting one) in A_p is :
   - never used as initial pebble position (seems ok, but surprising with current implementation)
    -> all_states only includes states from which a transition leaves, to complete *)

(* TODO: simplify the regexp before building A_p with it, and if possible check
   regexp consistency before using them. *)

(* TODO: The initial situation with artificial_start should be final, and therefore
   accepted. Maybe the check is done when the state is discovered, this one beeing the
   first one is not ?
   -> The check is correctly done on the first one, but it is not final in itself: the
   last pebble is not on a final state, but the final state is reachable through an
   epsilon transition. We should initiate the exploration with the epsilon closure of
   the initial states. *)

(* TODO: the calls to comms_from_state should be done within reachable_a_ps_state *)
