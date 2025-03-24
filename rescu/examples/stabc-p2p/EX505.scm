/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real A ;
real C ;
real A2 ;

automaton A0 :

initial : 0


state 1 :

state 0 :
to 2 : when true , 0 ! C;
to 1 : when true , 0 ! A;

state 2 :

automaton A1 :

initial : 0


state 1 :

state 0 :
to 1 : when true , 1  ? A2;

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 1 ! A2;

state 0 :
to 1 : when true , 0  ? A;
to 1 : when true , 0  ? C;

state 2 :
