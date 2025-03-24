open SCM.Scm_syn
open Automaton

(* Module implementing the states of automaton A_p *)
module A_p_state = struct
  type t = int

  let current = ref 0
  let accepting : t list ref = ref []
  let set_accepting (state : t) : unit = accepting := state :: !accepting
  let accepting (state : t) : bool = List.mem state !accepting
  let initials : t list ref = ref []
  let set_initial (state : t) : unit = initials := state :: !initials
  let initial (state : t) : bool = List.mem state !initials

  let create_fresh () : t =
    let value = !current in
    let _ = current := !current + 1 in
    value

  let print (state : t) : unit =
    if accepting state then Format.printf "%d!" state else Format.printf "%d" state
end

(* Module implementing guards as options of a string.
   A None guard represents an epsilon transition. *)
module String_option = struct
  type t = string option

  let make_none () = None
  let make_some s = Some s
  let epsilon = None

  let print so =
    match so with None -> Format.printf "_" | Some l -> Format.printf "%s" l

  (** For debugging purpose *)
  let tostring s =
    match s with None -> Format.sprintf "_" | Some l -> Format.sprintf "%s" l
end

module A_p = Automaton (A_p_state) (String_option)
(* TO CHECK: is it useful to use a functor here ? If yes, is it useful to use something
   like that rather than the same structure than the one for wrapping SCMs ?*)

let candidates_for_initial_pebbles (automaton : A_p.t) (nb_buffers : int) :
    A_p_state.t list list =
  (* TODO: Breakout this to provide a (different) list of positions for each pebble *)
  let transitions = A_p.transitions_list automaton (String_option.make_some "#") in
  let dest_states = List.fold_left (fun acc (_, dest) -> dest :: acc) [] transitions in
  let candidates =
    List.rev_append
      (List.filter A_p_state.initial (A_p.states_list automaton))
      dest_states
  in
  let rec aux acc nb_buffers =
    if nb_buffers <= 0 then acc else aux (candidates :: acc) (nb_buffers - 1)
  in
  aux [] nb_buffers

(** [build_a_p automaton re state] reccursively adds the transitions and states
    to [automaton] starting from [state], building the automaton recognising the same language as
    the regular expression [re].
    Loosly related to Thompson algorithm, TODO: improve this implementation and minimise the
    number of states in the resulting automaton. *)
let rec build_a_p (automaton : A_p.t) (re : var SCM.Regexp.exp) (state : A_p_state.t) :
    (A_p_state.t * String_option.t) list =
  match re with
  | Union (hd_u :: tl_u) ->
      let transitions_first = build_a_p automaton hd_u state in
      let transitions_rest = build_a_p automaton (Union tl_u) state in
      List.rev_append transitions_first transitions_rest
  | Union [] -> []
  | Concat (hd_c :: hd_tl :: tl_tl) ->
      let transitions = build_a_p automaton hd_c state in
      let new_state : A_p_state.t = A_p_state.create_fresh () in
      let _ = A_p.add_transitions automaton transitions new_state in
      build_a_p automaton (Concat (hd_tl :: tl_tl)) new_state
  | Concat [ hd_c ] -> build_a_p automaton hd_c state
  | Concat [] -> [] (* Should not happen *)
  | Star er ->
      let transitions = build_a_p automaton er state in
      let _ = A_p.add_transitions automaton transitions state in
      [ (state, String_option.make_none ()) ]
  | Plus er ->
      let new_er = SCM.Regexp.Concat [ er; Star er ] in
      build_a_p automaton new_er state
  | Epsilon -> [ (state, String_option.make_none ()) ]
  | Letter a -> [ (state, String_option.make_some a) ]

let automaton_from_regexep (regexp : var SCM.Regexp.exp) : A_p.t =
  let automaton = A_p.create () in
  let initial_state = A_p_state.create_fresh () in
  let _ = A_p_state.set_initial initial_state in
  let remaining_transitions = build_a_p automaton regexp initial_state in
  let last_state = A_p_state.create_fresh () in
  let _ = A_p.add_transitions automaton remaining_transitions last_state in
  let _ = A_p_state.set_accepting last_state in
  automaton
