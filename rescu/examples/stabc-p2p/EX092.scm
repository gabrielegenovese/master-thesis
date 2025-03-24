/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real B ;
real A ;
real C ;

automaton A0 :

initial : 0


state 1 :
to 0 : when true , 0  ? C;

state 0 :
to 1 : when true , 1 ! B;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 2 ! A;

state 0 :
to 1 : when true , 0 ! C;

state 2 :
to 0 : when true , 1  ? B;

automaton A2 :

initial : 0


state 0 :
to 0 : when true , 2  ? A;
