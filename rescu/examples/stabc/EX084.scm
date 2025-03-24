/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real B ;
real D ;
real EE ;
real A ;
real C ;

automaton A0 :

initial : 0


state 1 :
to 3 : when true , 0  ? C;

state 0 :
to 2 : when true , 1 ! B;
to 1 : when true , 1 ! A;

state 4 :
to 0 : when true , 0  ? EE;

state 3 :
to 4 : when true , 0  ? D;

state 2 :
to 3 : when true , 0  ? C;

automaton A1 :

initial : 0


state 1 :
to 0 : when true , 1  ? B;
to 0 : when true , 1  ? A;

state 0 :
to 2 : when true , 0 ! C;

state 3 :
to 1 : when true , 0 ! EE;

state 2 :
to 3 : when true , 0 ! D;
