/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real ACCESS ;
real LOGOUT ;
real LOG ;
real SETUP ;
real CONNECT ;

automaton A0 :

initial : 0


state 1 :
to 0 : when true , 1 ! LOGOUT;
to 1 : when true , 0 ! ACCESS;

state 0 :
to 1 : when true , 1 ! CONNECT;

automaton A1 :

initial : 0


state 1 :
to 0 : when true , 2 ! LOG;
to 1 : when true , 0  ? ACCESS;

state 0 :
to 1 : when true , 0  ? SETUP;

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 0 ! SETUP;

state 0 :
to 1 : when true , 1  ? CONNECT;

state 2 :
to 0 : when true , 1  ? LOGOUT;

automaton A3 :

initial : 0


state 0 :
to 0 : when true , 2  ? LOG;
