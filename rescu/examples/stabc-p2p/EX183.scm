/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real REQUEST ;
real RESULT ;
real ACK ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 1 ! RESULT;

state 0 :
to 1 : when true , 0  ? REQUEST;

state 2 :
to 0 : when true , 0  ? ACK;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1  ? RESULT;

state 0 :
to 1 : when true , 0 ! REQUEST;

state 2 :
to 0 : when true , 0 ! ACK;
