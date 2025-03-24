open Comm_automata
open Comm_automata.Buffer_util

type t =
  System.ctrl_state
  * (Buffer_id.t * string) option
  * Buffer_set.t
  * Communication.t
  * bool
  * bool
(** A state of A_bv_rsc contains :
    the control state of the product of the system,
    a message to be received as the last transition, with the buffer on which we will read it,
    the list of buffers that are blocked by messages,
    the last communication read by Arsc,
    the flag ensuring at least a comm is read between the unmatched send and the final reception. *)

val create_initial : System.ctrl_state -> t
(** [create_initial ctrl_state] creates an initial state with system control state [ctrl_state]. *)

val is_accepting : t -> bool
(** [is_accepting state] returns [true] if [state] is accepting. *)

val is_initial : t -> bool

val initial_states : unit -> t list
(** Returns the list of initial states. *)

val comms_from_state : System.t -> t -> Communication.t list
(** [comms_from_arsc_state system state] returns the list of communications realisable
    from the control state embeded in [state] in [system]. *)

val reachable_states : System.t -> t -> Communication.t -> t list
(** [reachable_arsc_state state comm] returns the list of states reachable from
    [state] in A_bv_rsc when applying [comm]. *)

val pretty_string : System.t -> t -> string
(** [pretty_string system state] returns a string containing the informations of [state].
        [system] is required in order to replace the control states ids by their actual names. *)

val print_ctrl_state : System.t -> t -> unit
val equal : 'a -> 'a -> bool
val compare : 'a -> 'a -> int
val hash : 'a -> int
