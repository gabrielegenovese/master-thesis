
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/concur18ce-fsm.txt
---------------------------------------------------------------------*/

scm concur18ce_fsm :

nb_channels = 5 ;
parameters :
real c ;
real b ;
real a ;

automaton A4 :

initial : 0


state 1 :

state 0 :
to 1 : when true, 4 ? a ;



automaton A3 :

initial : 0


state 1 :

state 0 :
to 1 : when true, 2 ? a ;



automaton A2 :

initial : 0


state 1 :
to 2 : when true, 3 ! a ;

state 0 :
to 1 : when true, 1 ? a ;

state 2 :



automaton A1 :

initial : 0


state 1 :
to 2 : when true, 1 ! a ;

state 0 :
to 4 : when true, 0 ? b ;
to 1 : when true, 0 ? a ;

state 4 :
to 5 : when true, 1 ! a ;

state 5 :
to 2 : when true, 0 ? c ;

state 3 :

state 2 :
to 3 : when true, 2 ! a ;



automaton A0 :

initial : 0


state 1 :

state 0 :
to 2 : when true, 0 ! b ;
to 1 : when true, 0 ! a ;

state 2 :
to 1 : when true, 0 ! c ;


