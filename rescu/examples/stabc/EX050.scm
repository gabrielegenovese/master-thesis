/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 4 ;
parameters :
real GGG ;
real B ;
real FFF ;
real A ;
real C ;

automaton A0 :

initial : 0


state 1 :
to 0 : when true , 0  ? B;

state 0 :
to 2 : when true , 0  ? B;
to 1 : when true , 1 ! A;

state 4 :
to 0 : when true , 0  ? B;

state 5 :
to 3 : when true , 0  ? GGG;

state 3 :
to 5 : when true , 3 ! FFF;
to 4 : when true , 1 ! A;

state 2 :
to 3 : when true , 1 ! A;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1  ? A;

state 0 :
to 3 : when true , 2 ! C;
to 1 : when true , 0 ! B;

state 4 :
to 5 : when true , 1  ? A;

state 5 :
to 6 : when true , 2 ! C;

state 3 :
to 4 : when true , 0 ! B;

state 7 :
to 0 : when true , 0 ! B;

state 2 :
to 0 : when true , 2 ! C;

state 6 :
to 7 : when true , 1  ? A;

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 2  ? C;

state 0 :
to 1 : when true , 2  ? C;

state 3 :
to 0 : when true , 2  ? C;

state 2 :
to 3 : when true , 2  ? C;

automaton A3 :

initial : 0


state 1 :
to 0 : when true , 0 ! GGG;

state 0 :
to 1 : when true , 3  ? FFF;
