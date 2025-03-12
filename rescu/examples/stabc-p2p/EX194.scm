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
to 54 : when true , 0 ! A;
to 53 : when true , 0 ! C;
to 52 : when true , 0 ! D;
to 51 : when true , 0 ! B;

state 80 :
to 81 : when true , 0 ! A;

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
to 60 : when true , 0 ! C;
to 59 : when true , 0 ! D;
to 57 : when true , 0 ! B;

state 1 :
to 5 : when true , 0 ! B;
to 4 : when true , 0 ! D;
to 3 : when true , 0 ! C;
to 2 : when true , 0 ! A;

state 77 :
to 81 : when true , 0 ! B;

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

state 68 :
to 75 : when true , 0 ! B;
to 74 : when true , 0 ! D;
to 71 : when true , 0 ! A;

state 85 :
to 92 : when true , 0 ! B;
to 90 : when true , 0 ! C;
to 88 : when true , 0 ! A;

state 26 :
to 32 : when true , 0 ! A;
to 29 : when true , 0 ! B;

state 63 :
to 65 : when true , 0 ! D;

state 19 :
to 25 : when true , 0 ! A;
to 24 : when true , 0 ! C;
to 23 : when true , 0 ! D;

state 32 :
to 33 : when true , 0 ! B;

state 17 :
to 18 : when true , 1  ? SS;

state 60 :
to 64 : when true , 0 ! D;
to 63 : when true , 0 ! B;

state 27 :
to 32 : when true , 0 ! C;
to 30 : when true , 0 ! B;

state 87 :
to 94 : when true , 0 ! B;
to 93 : when true , 0 ! D;

state 84 :
to 91 : when true , 0 ! B;
to 90 : when true , 0 ! D;
to 87 : when true , 0 ! A;

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
to 66 : when true , 1  ? SS;

state 44 :
to 48 : when true , 0 ! C;
to 47 : when true , 0 ! A;

state 5 :
to 11 : when true , 0 ! D;
to 10 : when true , 0 ! C;
to 8 : when true , 0 ! A;

state 72 :
to 79 : when true , 0 ! B;
to 77 : when true , 0 ! C;

state 33 :
to 34 : when true , 1  ? SS;

state 64 :
to 65 : when true , 0 ! B;

state 93 :
to 97 : when true , 0 ! B;

state 92 :
to 96 : when true , 0 ! C;
to 95 : when true , 0 ! A;

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

state 88 :
to 95 : when true , 0 ! B;
to 93 : when true , 0 ! C;

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
to 59 : when true , 0 ! A;
to 58 : when true , 0 ! C;
to 55 : when true , 0 ! B;

state 30 :
to 33 : when true , 0 ! C;

state 62 :
to 65 : when true , 0 ! C;

state 14 :
to 16 : when true , 0 ! C;

state 82 :
to 86 : when true , 0 ! B;
to 85 : when true , 0 ! D;
to 84 : when true , 0 ! C;
to 83 : when true , 0 ! A;

state 89 :
to 95 : when true , 0 ! D;
to 94 : when true , 0 ! C;

state 56 :
to 63 : when true , 0 ! A;
to 61 : when true , 0 ! D;

state 79 :
to 81 : when true , 0 ! C;

state 31 :
to 33 : when true , 0 ! D;

state 12 :
to 16 : when true , 0 ! B;

state 69 :
to 76 : when true , 0 ! B;
to 74 : when true , 0 ! C;
to 72 : when true , 0 ! A;

state 96 :
to 97 : when true , 0 ! A;

state 45 :
to 49 : when true , 0 ! B;

state 78 :
to 81 : when true , 0 ! D;

state 81 :
to 82 : when true , 1  ? SS;

state 23 :
to 30 : when true , 0 ! A;
to 29 : when true , 0 ! C;

state 70 :
to 76 : when true , 0 ! D;
to 75 : when true , 0 ! C;
to 73 : when true , 0 ! A;

state 24 :
to 31 : when true , 0 ! A;
to 29 : when true , 0 ! D;

state 94 :
to 97 : when true , 0 ! D;

state 76 :
to 80 : when true , 0 ! C;
to 79 : when true , 0 ! A;

state 57 :
to 63 : when true , 0 ! C;
to 62 : when true , 0 ! D;

state 98 :

state 11 :
to 15 : when true , 0 ! C;
to 14 : when true , 0 ! A;

state 9 :
to 15 : when true , 0 ! B;
to 12 : when true , 0 ! A;

state 13 :
to 16 : when true , 0 ! D;

state 51 :
to 57 : when true , 0 ! A;
to 56 : when true , 0 ! C;
to 55 : when true , 0 ! D;

state 90 :
to 96 : when true , 0 ! B;
to 93 : when true , 0 ! A;

state 40 :
to 47 : when true , 0 ! B;
to 45 : when true , 0 ! C;

state 67 :
to 73 : when true , 0 ! B;
to 72 : when true , 0 ! D;
to 71 : when true , 0 ! C;

state 55 :
to 62 : when true , 0 ! A;
to 61 : when true , 0 ! C;

state 59 :
to 64 : when true , 0 ! C;
to 62 : when true , 0 ! B;

state 6 :
to 13 : when true , 0 ! B;
to 12 : when true , 0 ! D;

state 38 :
to 44 : when true , 0 ! D;
to 43 : when true , 0 ! C;
to 41 : when true , 0 ! A;

state 61 :
to 65 : when true , 0 ! A;

state 58 :
to 64 : when true , 0 ! A;
to 61 : when true , 0 ! B;

state 74 :
to 80 : when true , 0 ! B;
to 77 : when true , 0 ! A;

state 75 :
to 80 : when true , 0 ! D;
to 78 : when true , 0 ! A;

state 48 :
to 49 : when true , 0 ! A;

state 71 :
to 78 : when true , 0 ! B;
to 77 : when true , 0 ! D;

state 53 :
to 60 : when true , 0 ! A;
to 58 : when true , 0 ! D;
to 56 : when true , 0 ! B;

state 47 :
to 49 : when true , 0 ! C;

state 73 :
to 79 : when true , 0 ! D;
to 78 : when true , 0 ! C;

state 91 :
to 96 : when true , 0 ! D;
to 94 : when true , 0 ! A;

state 97 :
to 98 : when true ;

state 37 :
to 44 : when true , 0 ! B;
to 42 : when true , 0 ! C;
to 40 : when true , 0 ! A;

state 41 :
to 47 : when true , 0 ! D;
to 46 : when true , 0 ! C;

state 95 :
to 97 : when true , 0 ! C;

state 42 :
to 48 : when true , 0 ! B;
to 45 : when true , 0 ! A;

state 46 :
to 49 : when true , 0 ! D;

state 66 :
to 70 : when true , 0 ! B;
to 69 : when true , 0 ! D;
to 68 : when true , 0 ! C;
to 67 : when true , 0 ! A;

state 83 :
to 89 : when true , 0 ! B;
to 88 : when true , 0 ! D;
to 87 : when true , 0 ! C;

state 35 :
to 41 : when true , 0 ! B;
to 40 : when true , 0 ! D;
to 39 : when true , 0 ! C;

state 29 :
to 33 : when true , 0 ! A;

state 43 :
to 48 : when true , 0 ! D;
to 46 : when true , 0 ! A;

state 86 :
to 92 : when true , 0 ! D;
to 91 : when true , 0 ! C;
to 89 : when true , 0 ! A;

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
to 56 : when true , 0  ? A;
to 55 : when true , 0  ? C;
to 54 : when true , 0  ? D;

state 80 :
to 81 : when true , 1 ! SS;

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
to 61 : when true , 0  ? A;
to 60 : when true , 0  ? C;

state 1 :
to 5 : when true , 0  ? B;
to 4 : when true , 0  ? D;
to 3 : when true , 0  ? C;
to 2 : when true , 0  ? A;

state 77 :
to 80 : when true , 0  ? D;

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

state 68 :
to 75 : when true , 0  ? B;
to 73 : when true , 0  ? C;
to 71 : when true , 0  ? A;

state 85 :
to 91 : when true , 0  ? D;
to 90 : when true , 0  ? C;
to 88 : when true , 0  ? A;

state 26 :
to 31 : when true , 0  ? C;
to 29 : when true , 0  ? B;

state 63 :
to 64 : when true , 0  ? B;

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
to 64 : when true , 0  ? A;

state 27 :
to 31 : when true , 0  ? D;
to 30 : when true , 0  ? B;

state 87 :
to 94 : when true , 0  ? B;
to 92 : when true , 0  ? C;

state 84 :
to 91 : when true , 0  ? B;
to 89 : when true , 0  ? C;
to 87 : when true , 0  ? A;

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
to 69 : when true , 0  ? B;
to 68 : when true , 0  ? D;
to 67 : when true , 0  ? C;
to 66 : when true , 0  ? A;

state 44 :
to 48 : when true , 0  ? B;

state 5 :
to 11 : when true , 0  ? D;
to 10 : when true , 0  ? C;
to 8 : when true , 0  ? A;

state 72 :
to 78 : when true , 0  ? D;
to 77 : when true , 0  ? C;

state 33 :
to 37 : when true , 0  ? B;
to 36 : when true , 0  ? D;
to 35 : when true , 0  ? C;
to 34 : when true , 0  ? A;

state 64 :
to 65 : when true , 1 ! SS;

state 93 :
to 96 : when true , 0  ? D;

state 92 :
to 96 : when true , 0  ? B;

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

state 88 :
to 94 : when true , 0  ? D;
to 93 : when true , 0  ? C;

state 20 :
to 27 : when true , 0  ? A;
to 25 : when true , 0  ? D;
to 23 : when true , 0  ? B;

state 25 :
to 31 : when true , 0  ? A;
to 28 : when true , 0  ? B;

state 49 :
to 53 : when true , 0  ? A;
to 52 : when true , 0  ? C;
to 51 : when true , 0  ? D;
to 50 : when true , 0  ? B;

state 52 :
to 59 : when true , 0  ? A;
to 57 : when true , 0  ? D;
to 55 : when true , 0  ? B;

state 30 :
to 32 : when true , 0  ? D;

state 62 :
to 64 : when true , 0  ? D;

state 14 :
to 16 : when true , 0  ? C;

state 82 :
to 88 : when true , 0  ? B;
to 87 : when true , 0  ? D;
to 86 : when true , 0  ? C;

state 89 :
to 95 : when true , 0  ? B;
to 92 : when true , 0  ? A;

state 56 :
to 62 : when true , 0  ? C;
to 61 : when true , 0  ? D;

state 79 :
to 80 : when true , 0  ? A;

state 31 :
to 32 : when true , 0  ? B;

state 12 :
to 16 : when true , 0  ? B;

state 69 :
to 75 : when true , 0  ? D;
to 74 : when true , 0  ? C;
to 72 : when true , 0  ? A;

state 96 :
to 97 : when true ;

state 45 :
to 48 : when true , 0  ? D;

state 78 :
to 80 : when true , 0  ? C;

state 81 :
to 85 : when true , 0  ? B;
to 84 : when true , 0  ? D;
to 83 : when true , 0  ? C;
to 82 : when true , 0  ? A;

state 23 :
to 30 : when true , 0  ? A;
to 28 : when true , 0  ? D;

state 70 :
to 77 : when true , 0  ? B;
to 76 : when true , 0  ? D;

state 24 :
to 30 : when true , 0  ? C;
to 29 : when true , 0  ? D;

state 94 :
to 96 : when true , 0  ? C;

state 76 :
to 80 : when true , 0  ? B;

state 57 :
to 63 : when true , 0  ? A;
to 60 : when true , 0  ? B;

state 11 :
to 15 : when true , 0  ? C;
to 14 : when true , 0  ? A;

state 9 :
to 15 : when true , 0  ? B;
to 12 : when true , 0  ? A;

state 13 :
to 16 : when true , 0  ? D;

state 51 :
to 58 : when true , 0  ? A;
to 57 : when true , 0  ? C;
to 54 : when true , 0  ? B;

state 90 :
to 95 : when true , 0  ? D;
to 93 : when true , 0  ? A;

state 40 :
to 46 : when true , 0  ? D;
to 45 : when true , 0  ? C;

state 67 :
to 74 : when true , 0  ? B;
to 73 : when true , 0  ? D;
to 70 : when true , 0  ? A;

state 55 :
to 62 : when true , 0  ? A;
to 60 : when true , 0  ? D;

state 59 :
to 63 : when true , 0  ? D;
to 62 : when true , 0  ? B;

state 6 :
to 13 : when true , 0  ? B;
to 12 : when true , 0  ? D;

state 38 :
to 45 : when true , 0  ? B;
to 44 : when true , 0  ? D;

state 61 :
to 64 : when true , 0  ? C;

state 58 :
to 63 : when true , 0  ? C;
to 61 : when true , 0  ? B;

state 74 :
to 79 : when true , 0  ? D;
to 77 : when true , 0  ? A;

state 75 :
to 79 : when true , 0  ? C;
to 78 : when true , 0  ? A;

state 48 :
to 49 : when true , 1 ! SS;

state 71 :
to 78 : when true , 0  ? B;
to 76 : when true , 0  ? C;

state 53 :
to 59 : when true , 0  ? C;
to 58 : when true , 0  ? D;
to 56 : when true , 0  ? B;

state 47 :
to 48 : when true , 0  ? A;

state 73 :
to 79 : when true , 0  ? B;
to 76 : when true , 0  ? A;

state 91 :
to 95 : when true , 0  ? C;
to 94 : when true , 0  ? A;

state 97 :

state 37 :
to 43 : when true , 0  ? D;
to 42 : when true , 0  ? C;
to 40 : when true , 0  ? A;

state 41 :
to 47 : when true , 0  ? B;
to 44 : when true , 0  ? A;

state 95 :
to 96 : when true , 0  ? A;

state 42 :
to 47 : when true , 0  ? D;
to 45 : when true , 0  ? A;

state 46 :
to 48 : when true , 0  ? C;

state 66 :
to 72 : when true , 0  ? B;
to 71 : when true , 0  ? D;
to 70 : when true , 0  ? C;

state 83 :
to 90 : when true , 0  ? B;
to 89 : when true , 0  ? D;
to 86 : when true , 0  ? A;

state 35 :
to 42 : when true , 0  ? B;
to 41 : when true , 0  ? D;
to 38 : when true , 0  ? A;

state 29 :
to 32 : when true , 0  ? C;

state 43 :
to 47 : when true , 0  ? C;
to 46 : when true , 0  ? A;

state 86 :
to 93 : when true , 0  ? B;
to 92 : when true , 0  ? D;

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
to 57 : when true , 5  ? Z1;
to 56 : when true , 5  ? Z3;
to 53 : when true , 5  ? Z2;

state 80 :
to 84 : when true , 5  ? Z2;
to 83 : when true , 5  ? Z4;
to 82 : when true , 5  ? Z3;
to 81 : when true , 5  ? Z1;

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
to 61 : when true , 5  ? Z1;
to 59 : when true , 5  ? Z4;

state 1 :
to 7 : when true , 5  ? Z2;
to 6 : when true , 5  ? Z4;
to 5 : when true , 5  ? Z3;

state 77 :
to 79 : when true , 5  ? Z3;

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

state 68 :
to 74 : when true , 5  ? Z4;
to 73 : when true , 5  ? Z3;
to 71 : when true , 5  ? Z1;

state 85 :
to 92 : when true , 5  ? Z2;
to 91 : when true , 5  ? Z4;

state 26 :
to 30 : when true , 5  ? Z4;
to 29 : when true , 5  ? Z2;

state 63 :
to 64 : when true , 6 ! SYNCHRO;

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
to 63 : when true , 5  ? Z3;

state 27 :
to 31 : when true , 5  ? Z1;

state 87 :
to 93 : when true , 5  ? Z4;
to 92 : when true , 5  ? Z3;

state 84 :
to 90 : when true , 5  ? Z4;
to 89 : when true , 5  ? Z3;
to 87 : when true , 5  ? Z1;

state 34 :
to 41 : when true , 5  ? Z2;
to 40 : when true , 5  ? Z4;
to 37 : when true , 5  ? Z1;

state 22 :
to 29 : when true , 5  ? Z1;
to 27 : when true , 5  ? Z4;

state 28 :
to 31 : when true , 5  ? Z3;

state 65 :
to 71 : when true , 5  ? Z2;
to 70 : when true , 5  ? Z4;
to 69 : when true , 5  ? Z3;

state 44 :
to 47 : when true , 5  ? Z4;

state 5 :
to 12 : when true , 5  ? Z2;
to 11 : when true , 5  ? Z4;

state 72 :
to 78 : when true , 5  ? Z2;
to 75 : when true , 5  ? Z1;

state 33 :
to 39 : when true , 5  ? Z2;
to 38 : when true , 5  ? Z4;
to 37 : when true , 5  ? Z3;

state 64 :
to 68 : when true , 5  ? Z2;
to 67 : when true , 5  ? Z4;
to 66 : when true , 5  ? Z3;
to 65 : when true , 5  ? Z1;

state 93 :
to 95 : when true , 5  ? Z3;

state 92 :
to 95 : when true , 5  ? Z4;

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

state 88 :
to 94 : when true , 5  ? Z2;
to 91 : when true , 5  ? Z1;

state 20 :
to 26 : when true , 5  ? Z3;
to 25 : when true , 5  ? Z4;
to 23 : when true , 5  ? Z2;

state 25 :
to 30 : when true , 5  ? Z3;
to 28 : when true , 5  ? Z2;

state 49 :
to 55 : when true , 5  ? Z1;
to 54 : when true , 5  ? Z3;
to 53 : when true , 5  ? Z4;

state 52 :
to 58 : when true , 5  ? Z3;
to 57 : when true , 5  ? Z4;
to 55 : when true , 5  ? Z2;

state 30 :
to 31 : when true , 5  ? Z2;

state 62 :
to 63 : when true , 5  ? Z2;

state 14 :
to 15 : when true , 5  ? Z1;

state 82 :
to 89 : when true , 5  ? Z2;
to 88 : when true , 5  ? Z4;
to 85 : when true , 5  ? Z1;

state 89 :
to 94 : when true , 5  ? Z4;
to 92 : when true , 5  ? Z1;

state 56 :
to 62 : when true , 5  ? Z1;
to 59 : when true , 5  ? Z2;

state 79 :
to 80 : when true , 6 ! SYNCHRO;

state 31 :
to 32 : when true , 6 ! SYNCHRO;

state 12 :
to 15 : when true , 5  ? Z4;

state 69 :
to 76 : when true , 5  ? Z2;
to 75 : when true , 5  ? Z4;

state 96 :

state 45 :
to 47 : when true , 5  ? Z3;

state 78 :
to 79 : when true , 5  ? Z1;

state 81 :
to 87 : when true , 5  ? Z2;
to 86 : when true , 5  ? Z4;
to 85 : when true , 5  ? Z3;

state 23 :
to 29 : when true , 5  ? Z3;
to 28 : when true , 5  ? Z4;

state 70 :
to 77 : when true , 5  ? Z2;
to 75 : when true , 5  ? Z3;

state 24 :
to 30 : when true , 5  ? Z1;
to 27 : when true , 5  ? Z2;

state 94 :
to 95 : when true , 5  ? Z1;

state 76 :
to 79 : when true , 5  ? Z4;

state 57 :
to 62 : when true , 5  ? Z3;
to 60 : when true , 5  ? Z2;

state 11 :
to 15 : when true , 5  ? Z2;

state 9 :
to 14 : when true , 5  ? Z4;
to 12 : when true , 5  ? Z1;

state 13 :
to 15 : when true , 5  ? Z3;

state 51 :
to 58 : when true , 5  ? Z1;
to 56 : when true , 5  ? Z4;
to 54 : when true , 5  ? Z2;

state 90 :
to 94 : when true , 5  ? Z3;
to 93 : when true , 5  ? Z1;

state 40 :
to 46 : when true , 5  ? Z2;
to 43 : when true , 5  ? Z1;

state 67 :
to 74 : when true , 5  ? Z2;
to 72 : when true , 5  ? Z3;
to 70 : when true , 5  ? Z1;

state 55 :
to 61 : when true , 5  ? Z3;
to 60 : when true , 5  ? Z4;

state 59 :
to 63 : when true , 5  ? Z1;

state 6 :
to 13 : when true , 5  ? Z2;
to 11 : when true , 5  ? Z3;

state 38 :
to 45 : when true , 5  ? Z2;
to 43 : when true , 5  ? Z3;

state 61 :
to 63 : when true , 5  ? Z4;

state 58 :
to 62 : when true , 5  ? Z4;
to 61 : when true , 5  ? Z2;

state 74 :
to 78 : when true , 5  ? Z3;
to 77 : when true , 5  ? Z1;

state 75 :
to 79 : when true , 5  ? Z2;

state 48 :
to 52 : when true , 5  ? Z1;
to 51 : when true , 5  ? Z3;
to 50 : when true , 5  ? Z4;
to 49 : when true , 5  ? Z2;

state 71 :
to 77 : when true , 5  ? Z4;
to 76 : when true , 5  ? Z3;

state 53 :
to 60 : when true , 5  ? Z1;
to 59 : when true , 5  ? Z3;

state 47 :
to 48 : when true , 6 ! SYNCHRO;

state 73 :
to 78 : when true , 5  ? Z4;
to 76 : when true , 5  ? Z1;

state 91 :
to 95 : when true , 5  ? Z2;

state 37 :
to 44 : when true , 5  ? Z2;
to 43 : when true , 5  ? Z4;

state 41 :
to 46 : when true , 5  ? Z4;
to 44 : when true , 5  ? Z1;

state 95 :
to 96 : when true ;

state 42 :
to 46 : when true , 5  ? Z3;
to 45 : when true , 5  ? Z1;

state 46 :
to 47 : when true , 5  ? Z1;

state 66 :
to 73 : when true , 5  ? Z2;
to 72 : when true , 5  ? Z4;
to 69 : when true , 5  ? Z1;

state 83 :
to 90 : when true , 5  ? Z2;
to 88 : when true , 5  ? Z3;
to 86 : when true , 5  ? Z1;

state 35 :
to 42 : when true , 5  ? Z2;
to 40 : when true , 5  ? Z3;
to 38 : when true , 5  ? Z1;

state 29 :
to 31 : when true , 5  ? Z4;

state 43 :
to 47 : when true , 5  ? Z2;

state 86 :
to 93 : when true , 5  ? Z2;
to 91 : when true , 5  ? Z3;

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
to 57 : when true , 5 ! Z1;
to 56 : when true , 5 ! Z3;
to 53 : when true , 5 ! Z2;

state 80 :
to 84 : when true , 5 ! Z2;
to 83 : when true , 5 ! Z4;
to 82 : when true , 5 ! Z3;
to 81 : when true , 5 ! Z1;

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
to 61 : when true , 5 ! Z1;
to 59 : when true , 5 ! Z4;

state 1 :
to 7 : when true , 5 ! Z2;
to 6 : when true , 5 ! Z4;
to 5 : when true , 5 ! Z3;

state 77 :
to 79 : when true , 5 ! Z3;

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

state 68 :
to 74 : when true , 5 ! Z4;
to 73 : when true , 5 ! Z3;
to 71 : when true , 5 ! Z1;

state 85 :
to 92 : when true , 5 ! Z2;
to 91 : when true , 5 ! Z4;

state 26 :
to 30 : when true , 5 ! Z4;
to 29 : when true , 5 ! Z2;

state 63 :
to 64 : when true , 6  ? SYNCHRO;

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
to 63 : when true , 5 ! Z3;

state 27 :
to 31 : when true , 5 ! Z1;

state 87 :
to 93 : when true , 5 ! Z4;
to 92 : when true , 5 ! Z3;

state 84 :
to 90 : when true , 5 ! Z4;
to 89 : when true , 5 ! Z3;
to 87 : when true , 5 ! Z1;

state 34 :
to 41 : when true , 5 ! Z2;
to 40 : when true , 5 ! Z4;
to 37 : when true , 5 ! Z1;

state 22 :
to 29 : when true , 5 ! Z1;
to 27 : when true , 5 ! Z4;

state 28 :
to 31 : when true , 5 ! Z3;

state 65 :
to 71 : when true , 5 ! Z2;
to 70 : when true , 5 ! Z4;
to 69 : when true , 5 ! Z3;

state 44 :
to 47 : when true , 5 ! Z4;

state 5 :
to 12 : when true , 5 ! Z2;
to 11 : when true , 5 ! Z4;

state 72 :
to 78 : when true , 5 ! Z2;
to 75 : when true , 5 ! Z1;

state 33 :
to 39 : when true , 5 ! Z2;
to 38 : when true , 5 ! Z4;
to 37 : when true , 5 ! Z3;

state 64 :
to 68 : when true , 5 ! Z2;
to 67 : when true , 5 ! Z4;
to 66 : when true , 5 ! Z3;
to 65 : when true , 5 ! Z1;

state 93 :
to 95 : when true , 5 ! Z3;

state 92 :
to 95 : when true , 5 ! Z4;

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

state 88 :
to 94 : when true , 5 ! Z2;
to 91 : when true , 5 ! Z1;

state 20 :
to 26 : when true , 5 ! Z3;
to 25 : when true , 5 ! Z4;
to 23 : when true , 5 ! Z2;

state 25 :
to 30 : when true , 5 ! Z3;
to 28 : when true , 5 ! Z2;

state 49 :
to 55 : when true , 5 ! Z1;
to 54 : when true , 5 ! Z3;
to 53 : when true , 5 ! Z4;

state 52 :
to 58 : when true , 5 ! Z3;
to 57 : when true , 5 ! Z4;
to 55 : when true , 5 ! Z2;

state 30 :
to 31 : when true , 5 ! Z2;

state 62 :
to 63 : when true , 5 ! Z2;

state 14 :
to 15 : when true , 5 ! Z1;

state 82 :
to 89 : when true , 5 ! Z2;
to 88 : when true , 5 ! Z4;
to 85 : when true , 5 ! Z1;

state 89 :
to 94 : when true , 5 ! Z4;
to 92 : when true , 5 ! Z1;

state 56 :
to 62 : when true , 5 ! Z1;
to 59 : when true , 5 ! Z2;

state 79 :
to 80 : when true , 6  ? SYNCHRO;

state 31 :
to 32 : when true , 6  ? SYNCHRO;

state 12 :
to 15 : when true , 5 ! Z4;

state 69 :
to 76 : when true , 5 ! Z2;
to 75 : when true , 5 ! Z4;

state 96 :

state 45 :
to 47 : when true , 5 ! Z3;

state 78 :
to 79 : when true , 5 ! Z1;

state 81 :
to 87 : when true , 5 ! Z2;
to 86 : when true , 5 ! Z4;
to 85 : when true , 5 ! Z3;

state 23 :
to 29 : when true , 5 ! Z3;
to 28 : when true , 5 ! Z4;

state 70 :
to 77 : when true , 5 ! Z2;
to 75 : when true , 5 ! Z3;

state 24 :
to 30 : when true , 5 ! Z1;
to 27 : when true , 5 ! Z2;

state 94 :
to 95 : when true , 5 ! Z1;

state 76 :
to 79 : when true , 5 ! Z4;

state 57 :
to 62 : when true , 5 ! Z3;
to 60 : when true , 5 ! Z2;

state 11 :
to 15 : when true , 5 ! Z2;

state 9 :
to 14 : when true , 5 ! Z4;
to 12 : when true , 5 ! Z1;

state 13 :
to 15 : when true , 5 ! Z3;

state 51 :
to 58 : when true , 5 ! Z1;
to 56 : when true , 5 ! Z4;
to 54 : when true , 5 ! Z2;

state 90 :
to 94 : when true , 5 ! Z3;
to 93 : when true , 5 ! Z1;

state 40 :
to 46 : when true , 5 ! Z2;
to 43 : when true , 5 ! Z1;

state 67 :
to 74 : when true , 5 ! Z2;
to 72 : when true , 5 ! Z3;
to 70 : when true , 5 ! Z1;

state 55 :
to 61 : when true , 5 ! Z3;
to 60 : when true , 5 ! Z4;

state 59 :
to 63 : when true , 5 ! Z1;

state 6 :
to 13 : when true , 5 ! Z2;
to 11 : when true , 5 ! Z3;

state 38 :
to 45 : when true , 5 ! Z2;
to 43 : when true , 5 ! Z3;

state 61 :
to 63 : when true , 5 ! Z4;

state 58 :
to 62 : when true , 5 ! Z4;
to 61 : when true , 5 ! Z2;

state 74 :
to 78 : when true , 5 ! Z3;
to 77 : when true , 5 ! Z1;

state 75 :
to 79 : when true , 5 ! Z2;

state 48 :
to 52 : when true , 5 ! Z1;
to 51 : when true , 5 ! Z3;
to 50 : when true , 5 ! Z4;
to 49 : when true , 5 ! Z2;

state 71 :
to 77 : when true , 5 ! Z4;
to 76 : when true , 5 ! Z3;

state 53 :
to 60 : when true , 5 ! Z1;
to 59 : when true , 5 ! Z3;

state 47 :
to 48 : when true , 6  ? SYNCHRO;

state 73 :
to 78 : when true , 5 ! Z4;
to 76 : when true , 5 ! Z1;

state 91 :
to 95 : when true , 5 ! Z2;

state 37 :
to 44 : when true , 5 ! Z2;
to 43 : when true , 5 ! Z4;

state 41 :
to 46 : when true , 5 ! Z4;
to 44 : when true , 5 ! Z1;

state 95 :
to 96 : when true ;

state 42 :
to 46 : when true , 5 ! Z3;
to 45 : when true , 5 ! Z1;

state 46 :
to 47 : when true , 5 ! Z1;

state 66 :
to 73 : when true , 5 ! Z2;
to 72 : when true , 5 ! Z4;
to 69 : when true , 5 ! Z1;

state 83 :
to 90 : when true , 5 ! Z2;
to 88 : when true , 5 ! Z3;
to 86 : when true , 5 ! Z1;

state 35 :
to 42 : when true , 5 ! Z2;
to 40 : when true , 5 ! Z3;
to 38 : when true , 5 ! Z1;

state 29 :
to 31 : when true , 5 ! Z4;

state 43 :
to 47 : when true , 5 ! Z2;

state 86 :
to 93 : when true , 5 ! Z2;
to 91 : when true , 5 ! Z3;

state 2 :
to 9 : when true , 5 ! Z2;
to 8 : when true , 5 ! Z4;
to 5 : when true , 5 ! Z1;
