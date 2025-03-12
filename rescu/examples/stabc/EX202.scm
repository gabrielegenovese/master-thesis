/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real B ;
real BBB ;
real INIT2 ;
real B1 ;
real D ;
real SS ;
real A ;
real B4 ;
real A1 ;
real INIT1 ;
real INIT3 ;

automaton A0 :

initial : 0


state 18 :
to 29 : when true , 0  ? INIT3;
to 27 : when true , 0  ? SS;
to 24 : when true , 0  ? D;

state 25 :
to 33 : when true , 0  ? B4;
to 32 : when true , 0  ? SS;

state 4 :
to 9 : when true , 0  ? A;
to 8 : when true , 0  ? INIT3;
to 7 : when true , 0  ? B4;
to 6 : when true , 0  ? SS;
to 5 : when true , 0  ? D;

state 30 :
to 35 : when true , 0  ? A;

state 14 :
to 27 : when true , 0  ? A;
to 26 : when true , 0  ? INIT3;
to 20 : when true , 0  ? D;

state 15 :
to 28 : when true , 0  ? A;
to 26 : when true , 0  ? B4;
to 21 : when true , 0  ? D;

state 31 :
to 35 : when true , 0  ? INIT3;

state 12 :
to 25 : when true , 0  ? A;
to 23 : when true , 0  ? B4;
to 21 : when true , 0  ? SS;

state 8 :
to 19 : when true , 0  ? A;
to 17 : when true , 0  ? B4;
to 15 : when true , 0  ? SS;
to 12 : when true , 0  ? D;

state 1 :
to 2 : when true , 1 ! B;

state 23 :
to 33 : when true , 0  ? A;
to 30 : when true , 0  ? SS;

state 3 :
to 4 : when true , 1 ! B1;

state 16 :
to 28 : when true , 0  ? INIT3;
to 27 : when true , 0  ? B4;
to 22 : when true , 0  ? D;

state 24 :
to 33 : when true , 0  ? INIT3;
to 31 : when true , 0  ? SS;

state 21 :
to 32 : when true , 0  ? A;
to 30 : when true , 0  ? B4;

state 36 :

state 26 :
to 34 : when true , 0  ? A;
to 30 : when true , 0  ? D;

state 11 :
to 24 : when true , 0  ? A;
to 23 : when true , 0  ? INIT3;
to 20 : when true , 0  ? SS;

state 9 :
to 19 : when true , 0  ? INIT3;
to 18 : when true , 0  ? B4;
to 16 : when true , 0  ? SS;
to 13 : when true , 0  ? D;

state 13 :
to 25 : when true , 0  ? INIT3;
to 24 : when true , 0  ? B4;
to 22 : when true , 0  ? SS;

state 19 :
to 29 : when true , 0  ? B4;
to 28 : when true , 0  ? SS;
to 25 : when true , 0  ? D;

state 32 :
to 35 : when true , 0  ? B4;

state 17 :
to 29 : when true , 0  ? A;
to 26 : when true , 0  ? SS;
to 23 : when true , 0  ? D;

state 6 :
to 16 : when true , 0  ? A;
to 15 : when true , 0  ? INIT3;
to 14 : when true , 0  ? B4;
to 10 : when true , 0  ? D;

state 27 :
to 34 : when true , 0  ? INIT3;
to 31 : when true , 0  ? D;

state 34 :
to 35 : when true , 0  ? D;

state 22 :
to 32 : when true , 0  ? INIT3;
to 31 : when true , 0  ? B4;

state 28 :
to 34 : when true , 0  ? B4;
to 32 : when true , 0  ? D;

state 5 :
to 13 : when true , 0  ? A;
to 12 : when true , 0  ? INIT3;
to 11 : when true , 0  ? B4;
to 10 : when true , 0  ? SS;

state 33 :
to 35 : when true , 0  ? SS;

state 10 :
to 22 : when true , 0  ? A;
to 21 : when true , 0  ? INIT3;
to 20 : when true , 0  ? B4;

state 0 :
to 1 : when true , 2 ! INIT1;

state 7 :
to 18 : when true , 0  ? A;
to 17 : when true , 0  ? INIT3;
to 14 : when true , 0  ? SS;
to 11 : when true , 0  ? D;

state 35 :
to 36 : when true ;

state 29 :
to 34 : when true , 0  ? SS;
to 33 : when true , 0  ? D;

state 2 :
to 3 : when true , 1 ! A1;

state 20 :
to 31 : when true , 0  ? A;
to 30 : when true , 0  ? INIT3;

automaton A1 :

initial : 0


state 18 :
to 19 : when true , 1  ? BBB;

state 19 :
to 20 : when true ;

state 17 :
to 19 : when true , 1  ? B1;

state 4 :
to 8 : when true , 1  ? B;
to 7 : when true , 1  ? A1;
to 6 : when true , 1  ? B1;
to 5 : when true , 1  ? BBB;

state 14 :
to 18 : when true , 1  ? B1;
to 17 : when true , 1  ? BBB;

state 6 :
to 13 : when true , 1  ? B;
to 12 : when true , 1  ? A1;
to 9 : when true , 1  ? BBB;

state 15 :
to 19 : when true , 1  ? B;

state 12 :
to 18 : when true , 1  ? B;
to 15 : when true , 1  ? BBB;

state 8 :
to 14 : when true , 1  ? A1;
to 13 : when true , 1  ? B1;
to 11 : when true , 1  ? BBB;

state 1 :
to 2 : when true , 0 ! A;

state 5 :
to 11 : when true , 1  ? B;
to 10 : when true , 1  ? A1;
to 9 : when true , 1  ? B1;

state 3 :
to 4 : when true , 0 ! SS;

state 16 :
to 19 : when true , 1  ? A1;

state 10 :
to 17 : when true , 1  ? B;
to 15 : when true , 1  ? B1;

state 0 :
to 1 : when true , 2 ! INIT2;

state 11 :
to 17 : when true , 1  ? A1;
to 16 : when true , 1  ? B1;

state 9 :
to 16 : when true , 1  ? B;
to 15 : when true , 1  ? A1;

state 13 :
to 18 : when true , 1  ? A1;
to 16 : when true , 1  ? BBB;

state 7 :
to 14 : when true , 1  ? B;
to 12 : when true , 1  ? B1;
to 10 : when true , 1  ? BBB;

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
to 6 : when true , 2  ? INIT1;

state 5 :
to 6 : when true , 2  ? INIT2;

state 3 :
to 5 : when true , 2  ? INIT1;
to 4 : when true , 2  ? INIT2;

state 7 :

state 2 :
to 3 : when true , 0 ! B4;

state 6 :
to 7 : when true ;
