/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 7 ;
parameters :
real GGG ;
real B ;
real D ;
real MM ;
real FFF ;
real A ;
real C ;
real E ;

automaton A0 :

initial : 0


state 15 :
to 0 : when true , 1 ! A;

state 1 :
to 2 : when true , 1 ! A;

state 10 :
to 11 : when true , 0  ? B;

state 11 :
to 12 : when true , 1 ! A;

state 0 :
to 1 : when true , 1 ! A;

state 9 :
to 10 : when true , 1 ! A;

state 4 :
to 5 : when true , 1 ! A;

state 5 :
to 6 : when true , 1 ! A;

state 12 :
to 13 : when true , 1 ! A;

state 13 :
to 14 : when true , 1 ! A;

state 3 :
to 4 : when true , 1 ! A;

state 7 :
to 8 : when true , 1 ! A;

state 8 :

state 14 :
to 15 : when true , 1 ! A;

state 2 :
to 3 : when true , 1 ! A;

state 6 :
to 7 : when true , 1 ! A;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 2 ! C;
to 1 : when true , 1  ? A;

state 0 :
to 1 : when true , 0 ! B;

state 2 :
to 0 : when true , 1  ? A;

automaton A2 :

initial : 0


state 1 :
to 0 : when true , 3 ! D;

state 0 :
to 1 : when true , 2  ? C;

automaton A3 :

initial : 0


state 1 :
to 1 : when true , 3  ? D;

state 0 :
to 1 : when true , 4 ! E;

automaton A4 :

initial : 0


state 1 :
to 2 : when true , 5 ! FFF;

state 0 :
to 1 : when true , 4  ? E;

state 3 :
to 1 : when true , 4  ? GGG;

state 2 :
to 3 : when true , 5 ! FFF;

automaton A5 :

initial : 0


state 1 :
to 2 : when true , 5  ? FFF;

state 0 :
to 1 : when true , 4 ! GGG;

state 4 :
to 0 : when true , 5  ? FFF;

state 3 :
to 4 : when true , 6 ! MM;
to 3 : when true , 5  ? FFF;
to 1 : when true , 4 ! GGG;

state 2 :
to 3 : when true , 4 ! GGG;

automaton A6 :

initial : 0


state 0 :
to 0 : when true , 6  ? MM;
