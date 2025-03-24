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
to 2 : when true , 1 ! A;

state 0 :
to 1 : when true , 1 ! A;

state 4 :
to 5 : when true , 1 ! A;

state 5 :
to 6 : when true , 2 ! C;

state 3 :
to 4 : when true , 1 ! A;

state 7 :
to 8 : when true , 1 ! A;

state 8 :
to 0 : when true , 0  ? B;

state 2 :
to 3 : when true , 0  ? B;

state 6 :
to 7 : when true , 2 ! C;

automaton A1 :

initial : 0


state 1 :
to 0 : when true , 1  ? A;

state 0 :
to 0 : when true , 1  ? A;
to 1 : when true , 0 ! B;

automaton A2 :

initial : 0


state 1 :
to 1 : when true , 2  ? C;

state 0 :
to 1 : when true , 2  ? C;
