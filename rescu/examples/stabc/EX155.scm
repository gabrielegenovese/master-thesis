/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real COMPLETE ;
real ENDOFDATA ;
real DATA ;
real START ;
real RAWDATA ;
real ACK ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 1 ! RAWDATA;

state 0 :
to 1 : when true , 1 ! RAWDATA;

state 4 :
to 0 : when true , 0  ? ACK;

state 3 :
to 4 : when true , 2 ! START;

state 2 :
to 3 : when true , 1 ! ENDOFDATA;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 2 ! DATA;

state 0 :
to 1 : when true , 1  ? RAWDATA;

state 4 :
to 2 : when true , 2 ! DATA;

state 3 :
to 0 : when true , 2 ! COMPLETE;

state 2 :
to 4 : when true , 1  ? RAWDATA;
to 3 : when true , 1  ? ENDOFDATA;

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 2  ? DATA;

state 0 :
to 1 : when true , 2  ? START;

state 3 :
to 0 : when true , 0 ! ACK;

state 2 :
to 3 : when true , 2  ? COMPLETE;
to 2 : when true , 2  ? DATA;
