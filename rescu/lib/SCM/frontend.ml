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

(** SCM analyzer: parser *)

(*open Format*)

(*  ********************************************************************** *)
(** {2 Parsing input file} *)
(*  ********************************************************************** *)

let parse_lexbuf (fmt : Format.formatter) (lexbuf : Lexing.lexbuf) : Scm_syn.scm =
  let scm =
    try Scm_yacc.scm Scm_lex.token lexbuf with
    | Parsing.Parse_error ->
        let startp = Lexing.lexeme_start_p lexbuf and endp = Lexing.lexeme_end_p lexbuf in
        Format.fprintf fmt "Syntaxical error: %s, line %i, characters %i-%i: '%s'.@."
          startp.Lexing.pos_fname startp.Lexing.pos_lnum
          (startp.Lexing.pos_cnum - startp.Lexing.pos_bol)
          (endp.Lexing.pos_cnum - endp.Lexing.pos_bol)
          (Lexing.lexeme lexbuf);
        raise Exit
    | Scm_syn.Error ->
        let startp = Lexing.lexeme_start_p lexbuf and endp = Lexing.lexeme_end_p lexbuf in
        Format.fprintf fmt "Lexical error: %s, line %i, character %i-%i: '%s'.@."
          startp.Lexing.pos_fname startp.Lexing.pos_lnum
          (startp.Lexing.pos_cnum - startp.Lexing.pos_bol)
          (endp.Lexing.pos_cnum - endp.Lexing.pos_bol)
          (Lexing.lexeme lexbuf);
        raise Exit
  in
  scm
