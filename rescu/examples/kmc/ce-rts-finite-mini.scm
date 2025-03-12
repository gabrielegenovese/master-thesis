
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/ce-rts-finite-mini.txt
---------------------------------------------------------------------*/

scm ce_rts_finite_mini :

nb_channels = 3 ;
parameters :
real d ;
real b ;
real c ;
real a ;

automaton A2 :

initial : 0


state 1 :
to 2 : when true, 1 ! c ;

state 0 :
to 1 : when true, 0 ? a ;

state 3 :
to 0 : when true, 2 ? b ;

state 2 :
to 3 : when true, 1 ! d ;



automaton A1 :

initial : 0


state 1 :
to 2 : when true, 2 ! b ;

state 0 :
to 1 : when true, 1 ? c ;

state 2 :
to 0 : when true, 1 ? d ;



automaton A0 :

initial : 0


state 0 :
to 0 : when true, 0 ! a ;


