/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real REQUEST ;
real IDENTIFIER ;
real LOG ;
real RESULT ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 1 ! REQUEST;

state 0 :
to 1 : when true , 1 ! IDENTIFIER;

state 3 :
to 0 : when true , 2 ! LOG;

state 2 :
to 3 : when true , 0  ? RESULT;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1  ? IDENTIFIER;

state 0 :
to 1 : when true , 1  ? REQUEST;

state 2 :
to 0 : when true , 0 ! RESULT;

automaton A2 :

initial : 0


state 0 :
to 0 : when true , 2  ? LOG;
