/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 4 ;
parameters :
real OFFER ;
real FINAL ;
real COUNTER ;
real RESULT ;
real ITEM ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 1  ? FINAL;

state 0 :
to 1 : when true , 0 ! ITEM;

state 2 :

automaton A1 :

initial : 0


state 1 :
to 5 : when true , 2 ! OFFER;
to 3 : when true , 1 ! FINAL;
to 2 : when true , 1 ! FINAL;

state 0 :
to 1 : when true , 0  ? ITEM;

state 4 :

state 5 :
to 1 : when true , 3  ? COUNTER;

state 3 :
to 4 : when true , 2 ! RESULT;

state 2 :
to 4 : when true , 2 ! RESULT;

automaton A2 :

initial : 0


state 1 :
to 0 : when true , 3 ! COUNTER;

state 0 :
to 2 : when true , 2  ? RESULT;
to 1 : when true , 2  ? OFFER;

state 2 :
