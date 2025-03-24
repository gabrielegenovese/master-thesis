/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real B ;
real A ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 1 ! A;

state 0 :
to 1 : when true , 1 ! A;

state 2 :
to 2 : when true , 0  ? B;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 0 ! B;

state 0 :
to 1 : when true , 0 ! B;

state 2 :
to 2 : when true , 1  ? A;
