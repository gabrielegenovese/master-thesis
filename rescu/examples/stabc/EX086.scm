/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real B ;
real W ;
real D ;
real A ;
real Z ;
real C ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 1 ! B;

state 0 :
to 1 : when true , 1 ! A;

state 4 :
to 2 : when true , 0  ? W;

state 3 :
to 4 : when true , 2 ! D;

state 2 :
to 0 : when true , 0  ? Z;
to 3 : when true , 2 ! C;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1  ? A;

state 0 :
to 1 : when true , 0 ! Z;

state 2 :
to 0 : when true , 1  ? B;

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 2  ? C;

state 0 :
to 1 : when true , 0 ! W;

state 2 :
to 0 : when true , 2  ? D;
