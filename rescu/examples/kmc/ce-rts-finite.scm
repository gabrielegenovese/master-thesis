
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/ce-rts-finite.txt
---------------------------------------------------------------------*/

scm ce_rts_finite :

nb_channels = 3 ;
parameters :
real doorClosed ;
real doorOpened ;
real close ;
real open ;
real stop ;
real reset ;
real openDoor ;

automaton A2 :

initial : 0


state 1 :
to 2 : when true, 0 ? openDoor ;

state 0 :
to 1 : when true, 1 ! reset ;

state 4 :
to 5 : when true, 1 ! reset ;

state 5 :
to 6 : when true, 1 ! close ;

state 3 :
to 4 : when true, 2 ? doorOpened ;

state 7 :
to 0 : when true, 2 ? doorClosed ;

state 2 :
to 3 : when true, 1 ! open ;

state 6 :
to 7 : when true, 1 ! stop ;



automaton A1 :

initial : 0


state 1 :
to 3 : when true, 2 ! doorOpened ;

state 0 :
to 2 : when true, 1 ? close ;
to 1 : when true, 1 ? open ;
to 0 : when true, 1 ? stop ;
to 0 : when true, 1 ? reset ;

state 3 :
to 0 : when true, 1 ? reset ;
to 3 : when true, 1 ? stop ;
to 3 : when true, 1 ? close ;
to 3 : when true, 1 ? open ;

state 2 :
to 3 : when true, 2 ! doorClosed ;



automaton A0 :

initial : 0


state 0 :
to 0 : when true, 0 ! openDoor ;


