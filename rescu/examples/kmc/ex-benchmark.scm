
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/ex-benchmark.txt
---------------------------------------------------------------------*/

scm ex_benchmark :

nb_channels = 6 ;
parameters :
real a ;

automaton A5 :

initial : 0


state 1 :
to 2 : when true, 5 ! a ;

state 0 :
to 1 : when true, 5 ! a ;

state 4 :
to 5 : when true, 4 ? a ;

state 5 :
to 6 : when true, 4 ? a ;

state 3 :
to 4 : when true, 4 ? a ;

state 2 :
to 3 : when true, 5 ! a ;

state 6 :



automaton A4 :

initial : 0


state 1 :
to 2 : when true, 4 ! a ;

state 0 :
to 1 : when true, 4 ! a ;

state 4 :
to 5 : when true, 5 ? a ;

state 5 :
to 6 : when true, 5 ? a ;

state 3 :
to 4 : when true, 5 ? a ;

state 2 :
to 3 : when true, 4 ! a ;

state 6 :



automaton A3 :

initial : 0


state 1 :
to 2 : when true, 3 ! a ;

state 0 :
to 1 : when true, 3 ! a ;

state 4 :
to 5 : when true, 2 ? a ;

state 5 :
to 6 : when true, 2 ? a ;

state 3 :
to 4 : when true, 2 ? a ;

state 2 :
to 3 : when true, 3 ! a ;

state 6 :



automaton A2 :

initial : 0


state 1 :
to 2 : when true, 2 ! a ;

state 0 :
to 1 : when true, 2 ! a ;

state 4 :
to 5 : when true, 3 ? a ;

state 5 :
to 6 : when true, 3 ? a ;

state 3 :
to 4 : when true, 3 ? a ;

state 2 :
to 3 : when true, 2 ! a ;

state 6 :



automaton A1 :

initial : 0


state 1 :
to 2 : when true, 1 ! a ;

state 0 :
to 1 : when true, 1 ! a ;

state 4 :
to 5 : when true, 0 ? a ;

state 5 :
to 6 : when true, 0 ? a ;

state 3 :
to 4 : when true, 0 ? a ;

state 2 :
to 3 : when true, 1 ! a ;

state 6 :



automaton A0 :

initial : 0


state 1 :
to 2 : when true, 0 ! a ;

state 0 :
to 1 : when true, 0 ! a ;

state 4 :
to 5 : when true, 1 ? a ;

state 5 :
to 6 : when true, 1 ? a ;

state 3 :
to 4 : when true, 1 ? a ;

state 2 :
to 3 : when true, 0 ! a ;

state 6 :


