/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real B ;
real A ;
real C ;

automaton A0 :

initial : 0


state 1 :
to 0 : when true , 0  ? B;
to 2 : when true , 1 ! C;

state 0 :
to 1 : when true , 1 ! A;

state 3 :
to 3 : when true , 0  ? B;

state 2 :
to 3 : when true , 0  ? B;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1  ? A;

state 0 :
to 1 : when true , 0 ! B;

state 3 :

state 2 :
to 1 : when true , 0 ! B;
to 3 : when true , 1  ? C;
