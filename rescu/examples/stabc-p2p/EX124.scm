/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real DDD ;
real A ;

automaton A0 :

initial : 0


state 1 :
to 0 : when true , 0  ? DDD;

state 0 :
to 1 : when true , 1 ! A;

automaton A1 :

initial : 0


state 1 :
to 0 : when true , 1  ? A;

state 0 :
to 1 : when true , 0 ! DDD;
