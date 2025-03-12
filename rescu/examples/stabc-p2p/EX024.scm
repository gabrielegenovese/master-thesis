/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real B ;
real D ;
real A ;
real E ;
real C ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 0  ? B;

state 0 :
to 0 : when true , 0  ? B;
to 1 : when true , 1 ! A;

state 3 :
to 3 : when true , 0  ? E;
to 0 : when true , 1 ! D;

state 2 :
to 3 : when true , 1 ! C;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1  ? A;

state 0 :
to 0 : when true , 1  ? A;
to 1 : when true , 0 ! B;

state 4 :
to 5 : when true , 1  ? C;

state 5 :
to 0 : when true , 1  ? D;

state 3 :
to 4 : when true , 0 ! E;

state 2 :
to 3 : when true , 0 ! B;
