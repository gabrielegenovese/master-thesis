/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real A ;
real A2 ;
real C ;

automaton A0 :

initial : 0


state 1 :

state 0 :
to 2 : when true , 1 ! C;
to 1 : when true , 1 ! A;

state 2 :

automaton A1 :

initial : 0


state 1 :

state 0 :
to 1 : when true , 0  ? A2;

automaton A2 :

initial : 0


state 1 :

state 0 :
to 2 : when true , 0 ! A2;
to 1 : when true , 1  ? A;
to 1 : when true , 1  ? C;

state 3 :

state 2 :
to 3 : when true , 1  ? C;
to 3 : when true , 1  ? A;
