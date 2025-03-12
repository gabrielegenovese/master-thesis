/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real B ;
real W ;
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
to 5 : when true , 1 ! C;

state 5 :
to 5 : when true , 0  ? W;
to 5 : when true , 0  ? Z;

state 3 :
to 4 : when true , 1 ! A;

state 2 :
to 3 : when true , 1 ! C;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 0 ! Z;

state 0 :
to 1 : when true , 0 ! Z;

state 4 :
to 5 : when true , 0 ! Z;

state 5 :
to 5 : when true , 1  ? C;
to 5 : when true , 1  ? B;
to 5 : when true , 1  ? A;

state 3 :
to 4 : when true , 0 ! W;

state 2 :
to 3 : when true , 0 ! W;
