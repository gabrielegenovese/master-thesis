(***********************************************************************)
(*                                                                     *)
(*            The Symbolic Communicating Machines Library              *)
(*                                                                     *)
(*                Bertrand Jeannet and Tristan Le Gall                 *)
(*                                                                     *)
(*  Copyright 2008 Institut National de Recherche en Informatique et   *)
(*  en Automatique.  All rights reserved.  This file is distributed    *)
(*  under the terms of the GNU Library General Public License, with    *)
(*  the special exception on linking described in file LICENSE.        *)
(*                                                                     *)
(***********************************************************************)

(** SCM analyzer: syntax tree module *)

(*  ********************************************************************* *)
(** {2 Variables} *)
(*  ********************************************************************* *)

type var = string
(** Variable *)

(** Types of variables *)
type typ = Real | Int | Single | Double | Extended | Quad

(*  ********************************************************************* *)
(** {2 Expressions} *)
(*  ********************************************************************* *)

(** Unary operators *)
type unop = Neg | Cast | Sqrt

(** Binary operators *)
type binop = Add | Sub | Mul | Div | Mod

(** Rounding direction *)
type round = Near | Zero | Up | Down | Rnd

type scalar = Float of float | Mpqf of unit  (** Mpqf not supported *)
type interval = { mutable inf : scalar; mutable sup : scalar }
type coeff = Scalar of scalar | Interval of interval

(** User type for numerical expressions *)
type iexpr =
  | Cst of coeff
  | Var of var
  | Unop of unop * iexpr * typ * round
  | Binop of binop * iexpr * iexpr * typ * round

(** Numerical constraint type *)
type constyp = EQ | NEQ | GT | GEQ | LEQ | LT

type cons = iexpr * constyp * iexpr
(** Numerical constraint *)

(** Boolean expression *)
type bexpr =
  | TRUE
  | FALSE
  | BRANDOM
  | CONS of cons
  | AND of bexpr * bexpr
  | OR of bexpr * bexpr
  | NOT of bexpr  (** *)

type point = { line : int; col : int; char : int }
(** Control point in the program *)

type taction = SEND | RECEIVE

(*  ********************************************************************* *)
(** {2 Transitions and states} *)
(*  ********************************************************************* *)

type transition = {
  owner : string;
  controllable : bool;
  new_state : string;
  guard : bexpr;
  action : (int * taction * var) option;  (** num channel,type, message *)
  assignement : (var * iexpr) list;
}
(** Transition *)

and trans = {
  transition : transition;  (** transition *)
  mutable tpoint : point;  (** label *)
}
(** Labelled transition *)

type state = { id_state : string; ltrans : transition list }

(*  ********************************************************************* *)
(** {2 Automata} *)
(*  ********************************************************************* *)

type declaration = var * typ * iexpr option
(** Variable declaration *)

type automaton = {
  id_auto : string;
  ldec : declaration list;
  init_states : string list;
  lstate : state list;
}

(*  ********************************************************************* *)
(** {2 Programs} *)
(*  ********************************************************************* *)

type scm = {
  id_scm : string;
  nb_channels : int;
  lossy_list : int list;
  params : declaration list;
  lauto : automaton list;
  threshold : cons list;
  bad_states : ((string * (string * bexpr) list) list * string Regexp.t) list;
}

type global_scm = {
  gb_id_scm : string;
  gb_nb_channels : int;
  gb_lossy_list : int list;
  gb_vars : declaration list;
  gb_params : declaration list;
  gb_init_states : string list;
  gb_lstates : state list;
  gb_threshold : cons list;
  gb_bad_states : (string * bexpr * string Regexp.t) list;
}

(*  ********************************************************************* *)
(** {2 Self-checking} *)
(*  ********************************************************************* *)

exception Wrong_scm of string

(** raise Wrong_scm if the automaton contains one of these errors:
      - some lossy channels do not exist
      - a variable appearing in a guard or an affectation is undeclared
      - a transition leads to an undeclared state
      - an initial state does not exist
      - a message is not declared
      - a message is sent to a channel that does not exist
      - a bad states does not correspond to an actual location
  *)
let check_global_scm (gscm : global_scm) : unit =
  let list_params : var list = List.map (fun (v, _, _) -> v) gscm.gb_params
  and list_vars : var list = List.map (fun (v, _, _) -> v) gscm.gb_vars
  and list_states : string list = List.map (fun s -> s.id_state) gscm.gb_lstates in
  let list_global : var list = list_params @ list_vars in

  let rec check_iexpr (expri : iexpr) : unit =
    match expri with
    | Cst _ -> ()
    | Var v ->
        if not (List.mem v list_global) then raise (Wrong_scm ("Unknown variables: " ^ v))
    | Unop (_, expi, _, _) -> check_iexpr expi
    | Binop (_, exp1, exp2, _, _) ->
        check_iexpr exp1;
        check_iexpr exp2
  in

  let rec check_bexpr (exprb : bexpr) : unit =
    match exprb with
    | TRUE -> ()
    | FALSE -> ()
    | BRANDOM -> ()
    | CONS (exp1, _, exp2) ->
        check_iexpr exp1;
        check_iexpr exp2
    | AND (exp1, exp2) ->
        check_bexpr exp1;
        check_bexpr exp2
    | OR (exp1, exp2) ->
        check_bexpr exp1;
        check_bexpr exp2
    | NOT exp1 -> check_bexpr exp1
  in

  let check_assignment (aff : (var * iexpr) list) : unit =
    List.iter
      (fun (v, e) ->
        if List.mem v list_vars then check_iexpr e
        else raise (Wrong_scm ("Unknown variables: " ^ v)))
      aff
  in
  let check_transition (trans : transition) : unit =
    if not (List.mem trans.new_state list_states) then
      raise (Wrong_scm ("Unknown state: " ^ trans.new_state));
    check_bexpr trans.guard;
    (match trans.action with
    | None -> ()
    | Some (q, _, p) ->
        if q < 0 || q >= gscm.gb_nb_channels then
          raise (Wrong_scm ("Unknown channel: " ^ string_of_int q));
        if not (List.mem p list_params) then raise (Wrong_scm ("Unknown paramters: " ^ p)));
    check_assignment trans.assignement
  in

  let check_state (s : state) : unit = List.iter check_transition s.ltrans in
  (* check lossy channels *)
  List.iter
    (fun q ->
      if q < 0 || q >= gscm.gb_nb_channels then
        raise (Wrong_scm ("Unknown channel: " ^ string_of_int q)))
    gscm.gb_lossy_list;
  (* check initial states *)
  List.iter
    (fun id_s ->
      if not (List.mem id_s list_states) then
        raise (Wrong_scm ("Unknown initial state: " ^ id_s)))
    gscm.gb_init_states;
  (* check list of states states *)
  List.iter check_state gscm.gb_lstates;

  (* check bad states list *)
  let rec nb_sep r =
    match r with
    | Regexp.Epsilon -> 0
    | Regexp.Letter msg -> if msg = "#" then 1 else 0
    | Regexp.Union [] -> 0
    | Regexp.Union (tt :: lr) ->
        let n = nb_sep tt in
        List.fold_left
          (fun acc r ->
            let n = nb_sep r in
            assert (acc = n);
            n)
          n lr
    | Regexp.Concat lr -> List.fold_left (fun acc r -> acc + nb_sep r) 0 lr
    | Regexp.Star r ->
        assert (nb_sep r = 0);
        0
    | Regexp.Plus r ->
        assert (nb_sep r = 0);
        0
  in

  let rec rec_check_regexp r =
    match r with
    | Regexp.Epsilon -> true
    | Regexp.Letter msg ->
        msg = "#" || List.fold_left (fun b (x, _, _) -> b || x = msg) false gscm.gb_params
    (* check that msg is a declared parameter, or a separation *)
    | Regexp.Union lr -> List.fold_left (fun b r -> b && rec_check_regexp r) true lr
    | Regexp.Concat lr -> List.fold_left (fun b r -> b && rec_check_regexp r) true lr
    | Regexp.Star r -> rec_check_regexp r
    | Regexp.Plus r -> rec_check_regexp r
  in
  let check_regexp r =
    match r with
    | Regexp.Empty -> true
    | Regexp.Exp r ->
        assert (nb_sep r = gscm.gb_nb_channels - 1);
        rec_check_regexp r
  in
  List.iter
    (fun (s, bexp, regexp) ->
      if not (List.mem s list_states && check_regexp regexp) then
        raise (Wrong_scm ("Unknown bad state: " ^ s))
      else check_bexpr bexp)
    gscm.gb_bad_states

(*  ********************************************************************* *)
(** {2 Exceptions} *)
(*  ********************************************************************* *)

let start_of_comment = ref Lexing.dummy_pos

exception Error
(** Lexical or syntaxical analysis *)

exception Unterminated_comment of Lexing.position
(** Raised during lexical analysis *)
