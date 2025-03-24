%{
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

(** SCM analyzer: camlyacc module *)

(* function to assign an owner to a transition - rule automaton:*)
let assign_owner_ltrans (owner_name:string) (transition_list: Scm_syn.transition list)=
  List.map (fun trans -> {trans with Scm_syn.owner = owner_name}) transition_list


let assign_owner_lstate (owner_name:string) (state_list: Scm_syn.state list)=
  List.map
    (fun s -> {s with Scm_syn.ltrans = assign_owner_ltrans owner_name s.Scm_syn.ltrans}) 
    state_list

%}

/* tokens */
%token TK_LPAR TK_RPAR TK_BRANDOM TK_RANDOM TK_ASSUME TK_HALT TK_FAIL TK_VAR TK_DONE TK_END TK_ENDSCM
%token TK_WHEN TK_THEN TK_WITH TK_IN TK_BAD_STATES
%token TK_TO TK_AUTOMATON TK_STATE TK_NBCHAN TK_SCM TK_VARIABLES TK_PARAMETERS TK_INITIAL TK_LOSSY TK_THRESHOLD TK_UNCONTROLLABLE
%token TK_REG_PLUS TK_REG_STAR
%token TK_REG_CONCAT
%token TK_REG_UNION
%token TK_REG_SEP TK_REG_EPSILON
%token <(Scm_syn.typ * Scm_syn.round)> TK_MUL
%token <(Scm_syn.typ * Scm_syn.round)> TK_ADD
%token <(Scm_syn.typ * Scm_syn.round)> TK_SUB
%token <(Scm_syn.typ * Scm_syn.round)> TK_DIV
%token <(Scm_syn.typ * Scm_syn.round)> TK_MODULO
%token <(Scm_syn.typ * Scm_syn.round)> TK_CAST
%token <(Scm_syn.typ * Scm_syn.round)> TK_SQRT
%token <unit> TK_MPQF
%token <float> TK_FLOAT
%token <int> TK_ENT
%token <Scm_syn.taction> TK_ACTION

%token TK_PLUS TK_MINUS TK_TIMES TK_LEQ TK_GEQ TK_LT TK_GT TK_EQ TK_NEQ TK_AF
%token TK_AND TK_OR TK_NOT
%token TK_COMMA TK_RETURNS TK_COLON  TK_SEMICOLON
%token TK_INT TK_REAL
%token <string> TK_ID
%token TK_TRUE TK_FALSE
%token TK_EOF



/* precedence */
%nonassoc TK_SEMICOLON
%nonassoc TK_WHILE TK_DO TK_DONE
%nonassoc TK_LPAR TK_RPAR TK_BEGIN TK_END
%left TK_OR
%left TK_AND
%nonassoc TK_NOT
%nonassoc TK_LEQ TK_GEQ TK_L TK_G TK_EQ TK_NEQ TK_AF

/* types */
%type <Scm_syn.scm> scm
%type <Scm_syn.bexpr> bexpr
%type <Scm_syn.iexpr> iexpr
%type <Scm_syn.transition> transition
%type <Scm_syn.state> state

%start scm
%%

bexpr :
  TK_LPAR bexpr TK_RPAR                  { $2 }
| bexpr TK_AND bexpr                     { Scm_syn.AND ($1,$3) }
| bexpr TK_OR  bexpr                     { Scm_syn.OR  ($1,$3) }
| TK_NOT bexpr                           { Scm_syn.NOT  $2 }
| icons                                  { Scm_syn.CONS $1 }
| TK_TRUE                                { Scm_syn.TRUE }
| TK_FALSE                               { Scm_syn.FALSE }
| TK_BRANDOM                             { Scm_syn.BRANDOM }

icons:
  iexpr TK_EQ iexpr  { ($1, Scm_syn.EQ,$3) }
| iexpr TK_NEQ iexpr { ($1, Scm_syn.NEQ,$3) }
| iexpr TK_GT iexpr   { ($1, Scm_syn.GT,$3) }
| iexpr TK_GEQ iexpr   { ($1, Scm_syn.GEQ,$3) }
| iexpr TK_LEQ iexpr   { ($1, Scm_syn.LEQ,$3) }
| iexpr TK_LT iexpr   { ($1, Scm_syn.LT,$3) }


iexpr:
  iexpr TK_ADD iexpr_1
    { let (t,r) = $2 in Scm_syn.Binop(Scm_syn.Add,$1,$3,t,r) }
| iexpr TK_SUB iexpr_1
    { let (t,r) = $2 in Scm_syn.Binop(Scm_syn.Sub,$1,$3,t,r) }
| iexpr_1
    { $1 }

iexpr_1:
  iexpr_1 TK_MUL iexpr_2
    { let (t,r) = $2 in Scm_syn.Binop(Scm_syn.Mul,$1,$3,t,r) }
| iexpr_1 TK_DIV iexpr_2
    { let (t,r) = $2 in Scm_syn.Binop(Scm_syn.Div,$1,$3,t,r) }
| iexpr_1 TK_MODULO iexpr_2
    { let (t,r) = $2 in Scm_syn.Binop(Scm_syn.Mod,$1,$3,t,r) }
| iexpr_2
    { $1 }
iexpr_2:
  TK_SUB iexpr_2
    { let (t,r) = $1 in Scm_syn.Unop(Scm_syn.Neg,$2,t,r) }
| iexpr_3
    { $1 }
iexpr_3:
  TK_CAST iexpr_3
    { let (t,r) = $1 in Scm_syn.Unop(Scm_syn.Cast,$2,t,r) }
| TK_SQRT iexpr_3
    { let (t,r) = $1 in Scm_syn.Unop(Scm_syn.Sqrt,$2,t,r) }
| TK_LPAR iexpr TK_RPAR
    { $2 }
| coeff
   { Scm_syn.Cst($1) }
| TK_ID
    { Scm_syn.Var($1) }

coeff: scalar { Scm_syn.Scalar $1 }

scalar:
  TK_MPQF  { Scm_syn.Mpqf () }
| TK_FLOAT { Scm_syn.Float($1) }
| integer  { Scm_syn.Float(float_of_int $1) }

integer:
  TK_ENT { $1 }

action_rule:
 TK_COMMA  integer TK_ACTION TK_ID { Some ($2,$3,$4) }
|                                  { None }

aff:
  TK_ID TK_AF iexpr { ($1,$3) }

aff_list:
  aff_list TK_COMMA aff
    { $3::$1 }
| aff
    { [$1] }
/* bug possible si on affecte plusieurs fois la meme variable */

aff_trans :
    TK_WITH aff_list { $2 }
|                    { [] }

/* on n'affecter le 'owner' d'une transition que quand on a lu l'identifiant de l'automate */
/* input actions are incontrollable, other actions are controllable */
transition:
  TK_TO integer TK_COLON TK_WHEN bexpr action_rule aff_trans
    {
      {
	Scm_syn.owner = "";
	Scm_syn.controllable =
	  begin
	  match $6 with
	      Some (_,Scm_syn.RECEIVE,_) -> false
	    | _ -> true
	  end;
	Scm_syn.new_state = string_of_int $2 ;
	Scm_syn.guard = $5 ;
	Scm_syn.action = $6 ;
	Scm_syn.assignement = $7 ;
	}
      }

transition_list:
  transition_list  TK_SEMICOLON transition
    { $3::$1 }
| transition
    { [$1] }

transition_rule:
    transition_list  TK_SEMICOLON { $1 }
|                                 { [] }

state:
  TK_STATE integer TK_COLON transition_rule
   {
     {
       Scm_syn.id_state = string_of_int $2 ;
       Scm_syn.ltrans = $4 ;
     }
   }

state_list:
  state_list state
    { $2::$1 }
| state
    { [$1] }

typedef:
  TK_INT   { Scm_syn.Int }
| TK_REAL  { Scm_syn.Real }

initvar:
  TK_AF iexpr  { Some ($2)}
|               { None }
declaration:
    typedef TK_ID initvar { ($2,$1,$3) }

declaration_list:
  declaration_list TK_SEMICOLON declaration
    { $3::$1 }
| declaration
    { [$1] }

declaration_rule:
    declaration_list TK_SEMICOLON { $1 }
|                                 { [] }

initial_states:
   initial_states TK_COMMA integer { (string_of_int $3)::$1 }
|  integer                       { [ (string_of_int $1)] }

automaton:
  TK_AUTOMATON TK_ID TK_COLON declaration_rule TK_INITIAL TK_COLON initial_states state_list
   {
     {
       Scm_syn.id_auto = $2 ;
       Scm_syn.ldec = $4 ;
       Scm_syn.init_states = $7 ;
       Scm_syn.lstate = assign_owner_lstate $2 $8 ;
     }
   }

automaton_list:
  automaton_list automaton
    { $2::$1 }
| automaton
    { [$1] }

nbchan:
    TK_NBCHAN TK_AF integer TK_SEMICOLON  { $3 }


lossy_list:
  integer                         { [ $1 ] }
| lossy_list TK_COMMA integer     { $3::$1 }

lossy:
    TK_LOSSY TK_COLON lossy_list  { $3 }
|                                 { [] }

threshold_list:
    icons                       { [ $1 ] }
| threshold_list TK_COMMA icons     { $3::$1 }

threshold:
    TK_THRESHOLD TK_COLON threshold_list  { $3 }
|                                 { [] }

bad_state:
TK_IN integer TK_COLON bexpr { (string_of_int $2,$4) }

bad_states_list:
  bad_state                      { [ $1 ] }
| bad_states_list bad_state  { $2::$1 }

bad_states_auto_list:
bad_states_auto_list TK_AUTOMATON TK_ID TK_COLON bad_states_list { ($3,$5)::$1 }
| TK_AUTOMATON TK_ID TK_COLON bad_states_list { [($2,$4)] }



regexp:
  TK_LPAR regexp_union TK_RPAR    { $2 }
| TK_REG_EPSILON            { Regexp.Epsilon }
| TK_REG_SEP                { Regexp.Letter "#" }
| TK_ID                     { Regexp.Letter $1 }
| regexp TK_REG_STAR        { Regexp.Star $1 }
| regexp TK_REG_PLUS        { Regexp.Plus $1 }

regexp_union:
regexp_concat
    { match $1 with
	  Regexp.Concat lc -> (Regexp.Union [Regexp.Concat (List.rev lc)])
	| _ -> failwith "parsing error: regexp union "
    }
| regexp_union TK_REG_UNION regexp_concat
    { match $1 with
	  Regexp.Union l ->
	  begin
	    match $3 with
		Regexp.Concat c -> Regexp.Union ((Regexp.Concat(List.rev c))::l)
	      | _ -> failwith "parsing error: regexp union "
	  end
	| _ -> failwith "parsing error: regexp union "
    }

regexp_concat:
    regexp   {Regexp.Concat [$1]}
| regexp_concat TK_REG_CONCAT regexp { match $1 with Regexp.Concat l -> Regexp.Concat ($3::l) | _ -> failwith "parsing error: regexp concat " }

regexp_rule:
TK_WITH  regexp_union { match $2 with Regexp.Union l -> Regexp.Exp (Regexp.Union (List.rev l)) | _ -> failwith "parsing error: regexp global_with " }
|                     { Regexp.Empty }

bad_states_list_list:
  bad_states_list_list TK_LPAR bad_states_auto_list regexp_rule TK_RPAR { ($3,$4)::$1 }
| TK_LPAR bad_states_auto_list regexp_rule TK_RPAR { [($2,$3)] }

bad_states_rule:
  TK_BAD_STATES TK_COLON bad_states_list_list { $3 }
|            { [] }


scm:
  TK_SCM TK_ID TK_COLON nbchan lossy TK_PARAMETERS TK_COLON declaration_rule automaton_list threshold bad_states_rule TK_EOF
   {
    {
      Scm_syn.id_scm = $2 ;
      Scm_syn.nb_channels = $4 ;
      Scm_syn.lossy_list = $5 ;
      Scm_syn.params = $8 ;
      Scm_syn.lauto = $9 ;
      Scm_syn.threshold = $10;
      Scm_syn.bad_states = $11
    }
   }

%%
