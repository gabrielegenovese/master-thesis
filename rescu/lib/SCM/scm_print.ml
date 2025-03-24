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

(** SCM analyzer: printing functions module *)

open Scm_syn
open Format

(* ------------------------------------------ *)
(* expressions *)

let print_scalar fmt s =
  match s with Float f -> Format.pp_print_float fmt f | Mpqf () -> ()

let print_interval fmt i =
  Format.fprintf fmt "[@[%a@],@[%a@]]" print_scalar i.inf print_scalar i.sup

let print_coeff fmt c =
  match c with Scalar s -> print_scalar fmt s | Interval i -> print_interval fmt i

let print_round fmt r =
  match r with
  | Near -> pp_print_string fmt "n"
  | Zero -> pp_print_string fmt "0"
  | Up -> pp_print_string fmt "+oo"
  | Down -> pp_print_string fmt "-oo"
  | Rnd -> pp_print_string fmt "?"

let print_unop fmt op =
  match op with
  | Neg -> pp_print_string fmt "neg"
  | Cast -> pp_print_string fmt "cast"
  | Sqrt -> pp_print_string fmt "sqrt"

let print_binop fmt op =
  match op with
  | Add -> pp_print_string fmt "+"
  | Sub -> pp_print_string fmt "-"
  | Mul -> pp_print_string fmt "*"
  | Div -> pp_print_string fmt "/"
  | Mod -> pp_print_string fmt "%"

let print_typ fmt typ =
  match typ with
  | Int -> pp_print_string fmt "int "
  | Real -> pp_print_string fmt "real "
  | _ -> failwith "this type cannot be printed"

let rec print_iexpr fmt expi =
  match expi with
  | Cst c -> print_coeff fmt c
  | Var v -> pp_print_string fmt v
  | Unop (op, exp, _, _) -> Format.fprintf fmt "%a(@[%a@])" print_unop op print_iexpr exp
  | Binop (op, exp1, exp2, _, _) ->
      Format.fprintf fmt "(@[%a@] %a @[%a@])" print_iexpr exp1 print_binop op print_iexpr
        exp2

let print_constyp fmt constyp =
  match constyp with
  | EQ -> pp_print_string fmt "=="
  | NEQ -> pp_print_string fmt "!="
  | GT -> pp_print_string fmt ">"
  | GEQ -> pp_print_string fmt ">="
  | LEQ -> pp_print_string fmt "<="
  | LT -> pp_print_string fmt "<"

let print_cons fmt (exp1, comp, exp2) =
  fprintf fmt "@[%a@]@,%a@,@[%a@]" print_iexpr exp1 print_constyp comp print_iexpr exp2

let rec print_bexpr fmt expb =
  match expb with
  | TRUE -> pp_print_string fmt " #true "
  | FALSE -> pp_print_string fmt " #false "
  | CONS cons -> print_cons fmt cons
  | BRANDOM -> pp_print_string fmt " #random "
  | AND (b1, b2) -> fprintf fmt "(@[%a@]) AND @, (@[%a@])" print_bexpr b1 print_bexpr b2
  | OR (b1, b2) -> fprintf fmt "(@[%a@]) OR @, (@[%a@])" print_bexpr b1 print_bexpr b2
  | NOT b -> fprintf fmt "@[ NOT(%a)@]" print_bexpr b

(* ------------------------------------------ *)
(* declarations and assignement *)

let print_declaration fmt (v, t, e) =
  match e with
  | None -> fprintf fmt "%a %a" print_typ t Format.pp_print_string v
  | Some expr ->
      fprintf fmt "%a %a = %a" print_typ t Format.pp_print_string v print_iexpr expr

let print_assignement fmt (v, expi) =
  fprintf fmt "%a = @[%a@]" Format.pp_print_string v print_iexpr expi

(* ------------------------------------------ *)
(* transitions *)

let print_taction fmt act =
  match act with SEND -> pp_print_string fmt "!" | RECEIVE -> pp_print_string fmt "?"

let print_action fmt action =
  match action with
  | None -> ()
  | Some (q, act, var_p) ->
      Format.fprintf fmt "%d %a %a" q print_taction act Format.pp_print_string var_p

let print_transition fmt trans =
  Format.fprintf fmt "to %s: @,@[%a@],@,@[%a@],@,@[%a@]   [owner=%s,%s]@." trans.new_state
    print_bexpr trans.guard print_action trans.action
    (Print.list ~first:"@[" ~sep:",@," ~last:"@]" print_assignement)
    trans.assignement trans.owner
    (if trans.controllable then "C" else "U")

(* ------------------------------------------ *)
(* states *)

let print_state fmt s =
  Format.fprintf fmt "state %s : @. %a@." s.id_state
    (Print.list ~first:"@[<2>" ~sep:"@." ~last:"@]" print_transition)
    s.ltrans

let print_automaton fmt auto =
  Format.fprintf fmt
    "Automaton %s : @. Variables: @. %a @. Initial states: %a @. States:@. %a "
    auto.id_auto
    (Print.list ~first:"@[<2>" ~sep:",@," ~last:"@]" print_declaration)
    auto.ldec
    (Print.list ~first:"@[<2>" ~sep:",@," ~last:"@]" pp_print_string)
    auto.init_states
    (Print.list ~first:"@[<2>" ~sep:"@." ~last:"@]" print_state)
    auto.lstate

(* ------------------------------------------ *)
(* global scm *)

let print_scm fmt scm_p =
  Format.fprintf fmt
    "SCM %s : @. nb queues: %d @. lossy channels: %a @. parameters: %a @. %a @. \
     thresholds: %a @. bad_states:@. %a @."
    scm_p.id_scm scm_p.nb_channels
    (Print.list ~first:"@[" ~sep:"," ~last:"@]" Format.pp_print_int)
    scm_p.lossy_list
    (Print.list ~first:"@[<2>" ~sep:",@," ~last:"@]" print_declaration)
    scm_p.params
    (Print.list ~first:"@[" ~sep:"@." ~last:"@]" print_automaton)
    scm_p.lauto
    (Print.list ~first:"@[<2>" ~sep:",@," ~last:"@]" print_cons)
    scm_p.threshold
    (Print.list ~first:"@[" ~sep:"@." ~last:"@]" (fun fmt (lbad, _) ->
         Print.list ~first:"@[(" ~sep:"@, X @," ~last:")@]"
           (fun fmt (auto, l) ->
             Format.fprintf fmt "auto %s : %a" auto
               (Print.list ~first:"@[" ~sep:",@," ~last:"@]" (fun fmt (loc, expr) ->
                    Format.fprintf fmt "in %s : @[%a@]" loc print_bexpr expr))
               l)
           fmt lbad))
    scm_p.bad_states

let print_global_scm fmt g_scm =
  Format.fprintf fmt
    "GLOBAL SCM %s : @. nb queues: %d @. lossy channels: %a @. Variables:@. %a @. \
     Parameters:@. %a @. States @. %a  @. thresholds: %a @. bad_states: %a @."
    g_scm.gb_id_scm g_scm.gb_nb_channels
    (Print.list ~first:"@[" ~sep:"," ~last:"@]" Format.pp_print_int)
    g_scm.gb_lossy_list
    (Print.list ~first:"@[<2>" ~sep:",@," ~last:"@]" print_declaration)
    g_scm.gb_vars
    (Print.list ~first:"@[<2>" ~sep:",@," ~last:"@]" print_declaration)
    g_scm.gb_params
    (Print.list ~first:"@[<2>" ~sep:"@." ~last:"@]" print_state)
    g_scm.gb_lstates
    (Print.list ~first:"@[<2>" ~sep:",@," ~last:"@]" print_cons)
    g_scm.gb_threshold
    (Print.list ~first:"@[" ~sep:",@," ~last:"@]" (fun fmt (name, expr, regexp) ->
         match regexp with
         | Regexp.Empty -> Format.fprintf fmt "<%s : @[%a@]>" name print_bexpr expr
         | _ ->
             Format.fprintf fmt "<%s : @[%a@] with @[%a@]>" name print_bexpr expr
               (Regexp.print Format.pp_print_string)
               regexp))
    g_scm.gb_bad_states
