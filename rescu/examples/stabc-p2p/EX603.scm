/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real STORE ;
real LOG ;
real ACK ;

automaton A0 :

initial : 0


state 0 :
to 0 : when true , 0 ! STORE;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1 ! LOG;

state 0 :
to 1 : when true , 0  ? STORE;

state 2 :
to 0 : when true , 2  ? ACK;

automaton A2 :

initial : 0


state 1 :
to 0 : when true , 2 ! ACK;

state 0 :
to 1 : when true , 1  ? LOG;
