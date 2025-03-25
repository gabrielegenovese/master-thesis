open Comm_automata

(** Computation of the implementability of a system to the class of RSC systems. *)

val is_implementable : System.t -> bool
(** [is_implementable system] checks whether [system] is RSC-implementable.
    @returns [true] if [system] is RSC-implementable, [false] otherwise. *)