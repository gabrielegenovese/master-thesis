
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/benchmarks/Bargain.txt
---------------------------------------------------------------------*/

scm Bargain :

nb_channels = 3 ;
parameters :
real info ;
real happy ;
real price ;
real haggle ;

automaton A2 :

initial : 0


state 1 :

state 0 :
to 1 : when true, 2 ? info ;



automaton A1 :

initial : 0


state 1 :
to 0 : when true, 1 ! price ;

state 0 :
to 2 : when true, 0 ? happy ;
to 1 : when true, 0 ? haggle ;

state 2 :



automaton A0 :

initial : 0


state 1 :
to 0 : when true, 1 ? price ;

state 0 :
to 2 : when true, 0 ! happy ;
to 1 : when true, 0 ! haggle ;

state 3 :

state 2 :
to 3 : when true, 2 ! info ;


