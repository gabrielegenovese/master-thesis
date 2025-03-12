
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/benchmarks/fourplayergamer.txt
---------------------------------------------------------------------*/

scm fourplayergamer :

nb_channels = 6 ;
parameters :
real busy ;
real win ;
real lose ;
real free ;
real msg ;
real sig ;
real cwin ;
real bwin ;

automaton A3 :

initial : 0


state 1 :
to 0 : when true, 3 ? free ;

state 0 :
to 1 : when true, 5 ? busy ;



automaton A2 :

initial : 0


state 1 :
to 2 : when true, 4 ? win ;
to 2 : when true, 4 ? lose ;

state 0 :
to 1 : when true, 5 ! busy ;

state 2 :
to 0 : when true, 2 ! msg ;



automaton A1 :

initial : 0


state 1 :
to 2 : when true, 4 ! lose ;

state 0 :
to 3 : when true, 0 ? cwin ;
to 1 : when true, 0 ? bwin ;

state 3 :
to 2 : when true, 4 ! win ;

state 2 :
to 0 : when true, 1 ! sig ;



automaton A0 :

initial : 0


state 1 :
to 2 : when true, 1 ? sig ;

state 0 :
to 1 : when true, 0 ! cwin ;
to 1 : when true, 0 ! bwin ;

state 3 :
to 0 : when true, 3 ! free ;

state 2 :
to 3 : when true, 2 ? msg ;


