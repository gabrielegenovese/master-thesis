/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real B ;
real D ;
real A ;
real C ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 2 ! C;
to 0 : when true , 1 ! B;

state 0 :
to 1 : when true , 1 ! A;

state 3 :

state 2 :
to 3 : when true , 0  ? D;

automaton A1 :

initial : 0


state 1 :
to 0 : when true , 1  ? B;

state 0 :
to 1 : when true , 1  ? A;

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 2  ? C;

state 0 :
to 1 : when true , 0 ! D;

state 2 :
