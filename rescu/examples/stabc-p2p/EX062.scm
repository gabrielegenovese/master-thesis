/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real B ;
real D ;
real A ;
real C ;
real Z ;

automaton A0 :

initial : 0


state 1 :
to 0 : when true , 0 ! C;
to 0 : when true , 0 ! D;
to 0 : when true , 0 ! B;

state 0 :
to 2 : when true , 1  ? A;

state 2 :
to 1 : when true , 1  ? Z;

automaton A1 :

initial : 0


state 1 :
to 4 : when true , 1 ! A;

state 0 :
to 3 : when true , 0  ? B;
to 2 : when true , 0  ? D;
to 1 : when true , 0  ? C;

state 4 :
to 0 : when true , 1 ! Z;

state 3 :
to 4 : when true , 1 ! A;

state 2 :
to 4 : when true , 1 ! A;
