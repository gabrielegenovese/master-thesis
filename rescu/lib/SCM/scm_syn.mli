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
(** {2 Transitions and states } *)
(*  ********************************************************************* *)

type transition = {
  owner : string;  (** automaton where the transition occurs *)
  controllable : bool;  (** whether the transition is controllable *)
  new_state : string;  (** new state *)
  guard : bexpr;  (** guard *)
  action : (int * taction * var) option;  (** num channel,type, message *)
  assignement : (var * iexpr) list;  (** assigment lists*)
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
(** {2 SCMs} *)
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

val check_global_scm : global_scm -> unit
(** raise Wrong_scm if the automaton contains one of these errors:
    - some lossy channels do not exist
    - a variable appearing in a guard or an affectation is undeclared
    - a transition leads to an undeclared state
    - an initial state does not exist
    - a message is not declared
    - a message is sent to a channel that does not exist
    - a bad states does not correspond to an actual location
*)

(*  ********************************************************************* *)
(** {2 Exceptions} *)
(*  ********************************************************************* *)

val start_of_comment : Lexing.position ref

exception Error
exception Unterminated_comment of Lexing.position
