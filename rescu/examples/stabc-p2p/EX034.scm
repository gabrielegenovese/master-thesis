/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 4 ;
parameters :
real B ;
real A ;
real F ;
real E ;
real C ;

automaton A0 :

initial : 0


state 1 :
to 3 : when true , 3 ! F;
to 2 : when true , 1 ! B;

state 0 :
to 1 : when true , 1 ! A;

state 4 :
to 0 : when true , 1 ! B;

state 3 :
to 4 : when true , 0  ? E;

state 2 :
to 0 : when true , 0  ? E;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 2 ! C;

state 0 :
to 1 : when true , 2 ! C;

state 4 :
to 5 : when true , 2 ! C;

state 5 :
to 6 : when true , 2 ! C;

state 3 :
to 4 : when true , 2 ! C;

state 2 :
to 3 : when true , 2 ! C;

state 6 :

automaton A2 :

initial : 0


state 1 :
to 3 : when true , 2  ? C;
to 2 : when true , 1  ? A;

state 0 :
to 1 : when true , 0 ! E;

state 4 :
to 0 : when true , 2  ? C;

state 5 :
to 0 : when true , 1  ? B;

state 3 :
to 5 : when true , 1  ? A;

state 2 :
to 5 : when true , 2  ? C;
to 4 : when true , 1  ? B;

automaton A3 :

initial : 0


state 0 :
to 0 : when true , 3  ? F;
