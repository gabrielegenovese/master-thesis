
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/benchmarks/elevator-extra.txt
---------------------------------------------------------------------*/

scm elevator_extra :

nb_channels = 5 ;
parameters :
real doorStopped ;
real tau ;
real doorClosed ;
real doorOpened ;
real close ;
real open ;
real stop ;
real reset ;
real closeDoor ;
real openDoor ;

automaton A4 :

initial : 0


state 0 :
to 0 : when true, 4 ! tau ;



automaton A3 :

initial : 0


state 0 :
to 0 : when true, 3 ? tau ;



automaton A2 :

initial : 0


state 1 :
to 2 : when true, 0 ? openDoor ;
to 1 : when true, 0 ? closeDoor ;

state 0 :
to 1 : when true, 1 ! reset ;

state 4 :
to 5 : when true, 1 ! reset ;

state 5 :
to 6 : when true, 1 ! close ;

state 3 :
to 4 : when true, 2 ? doorOpened ;

state 7 :
to 8 : when true, 1 ! stop ;

state 8 :
to 0 : when true, 2 ? doorClosed ;
to 8 : when true, 0 ? openDoor ;
to 4 : when true, 2 ? doorOpened ;
to 3 : when true, 2 ? doorStopped ;

state 2 :
to 3 : when true, 1 ! open ;

state 6 :
to 0 : when true, 2 ? doorClosed ;
to 7 : when true, 0 ? openDoor ;



automaton A1 :

initial : 0


state 1 :
to 3 : when true, 2 ! doorOpened ;

state 0 :
to 2 : when true, 1 ? close ;
to 1 : when true, 1 ? open ;
to 0 : when true, 1 ? stop ;
to 0 : when true, 1 ? reset ;

state 4 :
to 2 : when true, 4 ? tau ;
to 5 : when true, 1 ? stop ;

state 5 :
to 1 : when true, 2 ! doorStopped ;

state 3 :
to 0 : when true, 1 ? reset ;
to 3 : when true, 1 ? stop ;
to 3 : when true, 1 ? close ;
to 3 : when true, 1 ? open ;

state 2 :
to 4 : when true, 3 ! tau ;
to 3 : when true, 2 ! doorClosed ;



automaton A0 :

initial : 0


state 0 :
to 0 : when true, 0 ! closeDoor ;
to 0 : when true, 0 ! openDoor ;


