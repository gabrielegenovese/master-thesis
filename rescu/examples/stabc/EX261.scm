/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real B ;
real A ;

automaton A0 :

initial : 0


state 1 :
to 0 : when true , 0  ? B;
to 1 : when true , 0  ? B;

state 0 :
to 1 : when true , 1 ! A;

automaton A1 :

initial : 0


state 1 :
to 0 : when true , 0 ! B;

state 0 :
to 0 : when true , 1  ? A;
to 1 : when true , 1  ? A;
