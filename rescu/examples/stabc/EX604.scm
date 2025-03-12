/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real STORE ;
real LOG ;

automaton A0 :

initial : 0


state 0 :
to 0 : when true , 0 ! STORE;

automaton A1 :

initial : 0


state 1 :
to 0 : when true , 1 ! LOG;

state 0 :
to 1 : when true , 0  ? STORE;

automaton A2 :

initial : 0


state 0 :
to 0 : when true , 1  ? LOG;
