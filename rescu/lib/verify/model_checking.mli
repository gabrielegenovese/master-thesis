open Comm_automata

(** Module gathering model_checking functions. *)

(** Representation of a path in an automaton A{_P(S)}, recognising
    RSC executions leading to a configuraiton belonging to the property
    P(S). *)
module Execution_aps : sig
  type t

  val print : t -> unit
  val print_with_steps : System.t -> t -> unit
end

val check_with_display : System.t -> bool -> Execution_aps.t option
(** [check system progress] checks whether one of the bad configuration of
    [system] is reachable through an RSC execution.
    If [progress] is true, progress informations are displayed. 
    @returns [Some execution] if [executions] leads to a bad configuration, and [None] if
      no bad configuration is reachable. *)

val check : System.t -> bool -> bool
(** [check system progress] checks whether one of the bad configuration of
    [system] is reachable through an RSC execution.
    If [progress] is true, progress informations are displayed.
    @returns [true] if a bad configuration is found, [false] otherwise. *)
