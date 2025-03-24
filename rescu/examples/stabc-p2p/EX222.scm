/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real B ;
real D ;
real A ;
real F ;
real C ;
real E ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 0  ? B;

state 0 :
to 1 : when true , 1 ! A;

state 4 :
to 5 : when true , 1 ! E;

state 5 :
to 6 : when true , 0  ? F;

state 3 :
to 4 : when true , 0  ? D;

state 2 :
to 3 : when true , 1 ! C;

state 6 :

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1  ? A;

state 0 :
to 1 : when true , 0 ! B;

state 4 :
to 5 : when true , 1  ? E;

state 5 :
to 6 : when true , 0 ! F;

state 3 :
to 4 : when true , 0 ! D;

state 2 :
to 3 : when true , 1  ? C;

state 6 :
