/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real B ;
real AAA ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 1 ! AAA;

state 0 :
to 1 : when true , 1 ! AAA;

state 4 :
to 5 : when true , 1 ! AAA;

state 5 :
to 6 : when true , 1 ! AAA;

state 3 :
to 4 : when true , 1 ! AAA;

state 7 :
to 7 : when true , 0  ? B;

state 2 :
to 3 : when true , 1 ! AAA;

state 6 :
to 7 : when true , 1 ! AAA;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 0 ! B;

state 0 :
to 1 : when true , 0 ! B;

state 4 :
to 5 : when true , 0 ! B;

state 5 :
to 6 : when true , 0 ! B;

state 3 :
to 4 : when true , 0 ! B;

state 7 :
to 7 : when true , 1  ? AAA;

state 2 :
to 3 : when true , 0 ! B;

state 6 :
to 7 : when true , 0 ! B;
