/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 1 ;
parameters :
real B ;
real A ;

automaton A0 :

initial : 0


state 1 :
to 0 : when true , 0 ! B;

state 0 :
to 1 : when true , 0 ! A;

automaton A1 :

initial : 0


state 1 :
to 0 : when true , 0  ? B;

state 0 :
to 0 : when true , 0  ? A;
to 1 : when true , 0  ? B;
to 0 : when true , 0  ? A;
