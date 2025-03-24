/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real B ;
real INIT2 ;
real C ;
real D ;
real A ;
real E ;
real INIT1 ;
real INIT3 ;

automaton A0 :

initial : 0


state 18 :
to 29 : when true , 1 ! B;
to 27 : when true , 1 ! E;

state 25 :
to 31 : when true , 1 ! E;
to 29 : when true , 1 ! A;

state 4 :
to 15 : when true , 1 ! B;
to 14 : when true , 1 ! D;
to 11 : when true , 1 ! C;
to 8 : when true , 1 ! A;

state 30 :
to 32 : when true , 1 ! C;

state 14 :
to 26 : when true , 1 ! B;
to 23 : when true , 1 ! C;
to 20 : when true , 1 ! A;

state 15 :
to 26 : when true , 1 ! D;
to 24 : when true , 1 ! C;
to 21 : when true , 1 ! A;

state 31 :
to 32 : when true , 1 ! A;

state 12 :
to 25 : when true , 1 ! B;
to 23 : when true , 1 ! E;
to 18 : when true , 1 ! A;

state 8 :
to 21 : when true , 1 ! B;
to 20 : when true , 1 ! D;
to 17 : when true , 1 ! C;

state 1 :
to 6 : when true , 1 ! B;
to 5 : when true , 1 ! D;
to 4 : when true , 1 ! E;
to 3 : when true , 1 ! C;
to 2 : when true , 1 ! A;

state 23 :
to 31 : when true , 1 ! B;
to 27 : when true , 1 ! A;

state 3 :
to 13 : when true , 1 ! B;
to 12 : when true , 1 ! D;
to 11 : when true , 1 ! E;
to 7 : when true , 1 ! A;

state 16 :
to 26 : when true , 1 ! E;
to 25 : when true , 1 ! C;
to 22 : when true , 1 ! A;

state 24 :
to 31 : when true , 1 ! D;
to 28 : when true , 1 ! A;

state 21 :
to 30 : when true , 1 ! D;
to 28 : when true , 1 ! C;

state 26 :
to 31 : when true , 1 ! C;
to 30 : when true , 1 ! A;

state 11 :
to 24 : when true , 1 ! B;
to 23 : when true , 1 ! D;
to 17 : when true , 1 ! A;

state 9 :
to 22 : when true , 1 ! B;
to 20 : when true , 1 ! E;
to 18 : when true , 1 ! C;

state 13 :
to 25 : when true , 1 ! D;
to 24 : when true , 1 ! E;
to 19 : when true , 1 ! A;

state 19 :
to 29 : when true , 1 ! D;
to 28 : when true , 1 ! E;

state 32 :
to 33 : when true , 0  ? INIT3;

state 17 :
to 28 : when true , 1 ! B;
to 27 : when true , 1 ! D;

state 6 :
to 16 : when true , 1 ! D;
to 15 : when true , 1 ! E;
to 13 : when true , 1 ! C;
to 10 : when true , 1 ! A;

state 27 :
to 32 : when true , 1 ! B;

state 34 :

state 22 :
to 30 : when true , 1 ! E;
to 29 : when true , 1 ! C;

state 28 :
to 32 : when true , 1 ! D;

state 5 :
to 16 : when true , 1 ! B;
to 14 : when true , 1 ! E;
to 12 : when true , 1 ! C;
to 9 : when true , 1 ! A;

state 33 :
to 34 : when true ;

state 10 :
to 22 : when true , 1 ! D;
to 21 : when true , 1 ! E;
to 19 : when true , 1 ! C;

state 0 :
to 1 : when true , 2 ! INIT1;

state 7 :
to 19 : when true , 1 ! B;
to 18 : when true , 1 ! D;
to 17 : when true , 1 ! E;

state 29 :
to 32 : when true , 1 ! E;

state 2 :
to 10 : when true , 1 ! B;
to 9 : when true , 1 ! D;
to 8 : when true , 1 ! E;
to 7 : when true , 1 ! C;

state 20 :
to 30 : when true , 1 ! B;
to 27 : when true , 1 ! C;

automaton A1 :

initial : 0


state 18 :
to 29 : when true , 1  ? A;
to 27 : when true , 1  ? E;

state 25 :
to 31 : when true , 1  ? E;
to 29 : when true , 1  ? B;

state 4 :
to 15 : when true , 1  ? A;
to 14 : when true , 1  ? C;
to 11 : when true , 1  ? D;
to 8 : when true , 1  ? B;

state 30 :
to 32 : when true , 1  ? D;

state 14 :
to 26 : when true , 1  ? A;
to 23 : when true , 1  ? D;
to 20 : when true , 1  ? B;

state 15 :
to 26 : when true , 1  ? C;
to 24 : when true , 1  ? D;
to 21 : when true , 1  ? B;

state 31 :
to 32 : when true , 1  ? B;

state 12 :
to 25 : when true , 1  ? A;
to 23 : when true , 1  ? E;
to 18 : when true , 1  ? B;

state 8 :
to 21 : when true , 1  ? A;
to 20 : when true , 1  ? C;
to 17 : when true , 1  ? D;

state 1 :
to 6 : when true , 1  ? A;
to 5 : when true , 1  ? C;
to 4 : when true , 1  ? E;
to 3 : when true , 1  ? D;
to 2 : when true , 1  ? B;

state 23 :
to 31 : when true , 1  ? A;
to 27 : when true , 1  ? B;

state 3 :
to 13 : when true , 1  ? A;
to 12 : when true , 1  ? C;
to 11 : when true , 1  ? E;
to 7 : when true , 1  ? B;

state 16 :
to 26 : when true , 1  ? E;
to 25 : when true , 1  ? D;
to 22 : when true , 1  ? B;

state 24 :
to 31 : when true , 1  ? C;
to 28 : when true , 1  ? B;

state 21 :
to 30 : when true , 1  ? C;
to 28 : when true , 1  ? D;

state 26 :
to 31 : when true , 1  ? D;
to 30 : when true , 1  ? B;

state 11 :
to 24 : when true , 1  ? A;
to 23 : when true , 1  ? C;
to 17 : when true , 1  ? B;

state 9 :
to 22 : when true , 1  ? A;
to 20 : when true , 1  ? E;
to 18 : when true , 1  ? D;

state 13 :
to 25 : when true , 1  ? C;
to 24 : when true , 1  ? E;
to 19 : when true , 1  ? B;

state 19 :
to 29 : when true , 1  ? C;
to 28 : when true , 1  ? E;

state 32 :
to 33 : when true ;

state 17 :
to 28 : when true , 1  ? A;
to 27 : when true , 1  ? C;

state 6 :
to 16 : when true , 1  ? C;
to 15 : when true , 1  ? E;
to 13 : when true , 1  ? D;
to 10 : when true , 1  ? B;

state 27 :
to 32 : when true , 1  ? A;

state 22 :
to 30 : when true , 1  ? E;
to 29 : when true , 1  ? D;

state 28 :
to 32 : when true , 1  ? C;

state 5 :
to 16 : when true , 1  ? A;
to 14 : when true , 1  ? E;
to 12 : when true , 1  ? D;
to 9 : when true , 1  ? B;

state 33 :

state 10 :
to 22 : when true , 1  ? C;
to 21 : when true , 1  ? E;
to 19 : when true , 1  ? D;

state 0 :
to 1 : when true , 2 ! INIT2;

state 7 :
to 19 : when true , 1  ? A;
to 18 : when true , 1  ? C;
to 17 : when true , 1  ? E;

state 29 :
to 32 : when true , 1  ? E;

state 2 :
to 10 : when true , 1  ? A;
to 9 : when true , 1  ? C;
to 8 : when true , 1  ? E;
to 7 : when true , 1  ? D;

state 20 :
to 30 : when true , 1  ? A;
to 27 : when true , 1  ? D;

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
