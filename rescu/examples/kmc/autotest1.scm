
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/autotest1.txt
---------------------------------------------------------------------*/

scm autotest1 :

nb_channels = 4 ;
parameters :
real b ;
real a ;

automaton A3 :

initial : 0


state 1 :
to 2 : when true, 3 ! b ;
to 2 : when true, 3 ! a ;

state 0 :
to 1 : when true, 3 ! b ;
to 1 : when true, 3 ! a ;

state 3 :
to 0 : when true, 2 ? b ;
to 0 : when true, 2 ? a ;

state 2 :
to 3 : when true, 2 ? b ;
to 3 : when true, 2 ? a ;



automaton A2 :

initial : 0


state 1 :
to 2 : when true, 2 ! b ;
to 2 : when true, 2 ! a ;

state 0 :
to 1 : when true, 2 ! b ;
to 1 : when true, 2 ! a ;

state 3 :
to 0 : when true, 3 ? b ;
to 0 : when true, 3 ? a ;

state 2 :
to 3 : when true, 3 ? b ;
to 3 : when true, 3 ? a ;



automaton A1 :

initial : 0


state 1 :
to 2 : when true, 1 ! b ;
to 2 : when true, 1 ! a ;

state 0 :
to 1 : when true, 1 ! b ;
to 1 : when true, 1 ! a ;

state 3 :
to 0 : when true, 0 ? b ;
to 0 : when true, 0 ? a ;

state 2 :
to 3 : when true, 0 ? b ;
to 3 : when true, 0 ? a ;



automaton A0 :

initial : 0


state 1 :
to 2 : when true, 0 ! b ;
to 2 : when true, 0 ! a ;

state 0 :
to 1 : when true, 0 ! b ;
to 1 : when true, 0 ! a ;

state 3 :
to 0 : when true, 1 ? b ;
to 0 : when true, 1 ? a ;

state 2 :
to 3 : when true, 1 ? b ;
to 3 : when true, 1 ? a ;


