/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 4 ;
parameters :
real RAW ;
real COMPLETE ;
real DATA ;
real START ;
real END ;
real ACK ;

automaton A0 :

initial : 0


state 1 :
to 1 : when true , 0 ! RAW;
to 2 : when true , 0 ! END;

state 0 :
to 1 : when true , 0 ! RAW;

state 3 :
to 0 : when true , 3  ? ACK;

state 2 :
to 3 : when true , 1 ! START;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 2 ! DATA;

state 0 :
to 1 : when true , 0  ? RAW;

state 4 :
to 0 : when true , 2 ! COMPLETE;

state 3 :
to 2 : when true , 2 ! DATA;

state 2 :
to 4 : when true , 0  ? END;
to 3 : when true , 0  ? RAW;

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
