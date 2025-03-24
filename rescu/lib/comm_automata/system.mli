(** Data structure for systems of communicating automata *)

open Buffer_util

(** {2 Types}  *)

type id_local_state
(** Identifier of a local state (for a single participant). *)

type id_actor
(** Identifier of a participant. *)

type ctrl_state
(** Control state of a system, containing information about the local state of each participant. *)

type message = string
type action = Send of Buffer_id.t * message | Reception of Buffer_id.t * message

type local_transition
(** Transition of a single participant, a simple automaton transition. *)

type transition = { owner : id_actor; action : action option; new_state : ctrl_state }
(** Transition of a system, [{owner; action; new_state}] meaning that
    the transition implies the participant [owner], is labelled with [action]
    and goes to the global control state [new_state]. *)

type bad_conf = (id_actor * id_local_state) list * string SCM.Regexp.t
(** Specification of a bad configuration.
    [((actor_1, state_1) :: ..., buffer_regexp)] specifing that each
    participant [actor_i] must be in local state [state_i], and the buffers
    must match [buffer_regexp]. *)

type t = {
  nb_actors : int;
  nb_buffers : int;
  bag_buffers : Buffer_set.t;
  transitions : local_transition list array;
  bad_confs : bad_conf list;
  initial_states : ctrl_state list;
  states : string array;
  actors : string array;
}
(** Representation of a system of communicating machines *)

(** {2 Default values} *)

val default_ctrl_state : ctrl_state
val default : t

(** {2 Building functions} *)

val create : SCM.Scm_syn.scm -> t
(** [create scm] creates a system from the product of a SCM. *)

val create_bag : SCM.Scm_syn.scm -> t
(** [create scm] creates a system from the product of a SCM, where all buffers are
    considered with a bag (out of order) semantic. *)

(** {2 Utility functions} *)

val state_match_bad : ctrl_state -> (id_actor * id_local_state) list -> bool
(** [state_match_bad state bad_local_states] returns [true] if [state]
    matches the local states in [bad_local_states]. *)

val transitions_from_state : t -> ctrl_state -> transition list
(** [transitions_from_state system state] returns the list of transitions
    available from [state] in [system]. *)

(** {2 Printing functions} *)

val state_to_string : t -> ctrl_state -> string
(** [state_to_string system state_id] *)

val actor_to_string : t -> id_actor -> string
(** [actor_to_string system actor_id] *)

val action_to_string : action option -> string
(** [action_to_string action] *)
