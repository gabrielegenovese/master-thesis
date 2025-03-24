module A_p_state : sig
  type t = int

  val initial : t -> bool
  val accepting : t -> bool
  val print : t -> unit
end

module String_option : sig
  type t = string option

  val make_none : unit -> 'a option
  val make_some : 'a -> 'a option
  val epsilon : 'a option
  val print : string option -> unit
  val tostring : string option -> string
end

(** Implementation of automaton A_p, encoding a language of buffer configurations
    belonging to a property p. *)
module A_p : sig
  type t = (A_p_state.t * String_option.t, A_p_state.t) Hashtbl.t

  val create : unit -> t
  val reachable_states : t -> A_p_state.t * String_option.t -> A_p_state.t list
  val is_empty : t -> bool
  val add_transitions : t -> (A_p_state.t * String_option.t) list -> A_p_state.t -> unit
  val states_list : t -> A_p_state.t list
end

val candidates_for_initial_pebbles : A_p.t -> int -> A_p_state.t list list
(** [candidates_for_initial_pebbles automaton nb_buffers] *)

val automaton_from_regexep : string SCM.Regexp.exp -> A_p.t
(** [automaton_from_regexep regexp] builds the A_p automaton corresponding to [regexp]. *)
