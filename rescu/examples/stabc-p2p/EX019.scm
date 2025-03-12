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

state 10 :
to 0 : when true , 0  ? B;

state 0 :
to 1 : when true , 1 ! A;

state 9 :
to 10 : when true , 1 ! A;

state 4 :
to 5 : when true , 1 ! A;

state 5 :
to 6 : when true , 1 ! A;

state 3 :
to 4 : when true , 1 ! A;

state 7 :
to 8 : when true , 1 ! A;

state 8 :

state 2 :
to 3 : when true , 1 ! A;

state 6 :
to 7 : when true , 1 ! A;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 0 ! B;
to 1 : when true , 1  ? A;

state 0 :
to 1 : when true , 0 ! B;

state 2 :
to 1 : when true , 1  ? A;
