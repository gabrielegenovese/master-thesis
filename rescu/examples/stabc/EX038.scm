/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real B ;
real A ;
real E ;

automaton A0 :

initial : 0


state 1 :

state 0 :
to 1 : when true , 1 ! A;

automaton A1 :

initial : 0


state 1 :

state 0 :
to 2 : when true , 0  ? E;
to 1 : when true , 1 ! B;

state 2 :

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 0 ! E;

state 0 :
to 1 : when true , 1  ? A;

state 3 :

state 2 :
to 3 : when true , 1  ? B;
