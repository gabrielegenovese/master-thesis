open SCM.Scm_syn

module State = struct
  type t = string * string
  (** (participant, state) *)

  let compare = compare
  let hash = Hashtbl.hash
  let equal = ( = )
end

module Transition = struct
  type t = string

  let compare = compare
  let default = ""
end

module Graph_automata = Graph.Imperative.Digraph.ConcreteLabeled (State) (Transition)

module Dot = Graph.Graphviz.Dot (struct
  include Graph_automata

  let edge_attributes (_, transition, _) = [ `Label transition ]
  let default_edge_attributes _ = []
  let get_subgraph _ = None

  let vertex_attributes (own, name) =
    if name = "dummy" then [ `Label own; `Penwidth 0. ]
    else [ `Shape `Ellipse; `Label name ]

  let vertex_name ((own, name) : State.t) = String.cat own name
  let default_vertex_attributes _ = []
  let graph_attributes _ = []
end)

let rec add_transitions res (src_state : State.t) (ltrans : transition list) =
  match ltrans with
  | [] -> ()
  | hd :: tl ->
      let action =
        match hd.action with
        | None -> "\u{03B5}"
        | Some (buff_id, action_type, msg) -> (
            match action_type with
            | SEND -> Format.sprintf "%d!%s" buff_id msg
            | RECEIVE -> Format.sprintf "%d?%s" buff_id msg)
      in
      let edge = Graph_automata.E.create src_state action (hd.owner, hd.new_state) in
      let _ = Graph_automata.add_edge_e res edge in
      add_transitions res src_state tl

let rec add_state res (automaton_name : string) (l_state : state list) =
  match l_state with
  | [] -> ()
  | hd :: tl ->
      let _ = add_transitions res (automaton_name, hd.id_state) hd.ltrans in
      add_state res automaton_name tl

let rec add_automata res (l_auto : automaton list) =
  match l_auto with
  | [] -> []
  | hd :: tl ->
      let _ =
        List.iter
          (fun state ->
            let dummy_state = (hd.id_auto, "dummy") in
            Graph_automata.add_edge res dummy_state (hd.id_auto, state))
          hd.init_states
      in
      let _ = add_state res hd.id_auto hd.lstate in
      add_automata res tl

let scm_to_graph (scm : scm) : Graph_automata.t =
  let res = Graph_automata.create () in
  let _ = add_automata res scm.lauto in
  res

let output_scm (system : scm) (file : out_channel) : unit =
  let automaton = scm_to_graph system in
  Dot.output_graph file automaton
