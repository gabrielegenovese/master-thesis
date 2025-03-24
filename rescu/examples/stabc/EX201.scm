/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real B ;
real BBB ;
real INIT2 ;
real C ;
real D ;
real SS ;
real A ;
real E ;
real INIT1 ;
real INIT3 ;

automaton A0 :

initial : 0


state 18 :
to 19 : when true , 0  ? D;

state 19 :
to 20 : when true ;

state 17 :
to 19 : when true , 0  ? SS;

state 4 :
to 8 : when true , 0  ? A;
to 7 : when true , 0  ? INIT3;
to 6 : when true , 0  ? SS;
to 5 : when true , 0  ? D;

state 14 :
to 18 : when true , 0  ? SS;
to 17 : when true , 0  ? D;

state 6 :
to 13 : when true , 0  ? A;
to 12 : when true , 0  ? INIT3;
to 9 : when true , 0  ? D;

state 15 :
to 19 : when true , 0  ? A;

state 12 :
to 18 : when true , 0  ? A;
to 15 : when true , 0  ? D;

state 8 :
to 14 : when true , 0  ? INIT3;
to 13 : when true , 0  ? SS;
to 11 : when true , 0  ? D;

state 1 :
to 2 : when true , 1 ! B;

state 5 :
to 11 : when true , 0  ? A;
to 10 : when true , 0  ? INIT3;
to 9 : when true , 0  ? SS;

state 3 :
to 4 : when true , 1 ! E;

state 16 :
to 19 : when true , 0  ? INIT3;

state 10 :
to 17 : when true , 0  ? A;
to 15 : when true , 0  ? SS;

state 0 :
to 1 : when true , 2 ! INIT1;

state 11 :
to 17 : when true , 0  ? INIT3;
to 16 : when true , 0  ? SS;

state 9 :
to 16 : when true , 0  ? A;
to 15 : when true , 0  ? INIT3;

state 13 :
to 18 : when true , 0  ? INIT3;
to 16 : when true , 0  ? D;

state 7 :
to 14 : when true , 0  ? A;
to 12 : when true , 0  ? SS;
to 10 : when true , 0  ? D;

state 2 :
to 3 : when true , 1 ! C;

state 20 :

automaton A1 :

initial : 0


state 18 :
to 19 : when true , 1  ? C;

state 19 :
to 20 : when true ;

state 17 :
to 19 : when true , 1  ? BBB;

state 4 :
to 8 : when true , 1  ? B;
to 7 : when true , 1  ? E;
to 6 : when true , 1  ? BBB;
to 5 : when true , 1  ? C;

state 14 :
to 18 : when true , 1  ? BBB;
to 17 : when true , 1  ? C;

state 6 :
to 13 : when true , 1  ? B;
to 12 : when true , 1  ? E;
to 9 : when true , 1  ? C;

state 15 :
to 19 : when true , 1  ? B;

state 12 :
to 18 : when true , 1  ? B;
to 15 : when true , 1  ? C;

state 8 :
to 14 : when true , 1  ? E;
to 13 : when true , 1  ? BBB;
to 11 : when true , 1  ? C;

state 1 :
to 2 : when true , 0 ! A;

state 5 :
to 11 : when true , 1  ? B;
to 10 : when true , 1  ? E;
to 9 : when true , 1  ? BBB;

state 3 :
to 4 : when true , 0 ! SS;

state 16 :
to 19 : when true , 1  ? E;

state 10 :
to 17 : when true , 1  ? B;
to 15 : when true , 1  ? BBB;

state 0 :
to 1 : when true , 2 ! INIT2;

state 11 :
to 17 : when true , 1  ? E;
to 16 : when true , 1  ? BBB;

state 9 :
to 16 : when true , 1  ? B;
to 15 : when true , 1  ? E;

state 13 :
to 18 : when true , 1  ? E;
to 16 : when true , 1  ? C;

state 7 :
to 14 : when true , 1  ? B;
to 12 : when true , 1  ? BBB;
to 10 : when true , 1  ? C;

state 2 :
to 3 : when true , 0 ! D;

state 20 :

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 1 ! BBB;

state 0 :
to 1 : when true , 0 ! INIT3;

state 4 :
to 5 : when true , 2  ? INIT2;

state 5 :
to 6 : when true ;

state 3 :
to 5 : when true , 2  ? INIT1;

state 2 :
to 4 : when true , 2  ? INIT1;
to 3 : when true , 2  ? INIT2;

state 6 :
