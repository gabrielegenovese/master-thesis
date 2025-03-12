/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real B ;
real D ;
real INIT2 ;
real A ;
real INIT3 ;
real C ;
real E ;
real INIT1 ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 0  ? INIT3;

state 4 :
to 8 : when true , 1 ! C;
to 6 : when true , 1 ! B;

state 5 :
to 8 : when true , 1 ! E;
to 7 : when true , 1 ! B;

state 3 :
to 7 : when true , 1 ! C;
to 6 : when true , 1 ! E;

state 6 :
to 9 : when true , 1 ! C;

state 10 :
to 12 : when true , 0  ? D;

state 0 :
to 1 : when true , 2 ! INIT1;

state 11 :
to 12 : when true , 0  ? A;

state 9 :
to 11 : when true , 0  ? D;
to 10 : when true , 0  ? A;

state 12 :
to 13 : when true ;

state 13 :

state 7 :
to 9 : when true , 1 ! E;

state 8 :
to 9 : when true , 1 ! B;

state 2 :
to 5 : when true , 1 ! C;
to 4 : when true , 1 ! E;
to 3 : when true , 1 ! B;

automaton A1 :

initial : 0


state 1 :
to 3 : when true , 0 ! D;
to 2 : when true , 0 ! A;

state 4 :
to 7 : when true , 1  ? C;
to 6 : when true , 1  ? E;
to 5 : when true , 1  ? B;

state 5 :
to 9 : when true , 1  ? C;
to 8 : when true , 1  ? E;

state 3 :
to 4 : when true , 0 ! A;

state 6 :
to 10 : when true , 1  ? C;
to 8 : when true , 1  ? B;

state 10 :
to 11 : when true , 1  ? B;

state 0 :
to 1 : when true , 2 ! INIT2;

state 11 :
to 12 : when true ;

state 9 :
to 11 : when true , 1  ? E;

state 12 :

state 7 :
to 10 : when true , 1  ? E;
to 9 : when true , 1  ? B;

state 8 :
to 11 : when true , 1  ? C;

state 2 :
to 4 : when true , 0 ! D;

automaton A2 :

initial : 0


state 1 :
to 3 : when true , 2  ? INIT1;
to 2 : when true , 2  ? INIT2;

state 0 :
to 1 : when true , 0 ! INIT3;

state 4 :
to 5 : when true ;

state 5 :

state 3 :
to 4 : when true , 2  ? INIT2;

state 2 :
to 4 : when true , 2  ? INIT1;
