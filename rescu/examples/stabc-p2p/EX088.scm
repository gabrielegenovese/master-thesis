/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 1 ;
parameters :
real B ;
real D ;
real A ;
real C ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 0 ! B;

state 0 :
to 1 : when true , 0 ! A;

state 4 :
to 5 : when true , 0 ! D;

state 5 :
to 6 : when true , 0 ! A;

state 3 :
to 4 : when true , 0 ! D;

state 7 :
to 8 : when true , 0 ! D;

state 8 :

state 2 :
to 3 : when true , 0 ! C;

state 6 :
to 7 : when true , 0 ! C;

automaton A1 :

initial : 0


state 0 :
to 0 : when true , 0  ? D;
to 0 : when true , 0  ? C;
to 0 : when true , 0  ? A;
to 0 : when true , 0  ? B;
