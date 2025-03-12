val print_scalar : Format.formatter -> Scm_syn.scalar -> unit
val print_interval : Format.formatter -> Scm_syn.interval -> unit
val print_coeff : Format.formatter -> Scm_syn.coeff -> unit
val print_round : Format.formatter -> Scm_syn.round -> unit
val print_unop : Format.formatter -> Scm_syn.unop -> unit
val print_binop : Format.formatter -> Scm_syn.binop -> unit
val print_typ : Format.formatter -> Scm_syn.typ -> unit
val print_iexpr : Format.formatter -> Scm_syn.iexpr -> unit
val print_constyp : Format.formatter -> Scm_syn.constyp -> unit

val print_cons :
  Format.formatter -> Scm_syn.iexpr * Scm_syn.constyp * Scm_syn.iexpr -> unit

val print_bexpr : Format.formatter -> Scm_syn.bexpr -> unit

val print_declaration :
  Format.formatter -> string * Scm_syn.typ * Scm_syn.iexpr option -> unit

val print_assignement : Format.formatter -> string * Scm_syn.iexpr -> unit
val print_taction : Format.formatter -> Scm_syn.taction -> unit
val print_action : Format.formatter -> (int * Scm_syn.taction * string) option -> unit
val print_transition : Format.formatter -> Scm_syn.transition -> unit
val print_state : Format.formatter -> Scm_syn.state -> unit
val print_automaton : Format.formatter -> Scm_syn.automaton -> unit
val print_scm : Format.formatter -> Scm_syn.scm -> unit
val print_global_scm : Format.formatter -> Scm_syn.global_scm -> unit
