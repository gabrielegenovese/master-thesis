open Comm_automata

(** Computation of the membership of a system to the class of RSC systems. *)

(** A borderline violation is a trace which is RSC until its last action: a reception
    matching a previously unmatched send action.*)
module Borderline_violation : sig
  type t

  val print : t -> unit
  val print_with_steps : System.t -> t -> unit
end

val is_rsc_counter : System.t -> Borderline_violation.t option
(** [is_rsc_counter system] checks whether [system] is RSC by building the intersection between
    A_bv and A_rsc, and checking at each step if a transtion to a final state is
    possible.
    @returns [None] if no borderline violation is found, and [Some (bv)] if [bv]
      is a feasible borderline violation in [system]. *)

val is_rsc : System.t -> bool
(** [is_rsc system] checks whether [system] is RSC.
    @returns [true] if [system] is RSC, [false] otherwise. *)

val output_arsc : System.t -> out_channel -> unit
(** [output_arsc system channel] outputs the computed intersection between A_bv and A_rsc of
    [system] in dot format to [channel]. *)
