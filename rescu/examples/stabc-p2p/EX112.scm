/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 4 ;
parameters :
real B ;
real D ;
real A ;
real C ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 2  ? B;

state 0 :
to 1 : when true , 0  ? A;

state 2 :
to 0 : when true , 3 ! D;
to 1 : when true , 1 ! C;

automaton A1 :

initial : 0


state 1 :
to 0 : when true , 1  ? C;

state 0 :
to 1 : when true , 0 ! A;

automaton A2 :

initial : 0


state 1 :
to 0 : when true , 3  ? D;

state 0 :
to 1 : when true , 2 ! B;
