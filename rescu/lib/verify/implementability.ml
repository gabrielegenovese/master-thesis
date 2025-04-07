open Comm_automata
open Verify_util
open Builder
module Search_memory_quick = Search_space.Quick (Membership_state)
module Searcher_quick = Builder (Search_memory_quick)

let is_implementable (system : System.t) : bool =
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
