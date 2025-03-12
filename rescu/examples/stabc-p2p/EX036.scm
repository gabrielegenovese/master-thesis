/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real B ;
real C ;
real D ;
real E ;
real F ;
real A ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 0 ! B;

state 0 :
to 1 : when true , 0 ! A;

state 2 :

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1 ! D;

state 0 :
to 1 : when true , 1 ! C;

state 2 :

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 2 ! F;

state 0 :
to 1 : when true , 2 ! E;

state 2 :

automaton A3 :

initial : 0


state 18 :
to 40 : when true , 1  ? C;
to 39 : when true , 2  ? E;
to 34 : when true , 1  ? D;
to 28 : when true , 0  ? B;

state 50 :
to 61 : when true , 2  ? E;
to 59 : when true , 1  ? D;

state 4 :
to 20 : when true , 0  ? A;
to 19 : when true , 1  ? C;
to 16 : when true , 2  ? F;
to 13 : when true , 1  ? D;
to 9 : when true , 0  ? B;

state 15 :
to 37 : when true , 1  ? C;
to 36 : when true , 2  ? E;
to 34 : when true , 2  ? F;
to 25 : when true , 0  ? B;

state 8 :
to 28 : when true , 0  ? A;
to 27 : when true , 1  ? C;
to 26 : when true , 2  ? E;
to 22 : when true , 1  ? D;

state 54 :
to 62 : when true , 2  ? E;
to 59 : when true , 0  ? B;

state 1 :
to 11 : when true , 0  ? A;
to 10 : when true , 1  ? C;
to 9 : when true , 2  ? E;
to 8 : when true , 2  ? F;
to 7 : when true , 1  ? D;

state 3 :
to 18 : when true , 0  ? A;
to 17 : when true , 1  ? C;
to 16 : when true , 2  ? E;
to 12 : when true , 1  ? D;
to 8 : when true , 0  ? B;

state 16 :
to 39 : when true , 0  ? A;
to 38 : when true , 1  ? C;
to 32 : when true , 1  ? D;
to 26 : when true , 0  ? B;

state 21 :
to 41 : when true , 2  ? E;
to 40 : when true , 2  ? F;
to 37 : when true , 1  ? D;
to 31 : when true , 0  ? B;

state 36 :
to 55 : when true , 1  ? C;
to 53 : when true , 2  ? F;
to 46 : when true , 0  ? B;

state 26 :
to 49 : when true , 0  ? A;
to 48 : when true , 1  ? C;
to 42 : when true , 1  ? D;

state 63 :

state 19 :
to 41 : when true , 0  ? A;
to 38 : when true , 2  ? F;
to 35 : when true , 1  ? D;
to 29 : when true , 0  ? B;

state 32 :
to 53 : when true , 0  ? A;
to 52 : when true , 1  ? C;
to 42 : when true , 0  ? B;

state 17 :
to 40 : when true , 0  ? A;
to 38 : when true , 2  ? E;
to 33 : when true , 1  ? D;
to 27 : when true , 0  ? B;

state 60 :
to 63 : when true , 2  ? F;

state 27 :
to 50 : when true , 0  ? A;
to 48 : when true , 2  ? E;
to 43 : when true , 1  ? D;

state 34 :
to 54 : when true , 1  ? C;
to 53 : when true , 2  ? E;
to 44 : when true , 0  ? B;

state 22 :
to 44 : when true , 0  ? A;
to 43 : when true , 1  ? C;
to 42 : when true , 2  ? E;

state 28 :
to 50 : when true , 1  ? C;
to 49 : when true , 2  ? E;
to 44 : when true , 1  ? D;

state 44 :
to 59 : when true , 1  ? C;
to 58 : when true , 2  ? E;

state 5 :
to 21 : when true , 0  ? A;
to 19 : when true , 2  ? E;
to 17 : when true , 2  ? F;
to 14 : when true , 1  ? D;
to 10 : when true , 0  ? B;

state 33 :
to 54 : when true , 0  ? A;
to 52 : when true , 2  ? E;
to 43 : when true , 0  ? B;

state 10 :
to 31 : when true , 0  ? A;
to 29 : when true , 2  ? E;
to 27 : when true , 2  ? F;
to 24 : when true , 1  ? D;

state 0 :
to 6 : when true , 0  ? A;
to 5 : when true , 1  ? C;
to 4 : when true , 2  ? E;
to 3 : when true , 2  ? F;
to 2 : when true , 1  ? D;
to 1 : when true , 0  ? B;

state 39 :
to 56 : when true , 1  ? C;
to 53 : when true , 1  ? D;
to 49 : when true , 0  ? B;

state 7 :
to 25 : when true , 0  ? A;
to 24 : when true , 1  ? C;
to 23 : when true , 2  ? E;
to 22 : when true , 2  ? F;

state 20 :
to 41 : when true , 1  ? C;
to 39 : when true , 2  ? F;
to 36 : when true , 1  ? D;
to 30 : when true , 0  ? B;

state 25 :
to 47 : when true , 1  ? C;
to 46 : when true , 2  ? E;
to 44 : when true , 2  ? F;

state 49 :
to 61 : when true , 1  ? C;
to 58 : when true , 1  ? D;

state 52 :
to 62 : when true , 0  ? A;
to 57 : when true , 0  ? B;

state 30 :
to 51 : when true , 1  ? C;
to 49 : when true , 2  ? F;
to 46 : when true , 1  ? D;

state 62 :
to 63 : when true , 0  ? B;

state 14 :
to 37 : when true , 0  ? A;
to 35 : when true , 2  ? E;
to 33 : when true , 2  ? F;
to 24 : when true , 0  ? B;

state 56 :
to 62 : when true , 1  ? D;
to 61 : when true , 0  ? B;

state 31 :
to 51 : when true , 2  ? E;
to 50 : when true , 2  ? F;
to 47 : when true , 1  ? D;

state 12 :
to 34 : when true , 0  ? A;
to 33 : when true , 1  ? C;
to 32 : when true , 2  ? E;
to 22 : when true , 0  ? B;

state 45 :
to 60 : when true , 0  ? A;
to 57 : when true , 2  ? F;

state 23 :
to 46 : when true , 0  ? A;
to 45 : when true , 1  ? C;
to 42 : when true , 2  ? F;

state 24 :
to 47 : when true , 0  ? A;
to 45 : when true , 2  ? E;
to 43 : when true , 2  ? F;

state 57 :
to 63 : when true , 0  ? A;

state 11 :
to 31 : when true , 1  ? C;
to 30 : when true , 2  ? E;
to 28 : when true , 2  ? F;
to 25 : when true , 1  ? D;

state 9 :
to 30 : when true , 0  ? A;
to 29 : when true , 1  ? C;
to 26 : when true , 2  ? F;
to 23 : when true , 1  ? D;

state 13 :
to 36 : when true , 0  ? A;
to 35 : when true , 1  ? C;
to 32 : when true , 2  ? F;
to 23 : when true , 0  ? B;

state 51 :
to 61 : when true , 2  ? F;
to 60 : when true , 1  ? D;

state 40 :
to 56 : when true , 2  ? E;
to 54 : when true , 1  ? D;
to 50 : when true , 0  ? B;

state 55 :
to 62 : when true , 2  ? F;
to 60 : when true , 0  ? B;

state 59 :
to 63 : when true , 2  ? E;

state 6 :
to 21 : when true , 1  ? C;
to 20 : when true , 2  ? E;
to 18 : when true , 2  ? F;
to 15 : when true , 1  ? D;
to 11 : when true , 0  ? B;

state 38 :
to 56 : when true , 0  ? A;
to 52 : when true , 1  ? D;
to 48 : when true , 0  ? B;

state 61 :
to 63 : when true , 1  ? D;

state 58 :
to 63 : when true , 1  ? C;

state 48 :
to 61 : when true , 0  ? A;
to 57 : when true , 1  ? D;

state 53 :
to 62 : when true , 1  ? C;
to 58 : when true , 0  ? B;

state 47 :
to 60 : when true , 2  ? E;
to 59 : when true , 2  ? F;

state 37 :
to 55 : when true , 2  ? E;
to 54 : when true , 2  ? F;
to 47 : when true , 0  ? B;

state 41 :
to 56 : when true , 2  ? F;
to 55 : when true , 1  ? D;
to 51 : when true , 0  ? B;

state 42 :
to 58 : when true , 0  ? A;
to 57 : when true , 1  ? C;

state 46 :
to 60 : when true , 1  ? C;
to 58 : when true , 2  ? F;

state 35 :
to 55 : when true , 0  ? A;
to 52 : when true , 2  ? F;
to 45 : when true , 0  ? B;

state 29 :
to 51 : when true , 0  ? A;
to 48 : when true , 2  ? F;
to 45 : when true , 1  ? D;

state 43 :
to 59 : when true , 0  ? A;
to 57 : when true , 2  ? E;

state 2 :
to 15 : when true , 0  ? A;
to 14 : when true , 1  ? C;
to 13 : when true , 2  ? E;
to 12 : when true , 2  ? F;
to 7 : when true , 0  ? B;
