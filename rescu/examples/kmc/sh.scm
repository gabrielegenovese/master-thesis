
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/sh.txt
---------------------------------------------------------------------*/

scm sh :

nb_channels = 3 ;
parameters :
real Intersct ;
real Res ;
real IsAbove ;
real Plane ;
real SecOut ;
real BothIn ;
real SecIn ;
real Close ;
real BothOut ;

automaton A2 :

initial : 0


state 1 :
to 7 : when true, 1 ? Close ;
to 2 : when true, 1 ? IsAbove ;

state 0 :
to 1 : when true, 1 ? Plane ;

state 4 :
to 5 : when true, 2 ! Res ;

state 5 :
to 1 : when true, 1 ? BothIn ;
to 6 : when true, 1 ? Intersct ;
to 1 : when true, 1 ? BothOut ;

state 3 :
to 4 : when true, 1 ? IsAbove ;

state 7 :

state 2 :
to 3 : when true, 2 ! Res ;

state 6 :
to 1 : when true, 2 ! Res ;



automaton A1 :

initial : 0


state 1 :
to 10 : when true, 1 ! Close ;
to 2 : when true, 1 ! IsAbove ;

state 10 :
to 11 : when true, 0 ! Close ;

state 0 :
to 1 : when true, 1 ! Plane ;

state 11 :

state 9 :
to 1 : when true, 0 ! BothOut ;

state 4 :
to 5 : when true, 2 ? Res ;

state 5 :
to 9 : when true, 1 ! BothOut ;
to 8 : when true, 1 ! BothIn ;
to 6 : when true, 1 ! Intersct ;

state 3 :
to 4 : when true, 1 ! IsAbove ;

state 7 :
to 1 : when true, 0 ! SecOut ;
to 1 : when true, 0 ! SecIn ;

state 8 :
to 1 : when true, 0 ! BothIn ;

state 2 :
to 3 : when true, 2 ? Res ;

state 6 :
to 7 : when true, 2 ? Res ;



automaton A0 :

initial : 0


state 1 :

state 0 :
to 0 : when true, 0 ? SecOut ;
to 0 : when true, 0 ? BothIn ;
to 0 : when true, 0 ? SecIn ;
to 1 : when true, 0 ? Close ;
to 0 : when true, 0 ? BothOut ;


