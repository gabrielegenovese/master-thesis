/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real BBB ;
real DDD ;
real AAA ;
real CCC ;

automaton A0 :

initial : 0


state 1 :
to 0 : when true , 0 ! BBB;

state 0 :
to 1 : when true , 0 ! AAA;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 0  ? DDD;

state 0 :
to 1 : when true , 1 ! CCC;

state 3 :
to 2 : when true , 0  ? BBB;

state 2 :
to 3 : when true , 0  ? AAA;

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 1  ? CCC;

state 0 :
to 1 : when true , 0 ! DDD;

state 2 :
