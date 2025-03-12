(* Type for the state of a generic finite state automaton *)
module type Automaton_state = sig
  type t

  val print : t -> unit
end

(* Type for a guard: the label on the transition of an automaton *)
module type Guard = sig
  type t

  val epsilon : t
  val print : t -> unit
end

(** Functor for a generic finite state automaton using State as type of state
   and guards of type Guard *)
module Automaton (State : Automaton_state) (Guard : Guard) = struct
  (* type transition = State.t * Guard.t *)
  type t = (State.t * Guard.t, State.t) Hashtbl.t

  let create () : t = Hashtbl.create 50
  (* TODO: set a reasonable value there *)

  let list_remove_elem list elem =
    List.fold_left (fun acc e -> if e = elem then acc else e :: acc) [] list

  (* Computes the list of states reachable through epsilon transitions from a list of states. *)
  let rec epsilon_closure (automaton : t) (states : State.t list) =
    match states with
    | [] -> []
    | hd :: tl ->
        let reachable_one_epsilon = Hashtbl.find_all automaton (hd, Guard.epsilon) in
        let reachable_one_epsilon_without_origin =
          list_remove_elem reachable_one_epsilon hd
        in
        hd
        :: List.rev_append
             (* Closure from what we found *)
             (epsilon_closure automaton reachable_one_epsilon_without_origin)
             (* Closure from what we still have to check *)
             (epsilon_closure automaton tl)

  (** Returns the list of all states reachable by applying the transition (a transition beeing
        the state from which it starts and the guard of the actual transition).*)
  let reachable_states (automaton : t) (transition : State.t * Guard.t) : State.t list =
    let state, guard = transition in
    (* First we get the epsilon closure of the first state *)
    let directly_reachable_through_epsilon = epsilon_closure automaton [ state ] in
    (* Then we check what is reachable with our guard, starting from any state that was
       reachable through epsilon transition from our initial state *)
    let reachable_through_guard =
      List.fold_left
        (fun acc state -> List.rev_append (Hashtbl.find_all automaton (state, guard)) acc)
        [] directly_reachable_through_epsilon
    in
    (* Finally, we complete by firing all the epsilon transitions from where we reached *)
    epsilon_closure automaton reachable_through_guard

  (* Returns true when automaton has no transitions. *)
  let is_empty (automaton : t) : bool =
    Hashtbl.length automaton = 0 (* Constant time operation *)

  (** [add_transition automaton transition state] adds (in place) [transition]
        starting from [state] to [automaton]. *)
  let add_transition (automaton : t) (transition : State.t * Guard.t) (state : State.t) :
      unit =
    Hashtbl.add automaton transition state

  let add_transitions (automaton : t) (transitions : (State.t * Guard.t) list)
      (state : State.t) : unit =
    List.iter (fun trans -> add_transition automaton trans state) transitions

  (** Returns the list of states present in the automaton given as argument. *)
  let states_list (automaton : t) : State.t list =
    let all_states = Hashtbl.fold (fun (state, _) _ init -> state :: init) automaton [] in
    List.sort_uniq compare all_states
  (* TODO(?): fix by providing also the states from which no transition leaves. *)

  let transitions_list (automaton : t) (guard : Guard.t) : (State.t * State.t) list =
    Hashtbl.fold
      (fun (origin, label) destination acc ->
        if label = guard then (origin, destination) :: acc else acc)
      automaton []
end

(* TODO: Clean this module *)
