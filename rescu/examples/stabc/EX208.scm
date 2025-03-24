/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real REPLY ;
real REQUEST ;

automaton A0 :

initial : 0


state 1 :
to 3 : when true ;
to 2 : when true ;

state 0 :
to 1 : when true ;

state 4 :
to 1 : when true ;

state 5 :
to 1 : when true ;

state 3 :
to 5 : when true , 0  ? REPLY;

state 2 :
to 4 : when true , 1 ! REQUEST;

automaton A1 :

initial : 0


state 1 :
to 0 : when true , 0 ! REPLY;

state 0 :
to 1 : when true , 1  ? REQUEST;
