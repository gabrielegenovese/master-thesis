(***********************************************************************)
(*                                                                     *)
(*                    The Lattice Automata Library                     *)
(*                                                                     *)
(*                Bertrand Jeannet and Tristan Le Gall                 *)
(*                                                                     *)
(*  Copyright 2008 Institut National de Recherche en Informatique et   *)
(*  en Automatique.  All rights reserved.  This file is distributed    *)
(*  under the terms of the GNU Library General Public License, with    *)
(*  the special exception on linking described in file LICENSE.        *)
(*                                                                     *)
(***********************************************************************)

(** Regular expressions *)

type 'a exp =
  | Epsilon
  | Letter of 'a
  | Union of 'a exp list
  | Concat of 'a exp list
  | Star of 'a exp
  | Plus of 'a exp

type 'a t = Empty | Exp of 'a exp

let rec exp_map (f : 'a -> 'b) (exp : 'a exp) : 'b exp =
  match exp with
  | Epsilon -> Epsilon
  | Letter l -> Letter (f l)
  | Union list -> Union (List.map (exp_map f) list)
  | Concat list -> Concat (List.map (exp_map f) list)
  | Star e -> Star (exp_map f e)
  | Plus e -> Plus (exp_map f e)

let map (f : 'a -> 'b) (exp : 'a t) : 'b t =
  match exp with Empty -> Empty | Exp exp -> Exp (exp_map f exp)

let rec exp_iter (f : 'a -> unit) (exp : 'a exp) : unit =
  match exp with
  | Epsilon -> ()
  | Letter l -> f l
  | Union list -> List.iter (exp_iter f) list
  | Concat list -> List.iter (exp_iter f) list
  | Star e -> exp_iter f e
  | Plus e -> exp_iter f e

let iter (f : 'a -> unit) (exp : 'a t) : unit =
  match exp with Empty -> () | Exp exp -> exp_iter f exp

let rec exp_equal (letter_equal : 'a -> 'a -> bool) (e1 : 'a exp) (e2 : 'a exp) : bool =
  match (e1, e2) with
  | Epsilon, Epsilon -> true
  | Letter l1, Letter l2 -> letter_equal l1 l2
  | Union e1, Union e2 -> lexp_equal letter_equal e1 e2
  | Concat e1, Concat e2 -> lexp_equal letter_equal e1 e2
  | Star e1, Star e2 -> exp_equal letter_equal e1 e2
  | Plus e1, Plus e2 -> exp_equal letter_equal e1 e2
  | _ -> false

and lexp_equal (letter_equal : 'a -> 'a -> bool) (l1 : 'a exp list) (l2 : 'a exp list) :
    bool =
  match (l1, l2) with
  | [], [] -> true
  | e1 :: l1, e2 :: l2 -> exp_equal letter_equal e1 e2 && lexp_equal letter_equal l1 l2
  | _ -> false

let rec simplify_concat (letter_equal : 'a -> 'a -> bool) (lexp : 'a exp list) :
    'a exp list =
  (* apply the rules:
     x.x* | x*.x | x+.x* | x*.x+ -> x+
     x*.x* -> x*
     (e+x).x* -> x*
  *)
  match lexp with
  | [] -> []
  | [ _ ] as l -> l
  | e1 :: (e2 :: rest2 as rest1) -> (
      match (e1, e2) with
      | Star x, Star y when exp_equal letter_equal x y ->
          simplify_concat letter_equal (Star x :: rest2)
      | Plus x, Star y when exp_equal letter_equal x y ->
          simplify_concat letter_equal (Plus x :: rest2)
      | Star y, Plus x when exp_equal letter_equal x y ->
          simplify_concat letter_equal (Plus x :: rest2)
      | x, Star y when exp_equal letter_equal x y ->
          simplify_concat letter_equal (Plus x :: rest2)
      | Star y, x when exp_equal letter_equal x y ->
          simplify_concat letter_equal (Plus x :: rest2)
      | Union [ Epsilon; y ], Star x when exp_equal letter_equal x y ->
          simplify_concat letter_equal (Star x :: rest2)
      | _ -> e1 :: simplify_concat letter_equal rest1)

let simplify_union (letter_equal : 'a -> 'a -> bool) (lexp : 'a exp list) : 'a exp list =
  (* apply the rules:
     x + x+ + ... -> x+ + ...
     x + x* + ... -> x* + ...
     (we do not track x+ + x* + ... -> x* + ... )
  *)
  let is_subsumed x exp =
    match exp with
    | Star y when exp_equal letter_equal x y -> true
    | Plus y when exp_equal letter_equal x y -> true
    | y when exp_equal letter_equal x y -> true
    | _ -> false
  in
  let rec subsume (res : 'a exp list) (lexp : 'a exp list) : 'a exp list =
    match lexp with
    | [] -> res
    | x :: rest ->
        if List.exists (is_subsumed x) res || List.exists (is_subsumed x) rest then
          subsume res rest
        else subsume (x :: res) rest
  in
  subsume [] lexp

let simplify (letter_equal : 'a -> 'a -> bool) (expr : 'a t) : 'a t =
  let rec simp (exp : 'a exp) : 'a exp =
    match exp with
    | Epsilon -> exp
    | Letter _ -> exp
    | Concat lexp -> (
        let lexp = List.map simp lexp in
        (* we remove epsilon *)
        let lexp = List.filter (fun exp -> exp <> Epsilon) lexp in
        (* we simplify *)
        let lexp = simplify_concat letter_equal lexp in
        match lexp with [] -> Epsilon | [ e ] -> e | _ -> Concat lexp)
    | Union lexp -> (
        let lexp = List.map simp lexp in
        (* we split into non-epsilon and epsilon *)
        let lexp, leps = List.partition (fun exp -> exp <> Epsilon) lexp in
        let lexp = simplify_union letter_equal (List.sort compare lexp) in
        let lexp =
          if leps = [] then lexp
          else match lexp with [ Star _ ] | [ Plus _ ] -> lexp | _ -> Epsilon :: lexp
        in
        match lexp with [] -> Epsilon | [ x ] -> x | _ -> Union lexp)
    | Star exp -> (
        let exp = simp exp in
        match exp with
        | Epsilon -> exp
        | Star _ -> exp
        | Plus x -> Star x
        | Union (Epsilon :: lx) -> Star (Union lx)
        | _ -> Star exp)
    | Plus exp -> (
        let exp = simp exp in
        match exp with
        | Epsilon -> exp
        | Star _ -> exp
        | Plus _ -> exp
        | Union (Epsilon :: lx) -> Star (Union lx)
        | _ -> Plus exp)
  in
  match expr with Empty -> Empty | Exp exp -> Exp (simp exp)

(* Allows to check whether a prefix matching the expression can be found in the buffer.
   Returns true if yes, with the content of the buffer remaining after this prefix was removed. *)
let rec apply_regexp (expression : 'a exp) (buff : 'a list) =
  match expression with
  | Epsilon -> (buff = [], buff)
  (* If we want to match the empty world the buff has to be empty.*)
  (* Maybe not always true ? is something like ø.somthing a valid expression ? In this case we have
     to return true and the buffer. Inthe other hand if we stick to the current boolean value we can
     return the empty list, the buffer will be equal to that anyway. *)
  | Letter value -> (
      match buff with
      | [] -> (false, [])
      | head :: tail ->
          (value = head, tail)
          (* Here either we found the right letter and we consumed just that,
             either we didn't consume anything and then the rest of the buffer won't matter *)
      )
  | Union (head_u :: tail_u) ->
      let res_hd, buff_hd = apply_regexp head_u buff in
      (* Case of the union (or): either it matches with *)
      if res_hd then (res_hd, buff_hd)
      else
        apply_regexp (Union tail_u)
          buff (* the first option, either we check for the remaining union.*)
  | Union [] ->
      (false, [])
      (* If we reach this point, all possibilities of an union have been explored without result. *)
  | Concat (head_c :: tail_c) ->
      let res_first, buffs_after_first = apply_regexp head_c buff in
      if res_first then apply_regexp (Concat tail_c) buffs_after_first else (false, [])
  | Concat [] ->
      (true, buff)
      (* If we went through all the elements of a concatenation, that's because we could read something
         for all of them. If there was an incompatibility it would happen before. *)
  | Star expression_2 -> (
      match buff with
      | _ :: _ ->
          let res_hd, buff_hd = apply_regexp expression_2 buff in
          if res_hd then apply_regexp expression buff_hd else (true, buff)
      (* We 'eat' as much occurences of the pattern as we can *)
      (* And when it is not there anymore it is true, with the buffer not modified anymore *)
      | _ ->
          (true, buff)
          (* The buffer is empty, the star recognizing the empty world it works *))
  | Plus expression_2 -> (
      match buff with
      | _ :: _ ->
          let res_hd, buff_hd = apply_regexp expression_2 buff in
          if res_hd then apply_regexp (Star expression_2) buff_hd else (false, [])
          (* As soon as we met the pattern we were looking for,
             we eat as many more as we can with the star (so maybe 0) *)
      | _ -> (false, []))
(* For the plus if the buffer was empty when you meet the expression, the word is not recognized *)

let print (print : Format.formatter -> 'a -> unit) (fmt : Format.formatter) (expr : 'a t)
    : unit =
  let rec print_expression_aux (priority : int) (fmt : Format.formatter) (expr : 'a exp) :
      unit =
    match expr with
    | Epsilon -> Format.pp_print_string fmt "_"
    | Letter e -> print fmt e
    | Union lexp ->
        if priority > 1 then
          Print.list ~first:"(@[<hv>" ~sep:"@,|@," ~last:"@])" (print_expression_aux 1)
            fmt lexp
        else
          Print.list ~first:"@[<hv>" ~sep:"@,|@," ~last:"@]" (print_expression_aux 1) fmt
            lexp
    | Concat lexp ->
        if priority > 2 then
          Print.list ~first:"(@[<hov>" ~sep:".@," ~last:"@])" (print_expression_aux 2) fmt
            lexp
        else
          Print.list ~first:"@[<hov>" ~sep:".@," ~last:"@]" (print_expression_aux 2) fmt
            lexp
    | Star exp ->
        print_expression_aux 3 fmt exp;
        Format.pp_print_string fmt "^*"
    | Plus exp ->
        print_expression_aux 3 fmt exp;
        Format.pp_print_string fmt "^+"
  in

  (* print_expression_aux 0 (simp_expression expr) *)
  match expr with
  | Empty -> Format.pp_print_string fmt "Ø"
  | Exp exp -> print_expression_aux 0 fmt exp
