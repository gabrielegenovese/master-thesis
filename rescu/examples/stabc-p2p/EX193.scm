/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 7 ;
parameters :
real Z3 ;
real INIT1 ;
real INIT3 ;
real Z4 ;
real A ;
real B ;
real INIT2 ;
real C ;
real D ;
real Z1 ;
real Z2 ;
real SS ;
real SYNCHRO ;

automaton A0 :

initial : 0


state 18 :
to 22 : when true , 0 ! A;
to 21 : when true , 0 ! C;
to 20 : when true , 0 ! D;
to 19 : when true , 0 ! B;

state 50 :
to 54 : when true , 0 ! B;
to 53 : when true , 0 ! D;
to 52 : when true , 0 ! C;
to 51 : when true , 0 ! A;

state 4 :
to 11 : when true , 0 ! B;
to 9 : when true , 0 ! C;
to 7 : when true , 0 ! A;

state 15 :
to 16 : when true , 0 ! A;

state 8 :
to 14 : when true , 0 ! D;
to 13 : when true , 0 ! C;

state 54 :
to 60 : when true , 0 ! D;
to 59 : when true , 0 ! C;
to 57 : when true , 0 ! A;

state 1 :
to 5 : when true , 0 ! B;
to 4 : when true , 0 ! D;
to 3 : when true , 0 ! C;
to 2 : when true , 0 ! A;

state 3 :
to 10 : when true , 0 ! B;
to 9 : when true , 0 ! D;
to 6 : when true , 0 ! A;

state 16 :
to 17 : when true , 2  ? INIT3;

state 21 :
to 28 : when true , 0 ! A;
to 26 : when true , 0 ! D;
to 24 : when true , 0 ! B;

state 36 :
to 43 : when true , 0 ! B;
to 42 : when true , 0 ! D;
to 39 : when true , 0 ! A;

state 26 :
to 32 : when true , 0 ! A;
to 29 : when true , 0 ! B;

state 63 :
to 65 : when true , 0 ! C;

state 19 :
to 25 : when true , 0 ! A;
to 24 : when true , 0 ! C;
to 23 : when true , 0 ! D;

state 32 :
to 33 : when true , 0 ! B;

state 17 :
to 18 : when true , 1  ? SS;

state 60 :
to 64 : when true , 0 ! C;
to 63 : when true , 0 ! A;

state 27 :
to 32 : when true , 0 ! C;
to 30 : when true , 0 ! B;

state 34 :
to 38 : when true , 0 ! B;
to 37 : when true , 0 ! D;
to 36 : when true , 0 ! C;
to 35 : when true , 0 ! A;

state 22 :
to 28 : when true , 0 ! C;
to 27 : when true , 0 ! D;
to 25 : when true , 0 ! B;

state 28 :
to 32 : when true , 0 ! D;
to 31 : when true , 0 ! B;

state 65 :
to 66 : when true ;

state 44 :
to 48 : when true , 0 ! C;
to 47 : when true , 0 ! A;

state 5 :
to 11 : when true , 0 ! D;
to 10 : when true , 0 ! C;
to 8 : when true , 0 ! A;

state 33 :
to 34 : when true , 1  ? SS;

state 64 :
to 65 : when true , 0 ! A;

state 10 :
to 15 : when true , 0 ! D;
to 13 : when true , 0 ! A;

state 0 :
to 1 : when true , 3 ! INIT1;

state 39 :
to 46 : when true , 0 ! B;
to 45 : when true , 0 ! D;

state 7 :
to 14 : when true , 0 ! B;
to 12 : when true , 0 ! C;

state 20 :
to 27 : when true , 0 ! A;
to 26 : when true , 0 ! C;
to 23 : when true , 0 ! B;

state 25 :
to 31 : when true , 0 ! C;
to 30 : when true , 0 ! D;

state 49 :
to 50 : when true , 1  ? SS;

state 52 :
to 59 : when true , 0 ! B;
to 58 : when true , 0 ! D;
to 55 : when true , 0 ! A;

state 30 :
to 33 : when true , 0 ! C;

state 62 :
to 65 : when true , 0 ! D;

state 14 :
to 16 : when true , 0 ! C;

state 56 :
to 63 : when true , 0 ! B;
to 61 : when true , 0 ! C;

state 31 :
to 33 : when true , 0 ! D;

state 12 :
to 16 : when true , 0 ! B;

state 45 :
to 49 : when true , 0 ! B;

state 23 :
to 30 : when true , 0 ! A;
to 29 : when true , 0 ! C;

state 24 :
to 31 : when true , 0 ! A;
to 29 : when true , 0 ! D;

state 57 :
to 63 : when true , 0 ! D;
to 62 : when true , 0 ! C;

state 11 :
to 15 : when true , 0 ! C;
to 14 : when true , 0 ! A;

state 9 :
to 15 : when true , 0 ! B;
to 12 : when true , 0 ! A;

state 13 :
to 16 : when true , 0 ! D;

state 51 :
to 57 : when true , 0 ! B;
to 56 : when true , 0 ! D;
to 55 : when true , 0 ! C;

state 40 :
to 47 : when true , 0 ! B;
to 45 : when true , 0 ! C;

state 55 :
to 62 : when true , 0 ! B;
to 61 : when true , 0 ! D;

state 59 :
to 64 : when true , 0 ! D;
to 62 : when true , 0 ! A;

state 6 :
to 13 : when true , 0 ! B;
to 12 : when true , 0 ! D;

state 38 :
to 44 : when true , 0 ! D;
to 43 : when true , 0 ! C;
to 41 : when true , 0 ! A;

state 61 :
to 65 : when true , 0 ! B;

state 58 :
to 64 : when true , 0 ! B;
to 61 : when true , 0 ! A;

state 48 :
to 49 : when true , 0 ! A;

state 53 :
to 60 : when true , 0 ! B;
to 58 : when true , 0 ! C;
to 56 : when true , 0 ! A;

state 47 :
to 49 : when true , 0 ! C;

state 37 :
to 44 : when true , 0 ! B;
to 42 : when true , 0 ! C;
to 40 : when true , 0 ! A;

state 41 :
to 47 : when true , 0 ! D;
to 46 : when true , 0 ! C;

state 42 :
to 48 : when true , 0 ! B;
to 45 : when true , 0 ! A;

state 46 :
to 49 : when true , 0 ! D;

state 66 :

state 35 :
to 41 : when true , 0 ! B;
to 40 : when true , 0 ! D;
to 39 : when true , 0 ! C;

state 29 :
to 33 : when true , 0 ! A;

state 43 :
to 48 : when true , 0 ! D;
to 46 : when true , 0 ! A;

state 2 :
to 8 : when true , 0 ! B;
to 7 : when true , 0 ! D;
to 6 : when true , 0 ! C;

automaton A1 :

initial : 0


state 18 :
to 24 : when true , 0  ? A;
to 23 : when true , 0  ? C;
to 22 : when true , 0  ? D;

state 50 :
to 56 : when true , 0  ? B;
to 55 : when true , 0  ? D;
to 54 : when true , 0  ? C;

state 4 :
to 11 : when true , 0  ? B;
to 9 : when true , 0  ? C;
to 7 : when true , 0  ? A;

state 15 :
to 16 : when true , 0  ? A;

state 8 :
to 14 : when true , 0  ? D;
to 13 : when true , 0  ? C;

state 54 :
to 61 : when true , 0  ? B;
to 60 : when true , 0  ? D;

state 1 :
to 5 : when true , 0  ? B;
to 4 : when true , 0  ? D;
to 3 : when true , 0  ? C;
to 2 : when true , 0  ? A;

state 3 :
to 10 : when true , 0  ? B;
to 9 : when true , 0  ? D;
to 6 : when true , 0  ? A;

state 16 :
to 17 : when true , 1 ! SS;

state 21 :
to 27 : when true , 0  ? C;
to 26 : when true , 0  ? D;
to 24 : when true , 0  ? B;

state 36 :
to 43 : when true , 0  ? B;
to 41 : when true , 0  ? C;
to 39 : when true , 0  ? A;

state 26 :
to 31 : when true , 0  ? C;
to 29 : when true , 0  ? B;

state 63 :
to 64 : when true , 0  ? A;

state 19 :
to 26 : when true , 0  ? A;
to 25 : when true , 0  ? C;
to 22 : when true , 0  ? B;

state 32 :
to 33 : when true , 1 ! SS;

state 17 :
to 21 : when true , 0  ? A;
to 20 : when true , 0  ? C;
to 19 : when true , 0  ? D;
to 18 : when true , 0  ? B;

state 60 :
to 64 : when true , 0  ? B;

state 27 :
to 31 : when true , 0  ? D;
to 30 : when true , 0  ? B;

state 34 :
to 40 : when true , 0  ? B;
to 39 : when true , 0  ? D;
to 38 : when true , 0  ? C;

state 22 :
to 29 : when true , 0  ? A;
to 28 : when true , 0  ? C;

state 28 :
to 32 : when true , 0  ? A;

state 65 :

state 44 :
to 48 : when true , 0  ? B;

state 5 :
to 11 : when true , 0  ? D;
to 10 : when true , 0  ? C;
to 8 : when true , 0  ? A;

state 33 :
to 37 : when true , 0  ? B;
to 36 : when true , 0  ? D;
to 35 : when true , 0  ? C;
to 34 : when true , 0  ? A;

state 64 :
to 65 : when true ;

state 10 :
to 15 : when true , 0  ? D;
to 13 : when true , 0  ? A;

state 0 :
to 1 : when true , 4 ! INIT2;

state 39 :
to 46 : when true , 0  ? B;
to 44 : when true , 0  ? C;

state 7 :
to 14 : when true , 0  ? B;
to 12 : when true , 0  ? C;

state 20 :
to 27 : when true , 0  ? A;
to 25 : when true , 0  ? D;
to 23 : when true , 0  ? B;

state 25 :
to 31 : when true , 0  ? A;
to 28 : when true , 0  ? B;

state 49 :
to 53 : when true , 0  ? B;
to 52 : when true , 0  ? D;
to 51 : when true , 0  ? C;
to 50 : when true , 0  ? A;

state 52 :
to 59 : when true , 0  ? B;
to 57 : when true , 0  ? C;
to 55 : when true , 0  ? A;

state 30 :
to 32 : when true , 0  ? D;

state 62 :
to 64 : when true , 0  ? C;

state 14 :
to 16 : when true , 0  ? C;

state 56 :
to 62 : when true , 0  ? D;
to 61 : when true , 0  ? C;

state 31 :
to 32 : when true , 0  ? B;

state 12 :
to 16 : when true , 0  ? B;

state 45 :
to 48 : when true , 0  ? D;

state 23 :
to 30 : when true , 0  ? A;
to 28 : when true , 0  ? D;

state 24 :
to 30 : when true , 0  ? C;
to 29 : when true , 0  ? D;

state 57 :
to 63 : when true , 0  ? B;
to 60 : when true , 0  ? A;

state 11 :
to 15 : when true , 0  ? C;
to 14 : when true , 0  ? A;

state 9 :
to 15 : when true , 0  ? B;
to 12 : when true , 0  ? A;

state 13 :
to 16 : when true , 0  ? D;

state 51 :
to 58 : when true , 0  ? B;
to 57 : when true , 0  ? D;
to 54 : when true , 0  ? A;

state 40 :
to 46 : when true , 0  ? D;
to 45 : when true , 0  ? C;

state 55 :
to 62 : when true , 0  ? B;
to 60 : when true , 0  ? C;

state 59 :
to 63 : when true , 0  ? C;
to 62 : when true , 0  ? A;

state 6 :
to 13 : when true , 0  ? B;
to 12 : when true , 0  ? D;

state 38 :
to 45 : when true , 0  ? B;
to 44 : when true , 0  ? D;

state 61 :
to 64 : when true , 0  ? D;

state 58 :
to 63 : when true , 0  ? D;
to 61 : when true , 0  ? A;

state 48 :
to 49 : when true , 1 ! SS;

state 53 :
to 59 : when true , 0  ? D;
to 58 : when true , 0  ? C;
to 56 : when true , 0  ? A;

state 47 :
to 48 : when true , 0  ? A;

state 37 :
to 43 : when true , 0  ? D;
to 42 : when true , 0  ? C;
to 40 : when true , 0  ? A;

state 41 :
to 47 : when true , 0  ? B;
to 44 : when true , 0  ? A;

state 42 :
to 47 : when true , 0  ? D;
to 45 : when true , 0  ? A;

state 46 :
to 48 : when true , 0  ? C;

state 35 :
to 42 : when true , 0  ? B;
to 41 : when true , 0  ? D;
to 38 : when true , 0  ? A;

state 29 :
to 32 : when true , 0  ? C;

state 43 :
to 47 : when true , 0  ? C;
to 46 : when true , 0  ? A;

state 2 :
to 8 : when true , 0  ? B;
to 7 : when true , 0  ? D;
to 6 : when true , 0  ? C;

automaton A2 :

initial : 0


state 1 :
to 3 : when true , 4  ? INIT2;
to 2 : when true , 3  ? INIT1;

state 0 :
to 1 : when true , 2 ! INIT3;

state 4 :
to 1 : when true , 2 ! INIT3;

state 3 :
to 4 : when true , 3  ? INIT1;

state 2 :
to 4 : when true , 4  ? INIT2;

automaton A3 :

initial : 0


state 18 :
to 25 : when true , 5  ? Z1;
to 24 : when true , 5  ? Z3;
to 21 : when true , 5  ? Z2;

state 50 :
to 57 : when true , 5  ? Z2;
to 56 : when true , 5  ? Z4;
to 53 : when true , 5  ? Z1;

state 4 :
to 10 : when true , 5  ? Z4;
to 9 : when true , 5  ? Z3;
to 7 : when true , 5  ? Z1;

state 15 :
to 16 : when true , 6 ! SYNCHRO;

state 8 :
to 14 : when true , 5  ? Z2;
to 11 : when true , 5  ? Z1;

state 54 :
to 61 : when true , 5  ? Z2;
to 59 : when true , 5  ? Z3;

state 1 :
to 7 : when true , 5  ? Z2;
to 6 : when true , 5  ? Z4;
to 5 : when true , 5  ? Z3;

state 3 :
to 10 : when true , 5  ? Z2;
to 8 : when true , 5  ? Z3;
to 6 : when true , 5  ? Z1;

state 16 :
to 20 : when true , 5  ? Z1;
to 19 : when true , 5  ? Z3;
to 18 : when true , 5  ? Z4;
to 17 : when true , 5  ? Z2;

state 21 :
to 28 : when true , 5  ? Z1;
to 27 : when true , 5  ? Z3;

state 36 :
to 42 : when true , 5  ? Z4;
to 41 : when true , 5  ? Z3;
to 39 : when true , 5  ? Z1;

state 26 :
to 30 : when true , 5  ? Z4;
to 29 : when true , 5  ? Z2;

state 63 :
to 64 : when true ;

state 19 :
to 26 : when true , 5  ? Z1;
to 24 : when true , 5  ? Z4;
to 22 : when true , 5  ? Z2;

state 32 :
to 36 : when true , 5  ? Z2;
to 35 : when true , 5  ? Z4;
to 34 : when true , 5  ? Z3;
to 33 : when true , 5  ? Z1;

state 17 :
to 23 : when true , 5  ? Z1;
to 22 : when true , 5  ? Z3;
to 21 : when true , 5  ? Z4;

state 60 :
to 63 : when true , 5  ? Z4;

state 27 :
to 31 : when true , 5  ? Z1;

state 34 :
to 41 : when true , 5  ? Z2;
to 40 : when true , 5  ? Z4;
to 37 : when true , 5  ? Z1;

state 22 :
to 29 : when true , 5  ? Z1;
to 27 : when true , 5  ? Z4;

state 28 :
to 31 : when true , 5  ? Z3;

state 44 :
to 47 : when true , 5  ? Z4;

state 5 :
to 12 : when true , 5  ? Z2;
to 11 : when true , 5  ? Z4;

state 33 :
to 39 : when true , 5  ? Z2;
to 38 : when true , 5  ? Z4;
to 37 : when true , 5  ? Z3;

state 64 :

state 10 :
to 14 : when true , 5  ? Z3;
to 13 : when true , 5  ? Z1;

state 0 :
to 4 : when true , 5  ? Z2;
to 3 : when true , 5  ? Z4;
to 2 : when true , 5  ? Z3;
to 1 : when true , 5  ? Z1;

state 39 :
to 45 : when true , 5  ? Z4;
to 44 : when true , 5  ? Z3;

state 7 :
to 13 : when true , 5  ? Z4;
to 12 : when true , 5  ? Z3;

state 20 :
to 26 : when true , 5  ? Z3;
to 25 : when true , 5  ? Z4;
to 23 : when true , 5  ? Z2;

state 25 :
to 30 : when true , 5  ? Z3;
to 28 : when true , 5  ? Z2;

state 49 :
to 55 : when true , 5  ? Z2;
to 54 : when true , 5  ? Z4;
to 53 : when true , 5  ? Z3;

state 52 :
to 58 : when true , 5  ? Z4;
to 57 : when true , 5  ? Z3;
to 55 : when true , 5  ? Z1;

state 30 :
to 31 : when true , 5  ? Z2;

state 62 :
to 63 : when true , 5  ? Z1;

state 14 :
to 15 : when true , 5  ? Z1;

state 56 :
to 62 : when true , 5  ? Z2;
to 59 : when true , 5  ? Z1;

state 31 :
to 32 : when true , 6 ! SYNCHRO;

state 12 :
to 15 : when true , 5  ? Z4;

state 45 :
to 47 : when true , 5  ? Z3;

state 23 :
to 29 : when true , 5  ? Z3;
to 28 : when true , 5  ? Z4;

state 24 :
to 30 : when true , 5  ? Z1;
to 27 : when true , 5  ? Z2;

state 57 :
to 62 : when true , 5  ? Z4;
to 60 : when true , 5  ? Z1;

state 11 :
to 15 : when true , 5  ? Z2;

state 9 :
to 14 : when true , 5  ? Z4;
to 12 : when true , 5  ? Z1;

state 13 :
to 15 : when true , 5  ? Z3;

state 51 :
to 58 : when true , 5  ? Z2;
to 56 : when true , 5  ? Z3;
to 54 : when true , 5  ? Z1;

state 40 :
to 46 : when true , 5  ? Z2;
to 43 : when true , 5  ? Z1;

state 55 :
to 61 : when true , 5  ? Z4;
to 60 : when true , 5  ? Z3;

state 59 :
to 63 : when true , 5  ? Z2;

state 6 :
to 13 : when true , 5  ? Z2;
to 11 : when true , 5  ? Z3;

state 38 :
to 45 : when true , 5  ? Z2;
to 43 : when true , 5  ? Z3;

state 61 :
to 63 : when true , 5  ? Z3;

state 58 :
to 62 : when true , 5  ? Z3;
to 61 : when true , 5  ? Z1;

state 48 :
to 52 : when true , 5  ? Z2;
to 51 : when true , 5  ? Z4;
to 50 : when true , 5  ? Z3;
to 49 : when true , 5  ? Z1;

state 53 :
to 60 : when true , 5  ? Z2;
to 59 : when true , 5  ? Z4;

state 47 :
to 48 : when true , 6 ! SYNCHRO;

state 37 :
to 44 : when true , 5  ? Z2;
to 43 : when true , 5  ? Z4;

state 41 :
to 46 : when true , 5  ? Z4;
to 44 : when true , 5  ? Z1;

state 42 :
to 46 : when true , 5  ? Z3;
to 45 : when true , 5  ? Z1;

state 46 :
to 47 : when true , 5  ? Z1;

state 35 :
to 42 : when true , 5  ? Z2;
to 40 : when true , 5  ? Z3;
to 38 : when true , 5  ? Z1;

state 29 :
to 31 : when true , 5  ? Z4;

state 43 :
to 47 : when true , 5  ? Z2;

state 2 :
to 9 : when true , 5  ? Z2;
to 8 : when true , 5  ? Z4;
to 5 : when true , 5  ? Z1;

automaton A4 :

initial : 0


state 18 :
to 25 : when true , 5 ! Z1;
to 24 : when true , 5 ! Z3;
to 21 : when true , 5 ! Z2;

state 50 :
to 57 : when true , 5 ! Z2;
to 56 : when true , 5 ! Z4;
to 53 : when true , 5 ! Z1;

state 4 :
to 10 : when true , 5 ! Z4;
to 9 : when true , 5 ! Z3;
to 7 : when true , 5 ! Z1;

state 15 :
to 16 : when true , 6  ? SYNCHRO;

state 8 :
to 14 : when true , 5 ! Z2;
to 11 : when true , 5 ! Z1;

state 54 :
to 61 : when true , 5 ! Z2;
to 59 : when true , 5 ! Z3;

state 1 :
to 7 : when true , 5 ! Z2;
to 6 : when true , 5 ! Z4;
to 5 : when true , 5 ! Z3;

state 3 :
to 10 : when true , 5 ! Z2;
to 8 : when true , 5 ! Z3;
to 6 : when true , 5 ! Z1;

state 16 :
to 20 : when true , 5 ! Z1;
to 19 : when true , 5 ! Z3;
to 18 : when true , 5 ! Z4;
to 17 : when true , 5 ! Z2;

state 21 :
to 28 : when true , 5 ! Z1;
to 27 : when true , 5 ! Z3;

state 36 :
to 42 : when true , 5 ! Z4;
to 41 : when true , 5 ! Z3;
to 39 : when true , 5 ! Z1;

state 26 :
to 30 : when true , 5 ! Z4;
to 29 : when true , 5 ! Z2;

state 63 :
to 64 : when true ;

state 19 :
to 26 : when true , 5 ! Z1;
to 24 : when true , 5 ! Z4;
to 22 : when true , 5 ! Z2;

state 32 :
to 36 : when true , 5 ! Z2;
to 35 : when true , 5 ! Z4;
to 34 : when true , 5 ! Z3;
to 33 : when true , 5 ! Z1;

state 17 :
to 23 : when true , 5 ! Z1;
to 22 : when true , 5 ! Z3;
to 21 : when true , 5 ! Z4;

state 60 :
to 63 : when true , 5 ! Z4;

state 27 :
to 31 : when true , 5 ! Z1;

state 34 :
to 41 : when true , 5 ! Z2;
to 40 : when true , 5 ! Z4;
to 37 : when true , 5 ! Z1;

state 22 :
to 29 : when true , 5 ! Z1;
to 27 : when true , 5 ! Z4;

state 28 :
to 31 : when true , 5 ! Z3;

state 44 :
to 47 : when true , 5 ! Z4;

state 5 :
to 12 : when true , 5 ! Z2;
to 11 : when true , 5 ! Z4;

state 33 :
to 39 : when true , 5 ! Z2;
to 38 : when true , 5 ! Z4;
to 37 : when true , 5 ! Z3;

state 64 :

state 10 :
to 14 : when true , 5 ! Z3;
to 13 : when true , 5 ! Z1;

state 0 :
to 4 : when true , 5 ! Z2;
to 3 : when true , 5 ! Z4;
to 2 : when true , 5 ! Z3;
to 1 : when true , 5 ! Z1;

state 39 :
to 45 : when true , 5 ! Z4;
to 44 : when true , 5 ! Z3;

state 7 :
to 13 : when true , 5 ! Z4;
to 12 : when true , 5 ! Z3;

state 20 :
to 26 : when true , 5 ! Z3;
to 25 : when true , 5 ! Z4;
to 23 : when true , 5 ! Z2;

state 25 :
to 30 : when true , 5 ! Z3;
to 28 : when true , 5 ! Z2;

state 49 :
to 55 : when true , 5 ! Z2;
to 54 : when true , 5 ! Z4;
to 53 : when true , 5 ! Z3;

state 52 :
to 58 : when true , 5 ! Z4;
to 57 : when true , 5 ! Z3;
to 55 : when true , 5 ! Z1;

state 30 :
to 31 : when true , 5 ! Z2;

state 62 :
to 63 : when true , 5 ! Z1;

state 14 :
to 15 : when true , 5 ! Z1;

state 56 :
to 62 : when true , 5 ! Z2;
to 59 : when true , 5 ! Z1;

state 31 :
to 32 : when true , 6  ? SYNCHRO;

state 12 :
to 15 : when true , 5 ! Z4;

state 45 :
to 47 : when true , 5 ! Z3;

state 23 :
to 29 : when true , 5 ! Z3;
to 28 : when true , 5 ! Z4;

state 24 :
to 30 : when true , 5 ! Z1;
to 27 : when true , 5 ! Z2;

state 57 :
to 62 : when true , 5 ! Z4;
to 60 : when true , 5 ! Z1;

state 11 :
to 15 : when true , 5 ! Z2;

state 9 :
to 14 : when true , 5 ! Z4;
to 12 : when true , 5 ! Z1;

state 13 :
to 15 : when true , 5 ! Z3;

state 51 :
to 58 : when true , 5 ! Z2;
to 56 : when true , 5 ! Z3;
to 54 : when true , 5 ! Z1;

state 40 :
to 46 : when true , 5 ! Z2;
to 43 : when true , 5 ! Z1;

state 55 :
to 61 : when true , 5 ! Z4;
to 60 : when true , 5 ! Z3;

state 59 :
to 63 : when true , 5 ! Z2;

state 6 :
to 13 : when true , 5 ! Z2;
to 11 : when true , 5 ! Z3;

state 38 :
to 45 : when true , 5 ! Z2;
to 43 : when true , 5 ! Z3;

state 61 :
to 63 : when true , 5 ! Z3;

state 58 :
to 62 : when true , 5 ! Z3;
to 61 : when true , 5 ! Z1;

state 48 :
to 52 : when true , 5 ! Z2;
to 51 : when true , 5 ! Z4;
to 50 : when true , 5 ! Z3;
to 49 : when true , 5 ! Z1;

state 53 :
to 60 : when true , 5 ! Z2;
to 59 : when true , 5 ! Z4;

state 47 :
to 48 : when true , 6  ? SYNCHRO;

state 37 :
to 44 : when true , 5 ! Z2;
to 43 : when true , 5 ! Z4;

state 41 :
to 46 : when true , 5 ! Z4;
to 44 : when true , 5 ! Z1;

state 42 :
to 46 : when true , 5 ! Z3;
to 45 : when true , 5 ! Z1;

state 46 :
to 47 : when true , 5 ! Z1;

state 35 :
to 42 : when true , 5 ! Z2;
to 40 : when true , 5 ! Z3;
to 38 : when true , 5 ! Z1;

state 29 :
to 31 : when true , 5 ! Z4;

state 43 :
to 47 : when true , 5 ! Z2;

state 2 :
to 9 : when true , 5 ! Z2;
to 8 : when true , 5 ! Z4;
to 5 : when true , 5 ! Z1;
