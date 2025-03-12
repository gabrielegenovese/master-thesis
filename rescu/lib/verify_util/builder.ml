open Comm_automata

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

module Builder (G : Search_space) = struct
  type search_result = G.t * G.vertex option

  (** [states_marking_comprehensive states_found queue state_origin comm state_dest]
      marks the edge [state_origin -> state_dest] as found in [states_found],
      and sets [state_dest] to be searched if it was not already encountered. *)
  let states_marking_comprehensive states_found queue state_origin comm state_dest =
    let new_edge = G.E.create state_origin comm state_dest in
    G.add_edge_e states_found new_edge;
    if not (G.mem_vertex states_found state_dest) then Queue.add state_dest queue

  (** [states_marking_search states_found queue state_origin comm state_dest]
      under the condition that [state_dest] was not already encountered,
      marks the edge [state_origin -> state_dest] as found in [states_found],
      and sets [state_dest] to be searched. *)
  let states_marking_search states_found queue state_origin comm state_dest =
    if not (G.mem_vertex states_found state_dest) then
      let _ = Queue.add state_dest queue in
      let new_edge = G.E.create state_origin comm state_dest in
      let _ = G.add_edge_e states_found new_edge in
      Unit.(())

  (** Builds an automaton encoded in a search space of type G.t. *)
  let generic_build
      (mark_state : G.t -> G.vertex Queue.t -> G.vertex -> G.E.label -> G.vertex -> unit)
      (comprehensive : bool) (initial_states : G.vertex list)
      (accepting : G.vertex -> bool) (comms_from_state : G.vertex -> G.E.label list)
      (reachable_states_through_comm : G.vertex -> G.E.label -> G.vertex list) :
      search_result =
    let states_to_explore = Queue.create () in
    let explored_states = G.create ~size:20000 () in
    (* TODO: set size to a sensible value *)
    let add_initial_state_to_queue state =
      G.add_vertex explored_states state;
      Queue.add state states_to_explore
    in

    (* Returns None if no accepting state is reachable, Some (state) if
       state is accepting and reached. *)
    let rec aux () : G.vertex option =
      match Queue.take_opt states_to_explore with
      | None -> None (* Queue of states to consider is empty, exploration is over. *)
      | Some state ->
          if (not comprehensive) && accepting state then Some state
          else
            let possible_communications = comms_from_state state in
            List.iter
              (fun comm ->
                let new_states = reachable_states_through_comm state comm in
                List.iter
                  (mark_state explored_states states_to_explore state comm)
                  new_states)
              possible_communications;
            aux ()
    in
    List.iter add_initial_state_to_queue initial_states;
    (explored_states, aux ())

  let search_accepting = generic_build states_marking_search false

  let build (initial_states : G.vertex list)
      (comms_from_state : G.vertex -> G.E.label list)
      (reachable_states_through_comm : G.vertex -> G.E.label -> G.vertex list) : G.t =
    let result, _ =
      generic_build states_marking_comprehensive true initial_states
        (fun _ -> true)
        comms_from_state reachable_states_through_comm
    in
    result
end
