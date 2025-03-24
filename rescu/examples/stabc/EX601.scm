/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real ALIVE ;
real SENDNEWS ;
real IDENT ;
real STOP ;

automaton A0 :

initial : 0


state 1 :
to 3 : when true , 0  ? IDENT;

state 0 :
to 1 : when true , 1 ! SENDNEWS;

state 3 :
to 2 : when true , 0  ? ALIVE;

state 2 :
to 3 : when true , 1 ! SENDNEWS;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 0 ! ALIVE;

state 0 :
to 1 : when true , 0 ! IDENT;

state 4 :
to 4 : when true , 1  ? STOP;

state 3 :
to 2 : when true , 0 ! ALIVE;

state 2 :
to 3 : when true , 1  ? SENDNEWS;
