open Comm_automata
open Verify_util
open Builder
module Borderline_violation = Traces.Trace (Membership_state)
module Search_memory_quick = Search_space.Quick (Membership_state)
module Searcher_quick = Builder (Search_memory_quick)

(* Quick implementation with the simple search space *)
let is_rsc_counter (system : System.t) : Borderline_violation.t option =
  let initial_arsc_states =
    List.map Membership_state.create_initial system.initial_states
  in
  match
    Searcher_quick.search_accepting initial_arsc_states Membership_state.is_accepting
      (Membership_state.comms_from_state system)
      (Membership_state.reachable_states system)
  with
  | _, None -> None
  | search_space, Some last_state ->
      let list_transitions = Search_memory_quick.path_to_state search_space last_state in
      Some (Borderline_violation.create list_transitions last_state)

let is_rsc (system : System.t) : bool =
  let initial_arsc_states =
    List.map Membership_state.create_initial system.initial_states
  in
  match
    Searcher_quick.search_accepting initial_arsc_states Membership_state.is_accepting
      (Membership_state.comms_from_state system)
      (Membership_state.reachable_states system)
  with
  | _, None -> true
  | _, Some _ -> false

(* Comprehensive automaton construction *)
module Search_memory =
  Graph.Imperative.Digraph.ConcreteBidirectionalLabeled (Membership_state) (Communication)

module Searcher = Builder (Search_memory)

(* Dirty fix: we need a system to print a control state of a membership_state.
   We need to define a module containing a function calling the print function.
   This allows to use a pointer, local to Membership module, that will reference
   the system passed as an argument of output_arsc. *)
let sys_ref = ref System.default

(* Extension of the graph module we use as search space to include dot specific
   methods. *)
module Dot = Graph.Graphviz.Dot (struct
  include Search_memory

  let edge_attributes ((_, comm, _) : Search_memory.edge) =
    [ `Label (Communication.short_string comm) ]

  let default_edge_attributes _ = []
  let get_subgraph _ = None
  let vertex_attributes _ = [ `Shape `Box ]
  let vertex_name (v : Membership_state.t) = Membership_state.pretty_string !sys_ref v
  (* Uses the module wide defined pointer on a system. Updating this reference prior to
     outputing the automaton to a dot file allows to replace the state ids by their meaning. *)

  let default_vertex_attributes _ = []
  let graph_attributes _ = []
end)

let output_arsc (system : System.t) (file : out_channel) : unit =
  let _ = sys_ref := system in
  let initial_arsc_states =
    List.map Membership_state.create_initial system.initial_states
  in
  let automaton =
    Searcher.build initial_arsc_states
      (Membership_state.comms_from_state system)
      (Membership_state.reachable_states system)
  in
  Dot.output_graph file automaton
