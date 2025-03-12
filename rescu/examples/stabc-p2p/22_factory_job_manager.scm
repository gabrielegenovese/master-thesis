/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 6 ;
parameters :
real COMPLETEDOVEN ;
real START ;
real STARTROBOT ;
real COMPLETEDROBOT ;
real STARTOVEN ;
real COMPLETED ;

automaton A0 :

initial : 0


state 1 :
to 3 : when true , 4 ! STARTROBOT;
to 2 : when true , 2 ! STARTOVEN;

state 10 :

state 0 :
to 1 : when true , 0  ? START;

state 9 :
to 10 : when true , 1 ! COMPLETED;

state 4 :
to 7 : when true , 4 ! STARTROBOT;

state 5 :
to 8 : when true , 5  ? COMPLETEDROBOT;
to 7 : when true , 3  ? COMPLETEDOVEN;

state 3 :
to 5 : when true , 2 ! STARTOVEN;
to 6 : when true , 5  ? COMPLETEDROBOT;

state 7 :
to 9 : when true , 5  ? COMPLETEDROBOT;

state 8 :
to 9 : when true , 3  ? COMPLETEDOVEN;

state 2 :
to 5 : when true , 4 ! STARTROBOT;
to 4 : when true , 3  ? COMPLETEDOVEN;

state 6 :
to 8 : when true , 2 ! STARTOVEN;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1  ? COMPLETED;

state 0 :
to 1 : when true , 0 ! START;

state 2 :

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 3 ! COMPLETEDOVEN;

state 0 :
to 1 : when true , 2  ? STARTOVEN;

state 2 :

automaton A3 :

initial : 0


state 1 :
to 2 : when true , 5 ! COMPLETEDROBOT;

state 0 :
to 1 : when true , 4  ? STARTROBOT;

state 2 :
