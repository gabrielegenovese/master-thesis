open Comm_automata

module type State = sig
  type t

  val print_ctrl_state : System.t -> t -> unit
end

(** A trace is a sequence of actions. Here an action is a {!type:Communication.t}.
    Traces are parametrized by the states between each communication. *)
module Trace : functor (S : State) -> sig
  type t = Communication.t list * S.t

  val create : Communication.t list -> S.t -> t
  (** [create comm_list state] creates the trace where the actions are taken in order
      from [comm_list] and the state reached at the end of this trace is [state]. *)

  val print : t -> unit
  (** [print trace] prints all the communications of [trace] in order, with the
      minimal [chanel (!|!?|?) message] syntax. *)

  val print_with_steps : System.t -> t -> unit
  (** [print_with_steps system trace] prints the states at each step of [trace] and
      the communications in between. *)
end
