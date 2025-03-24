(** Data structure for communications *)

open Buffer_util

type t =
  | Matched of System.ctrl_state * System.id_actor list * Buffer_id.t * string
      (** [(new control state, list of actors, buffer, message)] *)
  | Unmatched of System.ctrl_state * System.id_actor * Buffer_id.t * string
      (**  [(new control state, actor, buffer, message)] *)
  | Unmatched_reception of System.ctrl_state * System.id_actor * Buffer_id.t * string
      (** [(new control state, actor, buffer, message)] *)

val default : t
(** A default communication. Its value is undefined and irrelevant for our tool. *)

val compare : t -> t -> int

val comms_from_state : System.t -> System.ctrl_state -> Buffer_set.t -> t list
(** [comms_from_state system ctrl_state blocked_buffers]
     @returns the list of communications in [system] from its control state [ctrl_state],
     assuming the buffers in [blocked_buffers] are blocked. *)

val comms_from_state_with_rec : System.t -> System.ctrl_state -> Buffer_set.t -> t list
(** [comms_from_state_with_rec system ctrl_state blocked_buffers]
        @returns the list of communications in [system] from its control state [ctrl_state],
        including unmatched receptions,
        assuming the buffers in [blocked_buffers] are blocked. *)

val short_string : t -> string
(** [short_string comm]
    @returns a string representing the channel, action, and payload of [comm]. *)

val short_print : t -> unit
(** [short_print comm] displays the channel, action, and payload of [comm]. *)

val print_with_state : System.t -> t -> unit
(** [print_with_sate system comm] displays the communication [comm] and the control state
    it leads to. *)

exception Unexpected_unmatched_reception of string
(** Raised when an unexpected unmatched reception is met. *)

exception Unexpected_reception of string
(** Raised when a communication containing a reception is met,
    where an [Unmatched] (send) was expected. *)
