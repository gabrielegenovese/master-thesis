open Comm_automata

(* Hashtbl implementation is faster than a graph one, and enough for
   a non exhaustive search. *)
module Quick (S : Traces.State) = struct
  type t = (S.t, S.t * Communication.t) Hashtbl.t
  type vertex = S.t
  type edge = S.t * (S.t * Communication.t)

  let add_vertex (table : t) vertex =
    Hashtbl.add table vertex (vertex, Communication.default)

  let mem_vertex (table : t) vertex = Hashtbl.mem table vertex

  let add_edge_e (table : t) (edge : edge) =
    let target, transition = edge in
    Hashtbl.add table target transition

  let create ?(size = 50) () = Hashtbl.create size

  module E = struct
    type label = Communication.t
    type t = edge

    let create start comm target = (target, (start, comm))
    let label (_, (_, comm)) = comm
  end

  let path_to_state (search_space : t) (state : S.t) : Communication.t list =
    let rec aux last acc =
      let previous, comm = Hashtbl.find search_space last in
      if previous = last then acc else aux previous (comm :: acc)
    in
    aux state []
end
