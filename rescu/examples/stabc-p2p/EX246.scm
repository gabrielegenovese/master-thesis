/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 4 ;
parameters :
real D ;
real A ;
real E ;
real C ;

automaton A0 :

initial : 0


state 1 :
to 1 : when true , 0  ? D;
to 2 : when true , 1 ! A;

state 0 :
to 0 : when true , 1 ! A;
to 1 : when true , 3  ? C;

state 2 :
to 2 : when true , 0  ? D;
to 1 : when true , 1 ! A;

automaton A1 :

initial : 0


state 1 :
to 1 : when true , 0 ! D;

state 0 :
to 1 : when true , 2  ? E;

automaton A2 :

initial : 0


state 0 :
to 0 : when true , 1  ? A;

automaton A3 :

initial : 0


state 1 :
to 2 : when true , 3 ! C;

state 0 :
to 1 : when true , 2 ! E;

state 2 :
