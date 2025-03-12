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
to 2 : when true , 1 ! F;

state 0 :
to 1 : when true , 1 ! E;

state 2 :
to 2 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 2 : when true , 0  ? B;
to 2 : when true , 0  ? A;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 0 ! C;
to 2 : when true , 0 ! B;

state 0 :
to 1 : when true , 0 ! A;

state 3 :
to 0 : when true , 1  ? F;
to 0 : when true , 1  ? E;

state 2 :
to 3 : when true , 0 ! D;
