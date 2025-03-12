/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 1 ;
parameters :
real A ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 0 ! A;

state 0 :
to 1 : when true , 0 ! A;

state 3 :

state 2 :
to 3 : when true , 0 ! A;

automaton A1 :

initial : 0


state 1 :
to 1 : when true , 0  ? A;

state 0 :
to 1 : when true , 0  ? A;
