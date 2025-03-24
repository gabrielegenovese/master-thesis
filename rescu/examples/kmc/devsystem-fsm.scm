
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/benchmarks/devsystem-fsm.txt
---------------------------------------------------------------------*/

scm devsystem_fsm :

nb_channels = 7 ;
parameters :
real revision ;
real commit ;
real revert ;
real discard ;
real stop ;
real tagRelease ;
real accept ;
real continue ;
real tagRC ;
real iterate ;
real evaluate ;
real releaseCandidate ;

automaton A3 :

initial : 0


state 1 :
to 0 : when true, 2 ! iterate ;
to 2 : when true, 2 ! accept ;

state 0 :
to 1 : when true, 1 ? evaluate ;

state 2 :



automaton A2 :

initial : 0


state 1 :
to 2 : when true, 6 ! revision ;

state 0 :
to 1 : when true, 5 ? commit ;

state 3 :

state 2 :
to 3 : when true, 3 ? tagRelease ;
to 0 : when true, 3 ? tagRC ;



automaton A1 :

initial : 0


state 1 :
to 2 : when true, 6 ? revision ;

state 0 :
to 1 : when true, 5 ! commit ;

state 4 :

state 3 :
to 4 : when true, 4 ? stop ;
to 0 : when true, 4 ? continue ;

state 2 :
to 3 : when true, 0 ! releaseCandidate ;



automaton A0 :

initial : 0


state 1 :
to 2 : when true, 1 ! evaluate ;

state 0 :
to 1 : when true, 0 ? releaseCandidate ;

state 9 :
to 0 : when true, 4 ! continue ;

state 4 :
to 0 : when true, 4 ! continue ;

state 5 :
to 6 : when true, 3 ! tagRelease ;

state 3 :
to 4 : when true, 3 ! tagRC ;

state 7 :

state 8 :
to 9 : when true, 3 ! revert ;

state 6 :
to 7 : when true, 4 ! stop ;

state 2 :
to 8 : when true, 2 ? discard ;
to 5 : when true, 2 ? accept ;
to 3 : when true, 2 ? iterate ;


