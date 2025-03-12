/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 5 ;
parameters :
real B ;
real D ;
real INIT2 ;
real A ;
real INIT3 ;
real E ;
real C ;
real INIT1 ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 2  ? INIT3;

state 0 :
to 1 : when true , 4 ! INIT1;

state 9 :

state 4 :
to 5 : when true , 1 ! E;

state 5 :
to 7 : when true , 0  ? A;
to 6 : when true , 0  ? D;

state 3 :
to 4 : when true , 1 ! C;

state 7 :
to 8 : when true , 0  ? D;

state 8 :
to 9 : when true ;

state 2 :
to 3 : when true , 1 ! B;

state 6 :
to 8 : when true , 0  ? A;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 0 ! A;

state 10 :
to 11 : when true ;

state 0 :
to 1 : when true , 3 ! INIT2;

state 11 :

state 9 :
to 10 : when true , 1  ? C;

state 4 :
to 8 : when true , 1  ? B;
to 7 : when true , 1  ? E;

state 5 :
to 9 : when true , 1  ? B;
to 7 : when true , 1  ? C;

state 3 :
to 6 : when true , 1  ? B;
to 5 : when true , 1  ? E;
to 4 : when true , 1  ? C;

state 7 :
to 10 : when true , 1  ? B;

state 8 :
to 10 : when true , 1  ? E;

state 2 :
to 3 : when true , 0 ! D;

state 6 :
to 9 : when true , 1  ? E;
to 8 : when true , 1  ? C;

automaton A2 :

initial : 0


state 1 :
to 3 : when true , 4  ? INIT1;
to 2 : when true , 3  ? INIT2;

state 0 :
to 1 : when true , 2 ! INIT3;

state 4 :
to 5 : when true ;

state 5 :

state 3 :
to 4 : when true , 3  ? INIT2;

state 2 :
to 4 : when true , 4  ? INIT1;
