/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real MSG0 ;
real MSG1 ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 0  ? MSG1;

state 0 :
to 1 : when true , 1 ! MSG0;

state 2 :
to 1 : when true , 1 ! MSG0;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1  ? MSG0;

state 0 :
to 1 : when true , 0 ! MSG1;

state 2 :
to 1 : when true , 0 ! MSG1;
