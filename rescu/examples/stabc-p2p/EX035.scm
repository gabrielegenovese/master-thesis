/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 5 ;
parameters :
real B ;
real MMM ;
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
to 0 : when true , 4  ? MMM;

state 0 :
to 1 : when true , 2 ! C;

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


state 1 :
to 0 : when true , 4 ! MMM;

state 0 :
to 1 : when true , 3  ? F;
