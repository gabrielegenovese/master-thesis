
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/benchmarks/commit-protocol.txt
---------------------------------------------------------------------*/

scm commit_protocol :

nb_channels = 6 ;
parameters :
real ok ;
real update ;

automaton A3 :

initial : 0


state 1 :
to 0 : when true, 4 ! ok ;

state 0 :
to 1 : when true, 2 ? update ;



automaton A2 :

initial : 0


state 1 :
to 0 : when true, 3 ! ok ;

state 0 :
to 1 : when true, 1 ? update ;



automaton A1 :

initial : 0


state 1 :
to 0 : when true, 5 ? ok ;

state 0 :
to 1 : when true, 0 ! update ;



automaton A0 :

initial : 0


state 1 :
to 2 : when true, 1 ! update ;

state 0 :
to 1 : when true, 0 ? update ;

state 4 :
to 5 : when true, 4 ? ok ;

state 5 :
to 0 : when true, 5 ! ok ;

state 3 :
to 4 : when true, 3 ? ok ;

state 2 :
to 3 : when true, 2 ! update ;


