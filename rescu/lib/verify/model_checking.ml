open Comm_automata
open Verify_util
open Buffer_automaton
module Search_space = Search_space.Quick (Model_checking_state)
open Builder
module Searcher = Builder (Search_space)
module Execution_aps = Traces.Trace (Model_checking_state)

let search (system : System.t) (bad_list : (A_p.t * Model_checking_state.t list) list)
    (progress : bool) =
  let rec start_search bad_list =
    match bad_list with
    | [] -> None
    | (automaton, state_list) :: tl -> (
        let this_result =
          Searcher.search_accepting state_list
            (Model_checking_state.is_accepting automaton)
            (Model_checking_state.comms_from_state system)
            (Model_checking_state.reachable_states system automaton)
        in
        match this_result with
        | _, None ->
            let _ =
              if progress then
                Format.printf
                  "Progress: done searching for one bad situation, %d remaining@."
                  (List.length tl)
            in
            start_search tl
        | search_space, Some accepting_state -> Some (search_space, accepting_state))
  in
  start_search bad_list

let check_with_display (system : System.t) (progress : bool) : Execution_aps.t option =
  let list_init = Model_checking_state.initial_situations system in
  let _ =
    if progress then
      Format.printf "Computed %d initial situation@." (List.length list_init)
  in
  match search system list_init progress with
  | None -> None
  | Some (search_space, accepting_state) ->
      Some
        (Execution_aps.create
           (Search_space.path_to_state search_space accepting_state)
           accepting_state)

let check (system : System.t) (progress : bool) : bool =
  let list_init = Model_checking_state.initial_situations system in
  let _ =
    if progress then
      Format.printf "Computed %d initial situation@." (List.length list_init)
  in
  match search system list_init progress with None -> false | Some _ -> true
