/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 4 ;
parameters :
real B ;
real INIT2 ;
real C ;
real D ;
real E ;
real INIT1 ;
real INIT3 ;
real F ;
real A ;

automaton A0 :

initial : 0


state 18 :
to 41 : when true , 0 ! B;
to 39 : when true , 0 ! F;
to 34 : when true , 0 ! C;
to 28 : when true , 0 ! A;

state 50 :
to 62 : when true , 0 ! D;
to 59 : when true , 0 ! C;

state 4 :
to 19 : when true , 0 ! B;
to 18 : when true , 0 ! D;
to 17 : when true , 0 ! F;
to 13 : when true , 0 ! C;
to 9 : when true , 0 ! A;

state 15 :
to 38 : when true , 0 ! B;
to 36 : when true , 0 ! F;
to 34 : when true , 0 ! E;
to 25 : when true , 0 ! A;

state 8 :
to 26 : when true , 0 ! B;
to 25 : when true , 0 ! D;
to 24 : when true , 0 ! F;
to 23 : when true , 0 ! E;

state 54 :
to 63 : when true , 0 ! D;
to 59 : when true , 0 ! A;

state 1 :
to 7 : when true , 0 ! B;
to 6 : when true , 0 ! D;
to 5 : when true , 0 ! F;
to 4 : when true , 0 ! E;
to 3 : when true , 0 ! C;
to 2 : when true , 0 ! A;

state 3 :
to 16 : when true , 0 ! B;
to 15 : when true , 0 ! D;
to 14 : when true , 0 ! F;
to 13 : when true , 0 ! E;
to 8 : when true , 0 ! A;

state 16 :
to 38 : when true , 0 ! D;
to 37 : when true , 0 ! F;
to 35 : when true , 0 ! E;
to 26 : when true , 0 ! A;

state 21 :
to 42 : when true , 0 ! D;
to 40 : when true , 0 ! E;
to 37 : when true , 0 ! C;
to 31 : when true , 0 ! A;

state 36 :
to 56 : when true , 0 ! B;
to 53 : when true , 0 ! E;
to 46 : when true , 0 ! A;

state 26 :
to 48 : when true , 0 ! D;
to 47 : when true , 0 ! F;
to 45 : when true , 0 ! E;

state 63 :
to 64 : when true , 0 ! A;

state 19 :
to 41 : when true , 0 ! D;
to 40 : when true , 0 ! F;
to 35 : when true , 0 ! C;
to 29 : when true , 0 ! A;

state 32 :
to 52 : when true , 0 ! F;
to 51 : when true , 0 ! E;
to 48 : when true , 0 ! C;

state 17 :
to 40 : when true , 0 ! B;
to 39 : when true , 0 ! D;
to 33 : when true , 0 ! C;
to 27 : when true , 0 ! A;

state 60 :
to 64 : when true , 0 ! F;

state 27 :
to 50 : when true , 0 ! B;
to 49 : when true , 0 ! D;
to 43 : when true , 0 ! C;

state 34 :
to 55 : when true , 0 ! B;
to 53 : when true , 0 ! F;
to 44 : when true , 0 ! A;

state 22 :
to 42 : when true , 0 ! F;
to 41 : when true , 0 ! E;
to 38 : when true , 0 ! C;
to 32 : when true , 0 ! A;

state 28 :
to 51 : when true , 0 ! B;
to 49 : when true , 0 ! F;
to 44 : when true , 0 ! C;

state 65 :
to 66 : when true ;

state 44 :
to 60 : when true , 0 ! B;
to 58 : when true , 0 ! F;

state 5 :
to 21 : when true , 0 ! B;
to 20 : when true , 0 ! D;
to 17 : when true , 0 ! E;
to 14 : when true , 0 ! C;
to 10 : when true , 0 ! A;

state 33 :
to 54 : when true , 0 ! B;
to 53 : when true , 0 ! D;
to 43 : when true , 0 ! A;

state 64 :
to 65 : when true , 1  ? INIT3;

state 10 :
to 31 : when true , 0 ! B;
to 30 : when true , 0 ! D;
to 27 : when true , 0 ! E;
to 24 : when true , 0 ! C;

state 0 :
to 1 : when true , 3 ! INIT1;

state 39 :
to 57 : when true , 0 ! B;
to 53 : when true , 0 ! C;
to 49 : when true , 0 ! A;

state 7 :
to 22 : when true , 0 ! D;
to 21 : when true , 0 ! F;
to 19 : when true , 0 ! E;
to 16 : when true , 0 ! C;
to 12 : when true , 0 ! A;

state 20 :
to 42 : when true , 0 ! B;
to 39 : when true , 0 ! E;
to 36 : when true , 0 ! C;
to 30 : when true , 0 ! A;

state 25 :
to 48 : when true , 0 ! B;
to 46 : when true , 0 ! F;
to 44 : when true , 0 ! E;

state 49 :
to 62 : when true , 0 ! B;
to 58 : when true , 0 ! C;

state 52 :
to 62 : when true , 0 ! E;
to 61 : when true , 0 ! C;

state 30 :
to 52 : when true , 0 ! B;
to 49 : when true , 0 ! E;
to 46 : when true , 0 ! C;

state 62 :
to 64 : when true , 0 ! C;

state 14 :
to 37 : when true , 0 ! B;
to 36 : when true , 0 ! D;
to 33 : when true , 0 ! E;
to 24 : when true , 0 ! A;

state 56 :
to 63 : when true , 0 ! E;
to 61 : when true , 0 ! A;

state 31 :
to 52 : when true , 0 ! D;
to 50 : when true , 0 ! E;
to 47 : when true , 0 ! C;

state 12 :
to 32 : when true , 0 ! D;
to 31 : when true , 0 ! F;
to 29 : when true , 0 ! E;
to 26 : when true , 0 ! C;

state 45 :
to 60 : when true , 0 ! D;
to 59 : when true , 0 ! F;

state 23 :
to 45 : when true , 0 ! B;
to 44 : when true , 0 ! D;
to 43 : when true , 0 ! F;

state 24 :
to 47 : when true , 0 ! B;
to 46 : when true , 0 ! D;
to 43 : when true , 0 ! E;

state 57 :
to 63 : when true , 0 ! C;
to 62 : when true , 0 ! A;

state 11 :
to 32 : when true , 0 ! B;
to 30 : when true , 0 ! F;
to 28 : when true , 0 ! E;
to 25 : when true , 0 ! C;

state 9 :
to 29 : when true , 0 ! B;
to 28 : when true , 0 ! D;
to 27 : when true , 0 ! F;
to 23 : when true , 0 ! C;

state 13 :
to 35 : when true , 0 ! B;
to 34 : when true , 0 ! D;
to 33 : when true , 0 ! F;
to 23 : when true , 0 ! A;

state 51 :
to 62 : when true , 0 ! F;
to 60 : when true , 0 ! C;

state 40 :
to 57 : when true , 0 ! D;
to 54 : when true , 0 ! C;
to 50 : when true , 0 ! A;

state 55 :
to 63 : when true , 0 ! F;
to 60 : when true , 0 ! A;

state 59 :
to 64 : when true , 0 ! D;

state 6 :
to 22 : when true , 0 ! B;
to 20 : when true , 0 ! F;
to 18 : when true , 0 ! E;
to 15 : when true , 0 ! C;
to 11 : when true , 0 ! A;

state 38 :
to 56 : when true , 0 ! F;
to 55 : when true , 0 ! E;
to 48 : when true , 0 ! A;

state 61 :
to 64 : when true , 0 ! E;

state 58 :
to 64 : when true , 0 ! B;

state 48 :
to 61 : when true , 0 ! F;
to 60 : when true , 0 ! E;

state 53 :
to 63 : when true , 0 ! B;
to 58 : when true , 0 ! A;

state 47 :
to 61 : when true , 0 ! D;
to 59 : when true , 0 ! E;

state 37 :
to 56 : when true , 0 ! D;
to 54 : when true , 0 ! E;
to 47 : when true , 0 ! A;

state 41 :
to 57 : when true , 0 ! F;
to 55 : when true , 0 ! C;
to 51 : when true , 0 ! A;

state 42 :
to 57 : when true , 0 ! E;
to 56 : when true , 0 ! C;
to 52 : when true , 0 ! A;

state 46 :
to 61 : when true , 0 ! B;
to 58 : when true , 0 ! E;

state 66 :

state 35 :
to 55 : when true , 0 ! D;
to 54 : when true , 0 ! F;
to 45 : when true , 0 ! A;

state 29 :
to 51 : when true , 0 ! D;
to 50 : when true , 0 ! F;
to 45 : when true , 0 ! C;

state 43 :
to 59 : when true , 0 ! B;
to 58 : when true , 0 ! D;

state 2 :
to 12 : when true , 0 ! B;
to 11 : when true , 0 ! D;
to 10 : when true , 0 ! F;
to 9 : when true , 0 ! E;
to 8 : when true , 0 ! C;

automaton A1 :

initial : 0


state 18 :
to 41 : when true , 0  ? A;
to 39 : when true , 0  ? E;
to 34 : when true , 0  ? D;
to 28 : when true , 0  ? B;

state 50 :
to 62 : when true , 0  ? C;
to 59 : when true , 0  ? D;

state 4 :
to 19 : when true , 0  ? A;
to 18 : when true , 0  ? C;
to 17 : when true , 0  ? E;
to 13 : when true , 0  ? D;
to 9 : when true , 0  ? B;

state 15 :
to 38 : when true , 0  ? A;
to 36 : when true , 0  ? E;
to 34 : when true , 0  ? F;
to 25 : when true , 0  ? B;

state 8 :
to 26 : when true , 0  ? A;
to 25 : when true , 0  ? C;
to 24 : when true , 0  ? E;
to 23 : when true , 0  ? F;

state 54 :
to 63 : when true , 0  ? C;
to 59 : when true , 0  ? B;

state 1 :
to 7 : when true , 0  ? A;
to 6 : when true , 0  ? C;
to 5 : when true , 0  ? E;
to 4 : when true , 0  ? F;
to 3 : when true , 0  ? D;
to 2 : when true , 0  ? B;

state 3 :
to 16 : when true , 0  ? A;
to 15 : when true , 0  ? C;
to 14 : when true , 0  ? E;
to 13 : when true , 0  ? F;
to 8 : when true , 0  ? B;

state 16 :
to 38 : when true , 0  ? C;
to 37 : when true , 0  ? E;
to 35 : when true , 0  ? F;
to 26 : when true , 0  ? B;

state 21 :
to 42 : when true , 0  ? C;
to 40 : when true , 0  ? F;
to 37 : when true , 0  ? D;
to 31 : when true , 0  ? B;

state 36 :
to 56 : when true , 0  ? A;
to 53 : when true , 0  ? F;
to 46 : when true , 0  ? B;

state 26 :
to 48 : when true , 0  ? C;
to 47 : when true , 0  ? E;
to 45 : when true , 0  ? F;

state 63 :
to 64 : when true , 0  ? B;

state 19 :
to 41 : when true , 0  ? C;
to 40 : when true , 0  ? E;
to 35 : when true , 0  ? D;
to 29 : when true , 0  ? B;

state 32 :
to 52 : when true , 0  ? E;
to 51 : when true , 0  ? F;
to 48 : when true , 0  ? D;

state 17 :
to 40 : when true , 0  ? A;
to 39 : when true , 0  ? C;
to 33 : when true , 0  ? D;
to 27 : when true , 0  ? B;

state 60 :
to 64 : when true , 0  ? E;

state 27 :
to 50 : when true , 0  ? A;
to 49 : when true , 0  ? C;
to 43 : when true , 0  ? D;

state 34 :
to 55 : when true , 0  ? A;
to 53 : when true , 0  ? E;
to 44 : when true , 0  ? B;

state 22 :
to 42 : when true , 0  ? E;
to 41 : when true , 0  ? F;
to 38 : when true , 0  ? D;
to 32 : when true , 0  ? B;

state 28 :
to 51 : when true , 0  ? A;
to 49 : when true , 0  ? E;
to 44 : when true , 0  ? D;

state 65 :

state 44 :
to 60 : when true , 0  ? A;
to 58 : when true , 0  ? E;

state 5 :
to 21 : when true , 0  ? A;
to 20 : when true , 0  ? C;
to 17 : when true , 0  ? F;
to 14 : when true , 0  ? D;
to 10 : when true , 0  ? B;

state 33 :
to 54 : when true , 0  ? A;
to 53 : when true , 0  ? C;
to 43 : when true , 0  ? B;

state 64 :
to 65 : when true ;

state 10 :
to 31 : when true , 0  ? A;
to 30 : when true , 0  ? C;
to 27 : when true , 0  ? F;
to 24 : when true , 0  ? D;

state 0 :
to 1 : when true , 2 ! INIT2;

state 39 :
to 57 : when true , 0  ? A;
to 53 : when true , 0  ? D;
to 49 : when true , 0  ? B;

state 7 :
to 22 : when true , 0  ? C;
to 21 : when true , 0  ? E;
to 19 : when true , 0  ? F;
to 16 : when true , 0  ? D;
to 12 : when true , 0  ? B;

state 20 :
to 42 : when true , 0  ? A;
to 39 : when true , 0  ? F;
to 36 : when true , 0  ? D;
to 30 : when true , 0  ? B;

state 25 :
to 48 : when true , 0  ? A;
to 46 : when true , 0  ? E;
to 44 : when true , 0  ? F;

state 49 :
to 62 : when true , 0  ? A;
to 58 : when true , 0  ? D;

state 52 :
to 62 : when true , 0  ? F;
to 61 : when true , 0  ? D;

state 30 :
to 52 : when true , 0  ? A;
to 49 : when true , 0  ? F;
to 46 : when true , 0  ? D;

state 62 :
to 64 : when true , 0  ? D;

state 14 :
to 37 : when true , 0  ? A;
to 36 : when true , 0  ? C;
to 33 : when true , 0  ? F;
to 24 : when true , 0  ? B;

state 56 :
to 63 : when true , 0  ? F;
to 61 : when true , 0  ? B;

state 31 :
to 52 : when true , 0  ? C;
to 50 : when true , 0  ? F;
to 47 : when true , 0  ? D;

state 12 :
to 32 : when true , 0  ? C;
to 31 : when true , 0  ? E;
to 29 : when true , 0  ? F;
to 26 : when true , 0  ? D;

state 45 :
to 60 : when true , 0  ? C;
to 59 : when true , 0  ? E;

state 23 :
to 45 : when true , 0  ? A;
to 44 : when true , 0  ? C;
to 43 : when true , 0  ? E;

state 24 :
to 47 : when true , 0  ? A;
to 46 : when true , 0  ? C;
to 43 : when true , 0  ? F;

state 57 :
to 63 : when true , 0  ? D;
to 62 : when true , 0  ? B;

state 11 :
to 32 : when true , 0  ? A;
to 30 : when true , 0  ? E;
to 28 : when true , 0  ? F;
to 25 : when true , 0  ? D;

state 9 :
to 29 : when true , 0  ? A;
to 28 : when true , 0  ? C;
to 27 : when true , 0  ? E;
to 23 : when true , 0  ? D;

state 13 :
to 35 : when true , 0  ? A;
to 34 : when true , 0  ? C;
to 33 : when true , 0  ? E;
to 23 : when true , 0  ? B;

state 51 :
to 62 : when true , 0  ? E;
to 60 : when true , 0  ? D;

state 40 :
to 57 : when true , 0  ? C;
to 54 : when true , 0  ? D;
to 50 : when true , 0  ? B;

state 55 :
to 63 : when true , 0  ? E;
to 60 : when true , 0  ? B;

state 59 :
to 64 : when true , 0  ? C;

state 6 :
to 22 : when true , 0  ? A;
to 20 : when true , 0  ? E;
to 18 : when true , 0  ? F;
to 15 : when true , 0  ? D;
to 11 : when true , 0  ? B;

state 38 :
to 56 : when true , 0  ? E;
to 55 : when true , 0  ? F;
to 48 : when true , 0  ? B;

state 61 :
to 64 : when true , 0  ? F;

state 58 :
to 64 : when true , 0  ? A;

state 48 :
to 61 : when true , 0  ? E;
to 60 : when true , 0  ? F;

state 53 :
to 63 : when true , 0  ? A;
to 58 : when true , 0  ? B;

state 47 :
to 61 : when true , 0  ? C;
to 59 : when true , 0  ? F;

state 37 :
to 56 : when true , 0  ? C;
to 54 : when true , 0  ? F;
to 47 : when true , 0  ? B;

state 41 :
to 57 : when true , 0  ? E;
to 55 : when true , 0  ? D;
to 51 : when true , 0  ? B;

state 42 :
to 57 : when true , 0  ? F;
to 56 : when true , 0  ? D;
to 52 : when true , 0  ? B;

state 46 :
to 61 : when true , 0  ? A;
to 58 : when true , 0  ? F;

state 35 :
to 55 : when true , 0  ? C;
to 54 : when true , 0  ? E;
to 45 : when true , 0  ? B;

state 29 :
to 51 : when true , 0  ? C;
to 50 : when true , 0  ? E;
to 45 : when true , 0  ? D;

state 43 :
to 59 : when true , 0  ? A;
to 58 : when true , 0  ? C;

state 2 :
to 12 : when true , 0  ? A;
to 11 : when true , 0  ? C;
to 10 : when true , 0  ? E;
to 9 : when true , 0  ? F;
to 8 : when true , 0  ? D;

automaton A2 :

initial : 0


state 1 :
to 3 : when true , 3  ? INIT1;
to 2 : when true , 2  ? INIT2;

state 0 :
to 1 : when true , 1 ! INIT3;

state 4 :
to 5 : when true ;

state 5 :

state 3 :
to 4 : when true , 2  ? INIT2;

state 2 :
to 4 : when true , 3  ? INIT1;
