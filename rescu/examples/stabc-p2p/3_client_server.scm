/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real DONE ;
real REQ ;
real ALARM ;
real ACK ;

automaton A0 :

initial : 0


state 1 :
to 0 : when true , 1  ? DONE;
to 1 : when true , 1  ? ALARM;

state 0 :
to 2 : when true , 0 ! ACK;
to 1 : when true , 0 ! REQ;

state 2 :
to 0 : when true , 1  ? ALARM;

automaton A1 :

initial : 0


state 1 :
to 0 : when true , 1 ! DONE;

state 0 :
to 2 : when true , 0  ? ACK;
to 1 : when true , 0  ? REQ;

state 2 :
to 2 : when true , 0  ? REQ;
to 0 : when true , 1 ! ALARM;
