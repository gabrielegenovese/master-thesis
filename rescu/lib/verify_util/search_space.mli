open Comm_automata

(** Allows to build a search space suitable for a quick search (as opposed to a
    comprehensive construction of the automaton). Parametrized by states of the
    automaton to search in. *)
module Quick : functor (S : Traces.State) -> sig
  type t = (S.t, S.t * Communication.t) Hashtbl.t
  (** Hashtbl associating states to transitions, where transitions are of the
      form [(new_state, comm)]. *)

  type vertex = S.t
  type edge = vertex * (vertex * Communication.t)

  val create : ?size:int -> unit -> t
  val add_vertex : t -> S.t -> unit
  val mem_vertex : t -> S.t -> bool
  val add_edge_e : t -> edge -> unit

  module E : sig
    type label = Communication.t
    type t = edge

    val create : 'a -> 'b -> 'c -> 'c * ('a * 'b)
    val label : t -> label
  end

  val path_to_state : t -> S.t -> Communication.t list
  (** [path_to_state search_space state] computes the list of communication that led
      from an initial state to [state] in [search_space]. *)
end
