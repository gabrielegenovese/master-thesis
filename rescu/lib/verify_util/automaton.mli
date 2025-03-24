(*** Type for the state of a generic finite state automaton *)
module type Automaton_state = sig
  type t

  val print : t -> unit
end

(** Type for a guard: the label on the transition of an automaton *)
module type Guard = sig
  type t

  val epsilon : t
  val print : t -> unit
end

(** Functor for a generic finite state automaton using State as type of state
     and guards of type Guard *)
module Automaton : functor (S : Automaton_state) (G : Guard) -> sig
  type t = (S.t * G.t, S.t) Hashtbl.t

  val create : unit -> t

  val reachable_states : t -> S.t * G.t -> S.t list
  (** [reachable_states automaton transition] returns the list of states reachable through [transition]
        in [automaton].
        The list is closed by epsilon transitions. *)

  val is_empty : t -> bool
  (** Returns true when automaton has no transitions. Constant time. *)

  val add_transitions : t -> (S.t * G.t) list -> S.t -> unit
  (** [add_transition automaton transition state] adds (in place) [transition]
            starting from [state] to [automaton]. *)

  val states_list : t -> S.t list
  (** [states_list automaton] returns the list of states present in [automaton]. *)

  val transitions_list : t -> G.t -> (S.t * S.t) list
  (** [transitions_list automaton guard] returns the list of pairs [origin, dest]
      such that a transition [origin] --[guard]--> destination exists in [automaton]. *)
end
