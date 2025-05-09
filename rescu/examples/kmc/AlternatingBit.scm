
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/benchmarks/AlternatingBit.txt
---------------------------------------------------------------------*/

scm AlternatingBit :

nb_channels = 2 ;
parameters :
real d1 ;
real a0 ;
real a1 ;
real d0 ;

automaton A1 :

initial : 0


state 1 :

state 0 :
to 2 : when true, 0 ? d0 ;
to 1 : when true, 0 ? d1 ;

state 4 :
to 3 : when true, 1 ! a0 ;

state 5 :
to 0 : when true, 1 ! a1 ;

state 3 :
to 5 : when true, 0 ? d1 ;
to 4 : when true, 0 ? d0 ;

state 2 :
to 3 : when true, 1 ! a0 ;



automaton A0 :

initial : 0


state 1 :
to 3 : when true, 1 ? a0 ;
to 2 : when true, 1 ? a1 ;

state 0 :
to 1 : when true, 0 ! d0 ;

state 5 :
to 4 : when true, 0 ! d1 ;

state 4 :
to 0 : when true, 1 ? a1 ;
to 5 : when true, 1 ? a0 ;

state 3 :
to 4 : when true, 0 ! d1 ;

state 2 :
to 1 : when true, 0 ! d0 ;


