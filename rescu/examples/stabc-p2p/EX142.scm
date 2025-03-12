/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real ARG ;
real QUERY ;
real END ;
real ACK ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 0 ! ARG;

state 0 :
to 3 : when true , 0 ! END;
to 1 : when true , 0 ! QUERY;

state 3 :

state 2 :
to 0 : when true , 1  ? ACK;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1 ! ACK;

state 0 :
to 3 : when true , 0  ? END;
to 1 : when true , 0  ? QUERY;

state 3 :

state 2 :
to 0 : when true , 0  ? ARG;
