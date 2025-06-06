/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 4 ;
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
to 2 : when true , 0 ! ENDOFDATA;
to 1 : when true , 0 ! RAWDATA;

state 0 :
to 1 : when true , 0 ! RAWDATA;

state 3 :
to 0 : when true , 3  ? ACK;

state 2 :
to 3 : when true , 1 ! START;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 2 ! DATA;

state 0 :
to 1 : when true , 0  ? RAWDATA;

state 4 :
to 2 : when true , 2 ! DATA;

state 3 :
to 0 : when true , 2 ! COMPLETE;

state 2 :
to 4 : when true , 0  ? RAWDATA;
to 3 : when true , 0  ? ENDOFDATA;

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 2  ? DATA;

state 0 :
to 1 : when true , 1  ? START;

state 3 :
to 0 : when true , 3 ! ACK;

state 2 :
to 3 : when true , 2  ? COMPLETE;
to 2 : when true , 2  ? DATA;
