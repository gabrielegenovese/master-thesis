/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real REQUEST ;
real LOG ;
real RESULT ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 1 ! RESULT;

state 0 :
to 1 : when true , 0  ? REQUEST;

state 2 :
to 0 : when true , 2 ! LOG;

automaton A1 :

initial : 0


state 1 :
to 0 : when true , 1  ? RESULT;

state 0 :
to 1 : when true , 0 ! REQUEST;

automaton A2 :

initial : 0


state 0 :
to 0 : when true , 2  ? LOG;
