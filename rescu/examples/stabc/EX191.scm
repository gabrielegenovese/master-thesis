/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 5 ;
parameters :
real B ;
real INIT2 ;
real C ;
real D ;
real Z3 ;
real INIT1 ;
real Z1 ;
real Z2 ;
real INIT3 ;
real Z4 ;
real SS ;
real A ;
real SYNCHRO ;

automaton A0 :

initial : 0


state 18 :
to 22 : when true , 1 ! B;
to 21 : when true , 1 ! D;
to 20 : when true , 1 ! C;
to 19 : when true , 1 ! A;

state 25 :
to 31 : when true , 1 ! D;
to 30 : when true , 1 ! C;

state 4 :
to 11 : when true , 1 ! B;
to 9 : when true , 1 ! C;
to 7 : when true , 1 ! A;

state 30 :
to 33 : when true , 1 ! D;

state 14 :
to 16 : when true , 1 ! C;

state 15 :
to 16 : when true , 1 ! A;

state 31 :
to 33 : when true , 1 ! C;

state 12 :
to 16 : when true , 1 ! B;

state 8 :
to 14 : when true , 1 ! D;
to 13 : when true , 1 ! C;

state 1 :
to 5 : when true , 1 ! B;
to 4 : when true , 1 ! D;
to 3 : when true , 1 ! C;
to 2 : when true , 1 ! A;

state 23 :
to 30 : when true , 1 ! B;
to 29 : when true , 1 ! D;

state 3 :
to 10 : when true , 1 ! B;
to 9 : when true , 1 ! D;
to 6 : when true , 1 ! A;

state 16 :
to 17 : when true , 0  ? INIT3;

state 24 :
to 31 : when true , 1 ! B;
to 29 : when true , 1 ! C;

state 21 :
to 28 : when true , 1 ! B;
to 26 : when true , 1 ! C;
to 24 : when true , 1 ! A;

state 26 :
to 32 : when true , 1 ! B;
to 29 : when true , 1 ! A;

state 11 :
to 15 : when true , 1 ! C;
to 14 : when true , 1 ! A;

state 9 :
to 15 : when true , 1 ! B;
to 12 : when true , 1 ! A;

state 13 :
to 16 : when true , 1 ! D;

state 19 :
to 25 : when true , 1 ! B;
to 24 : when true , 1 ! D;
to 23 : when true , 1 ! C;

state 32 :
to 33 : when true , 1 ! A;

state 17 :
to 18 : when true , 0  ? SS;

state 6 :
to 13 : when true , 1 ! B;
to 12 : when true , 1 ! D;

state 27 :
to 32 : when true , 1 ! D;
to 30 : when true , 1 ! A;

state 34 :

state 22 :
to 28 : when true , 1 ! D;
to 27 : when true , 1 ! C;
to 25 : when true , 1 ! A;

state 28 :
to 32 : when true , 1 ! C;
to 31 : when true , 1 ! A;

state 5 :
to 11 : when true , 1 ! D;
to 10 : when true , 1 ! C;
to 8 : when true , 1 ! A;

state 33 :
to 34 : when true ;

state 10 :
to 15 : when true , 1 ! D;
to 13 : when true , 1 ! A;

state 0 :
to 1 : when true , 2 ! INIT1;

state 7 :
to 14 : when true , 1 ! B;
to 12 : when true , 1 ! C;

state 29 :
to 33 : when true , 1 ! B;

state 2 :
to 8 : when true , 1 ! B;
to 7 : when true , 1 ! D;
to 6 : when true , 1 ! C;

state 20 :
to 27 : when true , 1 ! B;
to 26 : when true , 1 ! D;
to 23 : when true , 1 ! A;

automaton A1 :

initial : 0


state 18 :
to 24 : when true , 1  ? B;
to 23 : when true , 1  ? D;
to 22 : when true , 1  ? C;

state 25 :
to 31 : when true , 1  ? B;
to 28 : when true , 1  ? A;

state 4 :
to 11 : when true , 1  ? B;
to 9 : when true , 1  ? C;
to 7 : when true , 1  ? A;

state 30 :
to 32 : when true , 1  ? C;

state 14 :
to 16 : when true , 1  ? C;

state 15 :
to 16 : when true , 1  ? A;

state 31 :
to 32 : when true , 1  ? A;

state 12 :
to 16 : when true , 1  ? B;

state 8 :
to 14 : when true , 1  ? D;
to 13 : when true , 1  ? C;

state 1 :
to 5 : when true , 1  ? B;
to 4 : when true , 1  ? D;
to 3 : when true , 1  ? C;
to 2 : when true , 1  ? A;

state 23 :
to 30 : when true , 1  ? B;
to 28 : when true , 1  ? C;

state 3 :
to 10 : when true , 1  ? B;
to 9 : when true , 1  ? D;
to 6 : when true , 1  ? A;

state 16 :
to 17 : when true , 0 ! SS;

state 24 :
to 30 : when true , 1  ? D;
to 29 : when true , 1  ? C;

state 21 :
to 27 : when true , 1  ? D;
to 26 : when true , 1  ? C;
to 24 : when true , 1  ? A;

state 26 :
to 31 : when true , 1  ? D;
to 29 : when true , 1  ? A;

state 11 :
to 15 : when true , 1  ? C;
to 14 : when true , 1  ? A;

state 9 :
to 15 : when true , 1  ? B;
to 12 : when true , 1  ? A;

state 13 :
to 16 : when true , 1  ? D;

state 19 :
to 26 : when true , 1  ? B;
to 25 : when true , 1  ? D;
to 22 : when true , 1  ? A;

state 32 :
to 33 : when true ;

state 17 :
to 21 : when true , 1  ? B;
to 20 : when true , 1  ? D;
to 19 : when true , 1  ? C;
to 18 : when true , 1  ? A;

state 6 :
to 13 : when true , 1  ? B;
to 12 : when true , 1  ? D;

state 27 :
to 31 : when true , 1  ? C;
to 30 : when true , 1  ? A;

state 22 :
to 29 : when true , 1  ? B;
to 28 : when true , 1  ? D;

state 28 :
to 32 : when true , 1  ? B;

state 5 :
to 11 : when true , 1  ? D;
to 10 : when true , 1  ? C;
to 8 : when true , 1  ? A;

state 33 :

state 10 :
to 15 : when true , 1  ? D;
to 13 : when true , 1  ? A;

state 0 :
to 1 : when true , 2 ! INIT2;

state 7 :
to 14 : when true , 1  ? B;
to 12 : when true , 1  ? C;

state 29 :
to 32 : when true , 1  ? D;

state 2 :
to 8 : when true , 1  ? B;
to 7 : when true , 1  ? D;
to 6 : when true , 1  ? C;

state 20 :
to 27 : when true , 1  ? B;
to 25 : when true , 1  ? C;
to 23 : when true , 1  ? A;

automaton A2 :

initial : 0


state 1 :
to 3 : when true , 2  ? INIT2;
to 2 : when true , 2  ? INIT1;

state 0 :
to 1 : when true , 0 ! INIT3;

state 4 :
to 1 : when true , 0 ! INIT3;

state 3 :
to 4 : when true , 2  ? INIT1;

state 2 :
to 4 : when true , 2  ? INIT2;

automaton A3 :

initial : 0


state 18 :
to 25 : when true , 3  ? Z2;
to 24 : when true , 3  ? Z4;
to 21 : when true , 3  ? Z1;

state 25 :
to 30 : when true , 3  ? Z4;
to 28 : when true , 3  ? Z1;

state 4 :
to 10 : when true , 3  ? Z4;
to 9 : when true , 3  ? Z3;
to 7 : when true , 3  ? Z1;

state 30 :
to 31 : when true , 3  ? Z1;

state 14 :
to 15 : when true , 3  ? Z1;

state 15 :
to 16 : when true , 4 ! SYNCHRO;

state 31 :
to 32 : when true ;

state 12 :
to 15 : when true , 3  ? Z4;

state 8 :
to 14 : when true , 3  ? Z2;
to 11 : when true , 3  ? Z1;

state 1 :
to 7 : when true , 3  ? Z2;
to 6 : when true , 3  ? Z4;
to 5 : when true , 3  ? Z3;

state 23 :
to 29 : when true , 3  ? Z4;
to 28 : when true , 3  ? Z3;

state 3 :
to 10 : when true , 3  ? Z2;
to 8 : when true , 3  ? Z3;
to 6 : when true , 3  ? Z1;

state 16 :
to 20 : when true , 3  ? Z2;
to 19 : when true , 3  ? Z4;
to 18 : when true , 3  ? Z3;
to 17 : when true , 3  ? Z1;

state 24 :
to 30 : when true , 3  ? Z2;
to 27 : when true , 3  ? Z1;

state 21 :
to 28 : when true , 3  ? Z2;
to 27 : when true , 3  ? Z4;

state 26 :
to 30 : when true , 3  ? Z3;
to 29 : when true , 3  ? Z1;

state 11 :
to 15 : when true , 3  ? Z2;

state 9 :
to 14 : when true , 3  ? Z4;
to 12 : when true , 3  ? Z1;

state 13 :
to 15 : when true , 3  ? Z3;

state 19 :
to 26 : when true , 3  ? Z2;
to 24 : when true , 3  ? Z3;
to 22 : when true , 3  ? Z1;

state 32 :

state 17 :
to 23 : when true , 3  ? Z2;
to 22 : when true , 3  ? Z4;
to 21 : when true , 3  ? Z3;

state 6 :
to 13 : when true , 3  ? Z2;
to 11 : when true , 3  ? Z3;

state 27 :
to 31 : when true , 3  ? Z2;

state 22 :
to 29 : when true , 3  ? Z2;
to 27 : when true , 3  ? Z3;

state 28 :
to 31 : when true , 3  ? Z4;

state 5 :
to 12 : when true , 3  ? Z2;
to 11 : when true , 3  ? Z4;

state 10 :
to 14 : when true , 3  ? Z3;
to 13 : when true , 3  ? Z1;

state 0 :
to 4 : when true , 3  ? Z2;
to 3 : when true , 3  ? Z4;
to 2 : when true , 3  ? Z3;
to 1 : when true , 3  ? Z1;

state 7 :
to 13 : when true , 3  ? Z4;
to 12 : when true , 3  ? Z3;

state 29 :
to 31 : when true , 3  ? Z3;

state 2 :
to 9 : when true , 3  ? Z2;
to 8 : when true , 3  ? Z4;
to 5 : when true , 3  ? Z1;

state 20 :
to 26 : when true , 3  ? Z4;
to 25 : when true , 3  ? Z3;
to 23 : when true , 3  ? Z1;

automaton A4 :

initial : 0


state 18 :
to 25 : when true , 3 ! Z2;
to 24 : when true , 3 ! Z4;
to 21 : when true , 3 ! Z1;

state 25 :
to 30 : when true , 3 ! Z4;
to 28 : when true , 3 ! Z1;

state 4 :
to 10 : when true , 3 ! Z4;
to 9 : when true , 3 ! Z3;
to 7 : when true , 3 ! Z1;

state 30 :
to 31 : when true , 3 ! Z1;

state 14 :
to 15 : when true , 3 ! Z1;

state 15 :
to 16 : when true , 4  ? SYNCHRO;

state 31 :
to 32 : when true ;

state 12 :
to 15 : when true , 3 ! Z4;

state 8 :
to 14 : when true , 3 ! Z2;
to 11 : when true , 3 ! Z1;

state 1 :
to 7 : when true , 3 ! Z2;
to 6 : when true , 3 ! Z4;
to 5 : when true , 3 ! Z3;

state 23 :
to 29 : when true , 3 ! Z4;
to 28 : when true , 3 ! Z3;

state 3 :
to 10 : when true , 3 ! Z2;
to 8 : when true , 3 ! Z3;
to 6 : when true , 3 ! Z1;

state 16 :
to 20 : when true , 3 ! Z2;
to 19 : when true , 3 ! Z4;
to 18 : when true , 3 ! Z3;
to 17 : when true , 3 ! Z1;

state 24 :
to 30 : when true , 3 ! Z2;
to 27 : when true , 3 ! Z1;

state 21 :
to 28 : when true , 3 ! Z2;
to 27 : when true , 3 ! Z4;

state 26 :
to 30 : when true , 3 ! Z3;
to 29 : when true , 3 ! Z1;

state 11 :
to 15 : when true , 3 ! Z2;

state 9 :
to 14 : when true , 3 ! Z4;
to 12 : when true , 3 ! Z1;

state 13 :
to 15 : when true , 3 ! Z3;

state 19 :
to 26 : when true , 3 ! Z2;
to 24 : when true , 3 ! Z3;
to 22 : when true , 3 ! Z1;

state 32 :

state 17 :
to 23 : when true , 3 ! Z2;
to 22 : when true , 3 ! Z4;
to 21 : when true , 3 ! Z3;

state 6 :
to 13 : when true , 3 ! Z2;
to 11 : when true , 3 ! Z3;

state 27 :
to 31 : when true , 3 ! Z2;

state 22 :
to 29 : when true , 3 ! Z2;
to 27 : when true , 3 ! Z3;

state 28 :
to 31 : when true , 3 ! Z4;

state 5 :
to 12 : when true , 3 ! Z2;
to 11 : when true , 3 ! Z4;

state 10 :
to 14 : when true , 3 ! Z3;
to 13 : when true , 3 ! Z1;

state 0 :
to 4 : when true , 3 ! Z2;
to 3 : when true , 3 ! Z4;
to 2 : when true , 3 ! Z3;
to 1 : when true , 3 ! Z1;

state 7 :
to 13 : when true , 3 ! Z4;
to 12 : when true , 3 ! Z3;

state 29 :
to 31 : when true , 3 ! Z3;

state 2 :
to 9 : when true , 3 ! Z2;
to 8 : when true , 3 ! Z4;
to 5 : when true , 3 ! Z1;

state 20 :
to 26 : when true , 3 ! Z4;
to 25 : when true , 3 ! Z3;
to 23 : when true , 3 ! Z1;
