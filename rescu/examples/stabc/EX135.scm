/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real REQUEST ;
real IDENTIFIER ;
real RESULT ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 1 ! REQUEST;

state 0 :
to 1 : when true , 1 ! IDENTIFIER;

state 2 :
to 0 : when true , 0  ? RESULT;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1  ? IDENTIFIER;

state 0 :
to 1 : when true , 1  ? REQUEST;

state 2 :
to 0 : when true , 0 ! RESULT;
