/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real B ;
real A ;
real A3 ;
real AAA ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 0 ! A3;

state 0 :
to 1 : when true , 0 ! A;

state 4 :

state 3 :
to 4 : when true , 0 ! AAA;

state 2 :
to 3 : when true , 0 ! AAA;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1 ! B;

state 0 :
to 1 : when true , 1 ! B;

state 3 :
to 3 : when true , 0  ? A3;
to 3 : when true , 0  ? AAA;
to 3 : when true , 0  ? A;

state 2 :
to 3 : when true , 1 ! B;

automaton A2 :

initial : 0


state 0 :
to 0 : when true , 1  ? B;
