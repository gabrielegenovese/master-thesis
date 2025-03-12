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

state 0 :
to 1 : when true , 0 ! A;

automaton A1 :

initial : 0


state 1 :

state 0 :
to 1 : when true , 1 ! B;

automaton A2 :

initial : 0


state 1 :

state 0 :
to 1 : when true , 2 ! C;

automaton A3 :

initial : 0


state 1 :

state 0 :
to 1 : when true , 3 ! D;

automaton A4 :

initial : 0


state 0 :
to 0 : when true , 3  ? D;
to 0 : when true , 2  ? C;
to 0 : when true , 1  ? B;
to 0 : when true , 0  ? A;
