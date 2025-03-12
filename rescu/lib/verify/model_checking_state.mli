open Verify_util
open Comm_automata
open Comm_automata.Buffer_util

(** Representation of the states of an automaton A{_P(S)}. *)

(** Representation of the control states of a system. *)
module Control_state : sig
  type t = System.ctrl_state

  val print : System.t -> t -> unit
end

type t =
  Control_state.t
  * (System.id_actor * System.id_local_state) list
  * Buffer_automaton.A_p_state.t list
  * Buffer_automaton.A_p_state.t list
  * Buffer_set.t
  * bool
(** Type of a model checking state:
    [(ctrl_state, target_ctrl_state, pebbles, pebbles_init, blocked_buffer, initial)] *)

val is_accepting : Buffer_automaton.A_p.t -> t -> bool
(** [is_accepting a_p state] returns whether [state] is accepting (according to [a_p]). *)

val initial_situations : System.t -> (Buffer_automaton.A_p.t * t list) list
(** [initial_situations system] returns a list of initial situations
    [(automaton, list_initial_states)] for each bad configuration to try and reach,
    were [automaton] is the automaton recognising the buffers content belonging to 
    the bad configurations, and [list_initial_states] is the list of initial
    states for this bad. *)

val comms_from_state : System.t -> t -> Communication.t list
(** [comms_from_state system state] returns the list of communications possible in
    [system] from the control state and according to the state of the buffers of A{_p(s)}
    [state]. *)

val reachable_states :
  System.t -> Buffer_automaton.A_p.t -> t -> Communication.t -> t list
(** [reachable_states automaton state comm] returns a list of reachable states
    executing communication [comm] from [state], given a buffer automaton
    (encoding A).*)

val print_ctrl_state : System.t -> t -> unit
(** [print_ctrl_state system state] prints the control state of [system] corresponding to [state]. *)
