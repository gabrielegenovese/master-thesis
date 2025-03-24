
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

(** SCM analyzer: camllex file *)

{
open Scm_syn
open Scm_yacc

(* Keywords *)
let keywords = Hashtbl.create 67
let _ =
  Array.iter
    (fun (keyword,token) -> Hashtbl.add keywords keyword token)
    [|
      ("automaton", TK_AUTOMATON);
      ("scm", TK_SCM);
      ("nb_channels", TK_NBCHAN);
      ("bad_states", TK_BAD_STATES);
      ("in", TK_IN);
      ("parameters", TK_PARAMETERS);
      ("initial",TK_INITIAL);
      ("lossy",TK_LOSSY);
      ("threshold",TK_THRESHOLD);
      ("uncontrollable",TK_UNCONTROLLABLE);
      ("to", TK_TO);
      ("when", TK_WHEN);
      ("with", TK_WITH);
      ("state", TK_STATE);
      ("int" , TK_INT);
      ("real" , TK_REAL);
      ("true", TK_TRUE);
      ("false",TK_FALSE);
      ("not",  TK_NOT);
      ("and",  TK_AND);
      ("or",   TK_OR);
    |]


let newline (lexbuf:Lexing.lexbuf) : unit
  =
  let pos = lexbuf.Lexing.lex_curr_p in
  lexbuf.Lexing.lex_curr_p <- { pos with
    Lexing.pos_lnum = pos.Lexing.pos_lnum + 1;
    Lexing.pos_bol = pos.Lexing.pos_cnum;
  };
  ()

let point lexbuf offset : Scm_syn.point
  =
  let pos = lexbuf.Lexing.lex_curr_p in
  let line = pos.Lexing.pos_lnum in
  let col = pos.Lexing.pos_cnum - pos.Lexing.pos_bol in
  {
    Scm_syn.line = line;
    Scm_syn.col = col + offset;
    Scm_syn.char = pos.Lexing.pos_cnum;
  }

let attributes_of_string (pos:int) lexbuf =
  let str = Lexing.lexeme lexbuf in
  let length = (String.length str) - pos in
  let suffix = String.sub str pos length in
  let index = ref 0 in
  if length=0 then
    (Scm_syn.Real, Scm_syn.Rnd)
  else begin
    if String.get suffix !index <> '_' || length = 1 then
      raise Error
    ;
    incr index;
    let round_typ =
      match String.get suffix !index with
      | 'i' -> Scm_syn.Int
      | 'f' -> Scm_syn.Single
      | 'd' -> Scm_syn.Double
      | 'l' -> Scm_syn.Extended
      | 'q' -> Scm_syn.Quad
      | _ -> raise Error;
    in
    if length = 2 then
      (round_typ, Scm_syn.Rnd)
    else begin
      incr index;
      if (String.get suffix !index) <> ',' || length = 3 then
        raise Error
      ;
      incr index;
      let round_dir =
        match String.sub suffix !index (length - !index) with
       | "n" -> Scm_syn.Near
        | "0" -> Scm_syn.Zero
        | "+oo" -> Scm_syn.Up
        | "-oo" -> Scm_syn.Down
        | "?" -> Scm_syn.Rnd
        |  _ -> raise Error
      in
      (round_typ, round_dir)
    end
  end
}




rule token = parse
    (* ignore spaces, tabs, and \r *)
      ['\r' ' ' '\t']+   { token lexbuf }

    (* line count *)
    | '\n'
    { newline lexbuf; token lexbuf }

    (* comments: nested /* */, and // are allowed *)
    | "/*" { Scm_syn.start_of_comment := Lexing.lexeme_start_p lexbuf;
	     comment lexbuf ;
	     token lexbuf }
    | "//"([^'\n']*)     { token lexbuf }

    (* numbers *)
    | ['0'-'9']*
	{
	  let str = Lexing.lexeme lexbuf in
	  TK_ENT(int_of_string str)
	}
    | ['0'-'9']* ('.' ['0'-'9']+) (['e' 'E'] ['+' '-']? ['0'-'9']+)?
	{
	  let str = Lexing.lexeme lexbuf in
	  TK_FLOAT(float_of_string str)
	}

    (* keywords *)
    | ";"      { TK_SEMICOLON }
    | ":"      { TK_COLON }
    | ","      { TK_COMMA }
    | "("      { TK_LPAR }
    | ")"      { TK_RPAR }
    | "<="     { TK_LEQ }
    | ">="     { TK_GEQ }
    | "<"      { TK_LT }
    | ">"      { TK_GT }
    | "!="     { TK_NEQ }
    | "=="     { TK_EQ }
    | "="      { TK_AF }
    | "!"      { TK_ACTION(Scm_syn.SEND) }
    | "?"      { TK_ACTION(Scm_syn.RECEIVE) }

    (* Arithmetic operations *)
    | "+"(('_'['i''f''d''l''q'])(','("n"|"0"|"+oo"|"-oo"|"?"))?)?
	{ TK_ADD(attributes_of_string 1 lexbuf) }
    | "-"(('_'['i''f''d''l''q'])(','("n"|"0"|"+oo"|"-oo"|"?"))?)?
	{ TK_SUB(attributes_of_string 1 lexbuf) }
    | "*"(('_'['i''f''d''l''q'])(','("n"|"0"|"+oo"|"-oo"|"?"))?)?
	{ TK_MUL(attributes_of_string 1 lexbuf) }
    | "/"(('_'['i''f''d''l''q'])(','("n"|"0"|"+oo"|"-oo"|"?"))?)?
	{ TK_DIV(attributes_of_string 1 lexbuf) }
    | "%"(('_'['i''f''d''l''q'])(','("n"|"0"|"+oo"|"-oo"|"?"))?)?
	{ TK_MODULO(attributes_of_string 1 lexbuf) }
    | "cast"(('_'['i''f''d''l''q'])(','("n"|"0"|"+oo"|"-oo"|"?"))?)?
	{ TK_CAST(attributes_of_string 4 lexbuf) }
    | "sqrt"(('_'['i''f''d''l''q'])(','("n"|"0"|"+oo"|"-oo"|"?"))?)?
	{ TK_SQRT(attributes_of_string 4 lexbuf) }

    (* regular expressions operators *)
    | "_"  { TK_REG_EPSILON}
    | "|"  { TK_REG_UNION }
    | "#"  { TK_REG_SEP }
    | "."  { TK_REG_CONCAT }
    | "^*" { TK_REG_STAR }
    | "^+" { TK_REG_PLUS }

    (* identifiers *)
    | ['a'-'z' 'A'-'Z' '_'] ['a'-'z' 'A'-'Z' '0'-'9' '_']*
      {
	let id = Lexing.lexeme lexbuf in
	try Hashtbl.find keywords id
	with Not_found -> TK_ID id }

    (* end of file *)
    | eof         { TK_EOF }
    | '\004'      { TK_EOF }


    (* handles nested /* */ comments *)

and comment = parse
    "/*"   { comment lexbuf; comment lexbuf }
  | "*/"   { () }
  | '\n'
      { newline lexbuf; comment lexbuf }
  | [^'\n' '*' '/']+ { comment lexbuf }
  | _              { comment lexbuf }
  | eof            { raise (Unterminated_comment !Scm_syn.start_of_comment) }
