open SCM
open Buffer_util

(*************************************** Types ******************************************)
type id_local_state = int
type id_actor = int
type message = string
type action = Send of Buffer_id.t * message | Reception of Buffer_id.t * message
type ctrl_state = id_local_state array
type transition = { owner : id_actor; action : action option; new_state : ctrl_state }

type local_transition = {
  owner : id_actor;
  action : action option;
  new_local_state : id_local_state;
}

type bad_conf = (id_actor * id_local_state) list * string SCM.Regexp.t
(* A bad conf is a list of local states identifications and regexp on the buffers *)

type t = {
  nb_actors : int;
  nb_buffers : int;
  bag_buffers : Buffer_set.t;
  transitions : local_transition list array;
  bad_confs : bad_conf list;
  initial_states : ctrl_state list;
  states : string array;
  actors : string array;
}

(************************************** Printing **************************************)

let state_to_string system state =
  String.concat "x"
    (List.map
       (fun elem ->
         let local_state_name = Array.get system.states elem in
         Format.sprintf "%s" local_state_name)
       (Array.to_list state))

let actor_to_string system actor_id = Array.get system.actors actor_id

let action_to_string action =
  match action with
  | None -> "\u{03B5}"
  | Some actual -> (
      match actual with
      | Send (buff, msg) -> Format.sprintf "%d!%s" buff msg
      | Reception (buff, msg) -> Format.sprintf "%d?%s" buff msg)

(******************************** Preprocessing *******************************)

(** [name_to_id table name] returns the id associated with
    [name] in [table], generates a new one if needed. *)
let name_to_id table name =
  match Hashtbl.find_opt table name with
  | Some id -> id
  | None ->
      let id = Hashtbl.length table in
      let _ = Hashtbl.add table name id in
      id

(** [ranslate_transition tble_states tble_actors trans] translate [trans]
          from [Scm_syn.transition] to [local_transition]. *)
let translate_transition (tble_states : (string, id_local_state) Hashtbl.t)
    (tble_actors : (string, id_actor) Hashtbl.t) (trans : Scm_syn.transition) :
    local_transition =
  let actor_id = name_to_id tble_actors trans.owner in
  let action =
    match trans.action with
    | None -> None
    | Some (buff, action_type, msg) -> (
        match action_type with
        | Scm_syn.SEND -> Some (Send (buff, msg))
        | Scm_syn.RECEIVE -> Some (Reception (buff, msg)))
  in
  {
    owner = actor_id;
    action;
    new_local_state =
      name_to_id tble_states (String.concat "" [ trans.owner; trans.new_state ]);
  }

(** [translate_state table_state_names table_actors table_state_transitions actor_name state]
    fills [table_state_transitions] with bindings between local state ids and
    lists of local transitions. *)
let translate_state table_state_names table_actors table_state_transitions actor_name
    (state : Scm_syn.state) =
  let state_id =
    name_to_id table_state_names (String.concat "" [ actor_name; state.id_state ])
  in
  let translated_transitions =
    List.map (translate_transition table_state_names table_actors) state.ltrans
  in
  Hashtbl.add table_state_transitions state_id translated_transitions

(** [translate_automaton tbl_state_name tble_actors tble_state_transitions automaton]
    translates each state of [automaton]. *)
let translate_automaton tbl_state_name tble_actors tble_state_transitions
    (automaton : Scm_syn.automaton) =
  List.iter
    (translate_state tbl_state_name tble_actors tble_state_transitions automaton.id_auto)
    automaton.lstate

(** [translate_init tbl_state_name tble_actors scm] builds an initial
    state of [scm]. Builds only one now, which is enough
    for most examples. *)
let translate_init tbl_state_name tble_actors (scm : Scm_syn.scm) =
  let initial_state = Array.make (Hashtbl.length tble_actors) (-1) in
  let _ =
    List.iter
      (fun (elem : Scm_syn.automaton) ->
        let id_actor = name_to_id tble_actors elem.id_auto in
        let id_init_state =
          name_to_id tbl_state_name
            (String.concat "" [ elem.id_auto; List.hd elem.init_states ])
        in
        (* We only consider one initial state for now, TODO: consider all of them if
           useful? *)
        Array.set initial_state id_actor id_init_state)
      scm.lauto
  in
  initial_state

(** [translate_bad tble_actor tble_state bad] returns a [bad_conf] computed
    from [bad]. *)
let translate_bad tble_actor tble_state
    (bad : (string * (string * Scm_syn.bexpr) list) list * string Regexp.t) : bad_conf =
  let list_automaton, regexp = bad in
  let list_id_bad =
    List.fold_left
      (fun acc (name, bad_states) ->
        let actor_id = Hashtbl.find tble_actor name in
        List.rev_append
          (List.map
             (fun (bad, _) ->
               let local_id = Hashtbl.find tble_state (String.concat "" [ name; bad ]) in
               (actor_id, local_id))
             bad_states)
          acc)
      [] list_automaton
  in
  (list_id_bad, regexp)

let table_of_ids_to_array table =
  let res = Array.make (Hashtbl.length table) "" in
  let _ = Hashtbl.iter (fun name id -> Array.set res id name) table in
  res

let create (scm : Scm_syn.scm) : t =
  let table_actors = Hashtbl.create 10 in
  let table_state_names = Hashtbl.create 45 in
  let table_state_transitions = Hashtbl.create 45 in
  let _ =
    List.iter
      (translate_automaton table_state_names table_actors table_state_transitions)
      scm.lauto
  in
  let number_actors = Hashtbl.length table_actors in
  let initial_state = translate_init table_state_names table_actors scm in
  let array_actors = table_of_ids_to_array table_actors in
  let array_states = table_of_ids_to_array table_state_names in
  let array_transitions = Array.make (Hashtbl.length table_state_transitions) [] in
  let _ =
    Hashtbl.iter
      (fun id_local_state transitions ->
        Array.set array_transitions id_local_state transitions)
      table_state_transitions
  in
  {
    nb_actors = number_actors;
    nb_buffers = scm.nb_channels;
    bag_buffers = Buffer_set.empty;
    transitions = array_transitions;
    bad_confs = List.map (translate_bad table_actors table_state_names) scm.bad_states;
    initial_states = [ initial_state ];
    states = array_states;
    actors = array_actors;
  }

let create_bag (scm : Scm_syn.scm) : t =
  let system = create scm in
  let rec fill_bag_set cpt buffer_set =
    if cpt < 0 then buffer_set else fill_bag_set (cpt - 1) (Buffer_set.add cpt buffer_set)
  in
  let set_bag = fill_bag_set (system.nb_buffers - 1) Buffer_set.empty in
  {
    nb_actors = system.nb_actors;
    nb_buffers = system.nb_buffers;
    bag_buffers = set_bag;
    transitions = system.transitions;
    bad_confs = system.bad_confs;
    initial_states = system.initial_states;
    states = system.states;
    actors = system.actors;
  }

let default =
  {
    nb_actors = 0;
    nb_buffers = 0;
    bag_buffers = Buffer_set.empty;
    transitions = Array.make 0 [];
    bad_confs = [];
    initial_states = [];
    states = Array.make 0 "";
    actors = Array.make 0 "";
  }

(******************************** Functions on ctrl states *******************************)

let default_ctrl_state = Array.make 0 0

let local_transitions_from_state system (state : ctrl_state) : local_transition list =
  let rec aux actor_id acc =
    if actor_id < 0 then acc
    else
      let local_state = Array.get state actor_id in
      let list_local_transitions = Array.get system.transitions local_state in
      aux (actor_id - 1) (List.rev_append list_local_transitions acc)
  in
  aux (system.nb_actors - 1) []

(** [apply_local_transition state local_trans] returns a new state, reached
    after firing [local_trans] from [state]. *)
let apply_local_transition state local_trans =
  let new_state = Array.copy state in
  let _ = Array.set new_state local_trans.owner local_trans.new_local_state in
  new_state

let transitions_from_state system state : transition list =
  let local_transitions = local_transitions_from_state system state in
  List.map
    (fun loc_trans ->
      let new_state = apply_local_transition state loc_trans in
      { owner = loc_trans.owner; action = loc_trans.action; new_state })
    local_transitions

let state_match_bad state (bads : (id_actor * id_local_state) list) =
  List.fold_left
    (fun acc (actor, bad_local_state) -> acc && Array.get state actor = bad_local_state)
    true bads
