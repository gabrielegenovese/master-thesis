/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real D ;
real A ;
real C ;
real E ;

automaton A0 :

initial : 0


state 1 :
to 1 : when true , 0  ? D;
to 2 : when true , 2 ! A;

state 0 :
to 0 : when true , 2 ! A;
to 1 : when true , 0  ? C;

state 2 :
to 2 : when true , 0  ? D;

automaton A1 :

initial : 0


state 1 :
to 1 : when true , 0 ! D;

state 0 :
to 1 : when true , 1  ? E;

automaton A2 :

initial : 0


state 0 :
to 0 : when true , 2  ? A;

automaton A3 :

initial : 0


state 1 :
to 2 : when true , 1 ! E;

state 0 :
to 1 : when true , 0 ! C;

state 2 :
