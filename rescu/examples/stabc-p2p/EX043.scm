/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 5 ;
parameters :
real B ;
real D ;
real A ;
real C ;
real E ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 1  ? B;

state 0 :
to 1 : when true , 0 ! A;

state 2 :
to 0 : when true , 3 ! D;

automaton A1 :

initial : 0


state 1 :
to 0 : when true , 0  ? A;

state 0 :
to 1 : when true , 2 ! C;

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 2  ? C;

state 0 :
to 1 : when true , 1 ! B;

state 2 :
to 0 : when true , 4 ! E;

automaton A3 :

initial : 0


state 0 :
to 0 : when true , 4  ? E;
to 0 : when true , 3  ? D;
