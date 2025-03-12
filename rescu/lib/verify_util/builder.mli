open Comm_automata

(** Minimal signature for a module implementing a search_space. *)
module type Search_space = sig
  type t
  type vertex
  type edge

  val add_vertex : t -> vertex -> unit
  val mem_vertex : t -> vertex -> bool
  val add_edge_e : t -> edge -> unit
  val create : ?size:int -> unit -> t

  module E : sig
    type label
    type t = edge

    val create : vertex -> label -> vertex -> edge
    val label : t -> Communication.t
  end
end

(** Allows to create builder modules paramatrised by the
    underlying search space data structure.
    This module is used to build different automata recognising
    executions, such as the intersection of A{_bv} and A{_RSC}. *)
module Builder : functor (G : Search_space) -> sig
  type search_result = G.t * G.vertex option
  (** [(search_space, found_state)] where [found_state] is [(Some state)] if a state was found, and [None] otherwise. *)

  val search_accepting :
    G.vertex list ->
    (G.vertex -> bool) ->
    (G.vertex -> G.E.label list) ->
    (G.vertex -> G.E.label -> G.vertex list) ->
    search_result
  (** [search_accepting initial_states accepting comms_from_state reachable_states_through_comm] searches for
      an accepting state of type {!type:G.vertex}. As soon as one is found, it returns the result.
      - [initial_states] is the list of states from which the search will start,
      - [accepting state] returns true if its argument is an accepting state,
      - [comm_from_state state] is a function returning a list of communications possible from [state],
      - [reachable_states_through_comm state comm] returns a list of states reachable from [state] through communication [comm].
      *)

  val build :
    G.vertex list ->
    (G.vertex -> G.E.label list) ->
    (G.vertex -> G.E.label -> G.vertex list) ->
    G.t
  (** [build initial_states comms_from_state reachable_states_through_comm] builds the entire automaton
      of states of type {!type:G.vertex}. Returns the search space once it is done.
      - [comm_from_state state] is a function returning a list of communications possible from [state],
      - [reachable_states_through_comm state comm] returns a list of states reachable from [state] through communication [comm].
      *)
end
