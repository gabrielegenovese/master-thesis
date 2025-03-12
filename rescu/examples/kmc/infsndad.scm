
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/infsndad.txt
---------------------------------------------------------------------*/

scm infsndad :

nb_channels = 5 ;
parameters :
real y ;
real d ;
real c ;
real b ;
real x ;
real a ;

automaton A3 :

initial : 0


state 0 :
to 0 : when true, 4 ! y ;



automaton A2 :

initial : 0


state 0 :
to 0 : when true, 1 ! x ;



automaton A1 :

initial : 0


state 1 :
to 0 : when true, 3 ? y ;

state 0 :
to 2 : when true, 2 ! d ;
to 1 : when true, 2 ! c ;

state 3 :

state 2 :
to 3 : when true, 0 ? b ;
to 2 : when true, 0 ? a ;



automaton A0 :

initial : 0


state 1 :
to 0 : when true, 1 ? x ;

state 0 :
to 2 : when true, 0 ! b ;
to 1 : when true, 0 ! a ;

state 3 :

state 2 :
to 3 : when true, 2 ? d ;
to 2 : when true, 2 ? c ;


