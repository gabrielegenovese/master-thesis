/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real B ;
real C ;
real D ;
real A ;
real LOG ;
real INIT ;

automaton A0 :

initial : 0


state 18 :
to 29 : when true , 1 ! D;
to 28 : when true , 1 ! C;
to 7 : when true , 1 ! B;

state 25 :
to 24 : when true , 1 ! C;
to 32 : when true , 1 ! B;
to 24 : when true , 1 ! A;

state 4 :
to 11 : when true , 1 ! D;
to 3 : when true , 1 ! B;
to 3 : when true , 1 ! A;

state 30 :
to 34 : when true , 1 ! A;

state 14 :
to 3 : when true , 1 ! D;
to 3 : when true , 1 ! C;
to 3 : when true , 1 ! B;
to 3 : when true , 1 ! A;

state 15 :
to 24 : when true , 1 ! C;
to 25 : when true , 1 ! B;
to 24 : when true , 1 ! A;

state 31 :
to 3 : when true , 1 ! D;

state 12 :
to 3 : when true , 1 ! D;
to 3 : when true , 1 ! C;
to 3 : when true , 1 ! B;
to 3 : when true , 1 ! A;

state 8 :
to 19 : when true , 1 ! D;
to 7 : when true , 1 ! B;
to 7 : when true , 1 ! A;

state 1 :
to 2 : when true , 0  ? LOG;

state 23 :
to 31 : when true , 1 ! A;

state 3 :
to 10 : when true , 1 ! D;
to 9 : when true , 1 ! C;
to 8 : when true , 1 ! B;
to 7 : when true , 1 ! A;

state 16 :
to 26 : when true , 1 ! D;
to 7 : when true , 1 ! B;
to 7 : when true , 1 ! A;

state 24 :
to 7 : when true , 1 ! D;
to 7 : when true , 1 ! B;
to 7 : when true , 1 ! A;

state 21 :
to 30 : when true , 1 ! C;

state 36 :
to 35 : when true , 1 ! C;
to 35 : when true , 1 ! B;
to 35 : when true , 1 ! A;

state 26 :
to 7 : when true , 1 ! C;
to 7 : when true , 1 ! B;
to 7 : when true , 1 ! A;

state 11 :
to 3 : when true , 1 ! C;
to 3 : when true , 1 ! B;
to 3 : when true , 1 ! A;

state 9 :
to 7 : when true , 1 ! D;
to 20 : when true , 1 ! C;
to 7 : when true , 1 ! A;

state 13 :
to 23 : when true , 1 ! C;

state 19 :
to 7 : when true , 1 ! C;
to 7 : when true , 1 ! B;
to 7 : when true , 1 ! A;

state 32 :
to 24 : when true , 1 ! C;
to 24 : when true , 1 ! B;
to 24 : when true , 1 ! D;

state 17 :
to 7 : when true , 1 ! D;
to 27 : when true , 1 ! C;
to 7 : when true , 1 ! A;

state 6 :
to 14 : when true , 1 ! D;
to 13 : when true , 1 ! C;
to 3 : when true , 1 ! B;

state 27 :
to 7 : when true , 1 ! D;
to 7 : when true , 1 ! C;
to 7 : when true , 1 ! A;

state 34 :
to 7 : when true , 1 ! D;

state 22 :
to 7 : when true , 1 ! D;
to 7 : when true , 1 ! D;
to 7 : when true , 1 ! A;
to 7 : when true , 1 ! A;

state 28 :
to 33 : when true , 1 ! C;

state 5 :
to 3 : when true , 1 ! D;
to 12 : when true , 1 ! C;
to 3 : when true , 1 ! A;

state 33 :
to 35 : when true , 1 ! B;
to 35 : when true , 1 ! C;
to 36 : when true , 1 ! D;
to 35 : when true , 1 ! A;

state 37 :
to 7 : when true , 1 ! D;

state 10 :
to 22 : when true , 1 ! D;
to 21 : when true , 1 ! C;
to 7 : when true , 1 ! B;

state 0 :
to 1 : when true , 1 ! INIT;

state 7 :
to 18 : when true , 1 ! D;
to 17 : when true , 1 ! C;
to 16 : when true , 1 ! B;
to 15 : when true , 1 ! A;

state 35 :
to 37 : when true , 1 ! A;

state 29 :
to 7 : when true , 1 ! D;
to 7 : when true , 1 ! C;
to 7 : when true , 1 ! A;

state 2 :
to 6 : when true , 1 ! D;
to 5 : when true , 1 ! C;
to 4 : when true , 1 ! B;
to 3 : when true , 1 ! A;

state 20 :
to 7 : when true , 1 ! D;
to 7 : when true , 1 ! C;
to 7 : when true , 1 ! B;
to 7 : when true , 1 ! A;

automaton A1 :

initial : 0


state 18 :
to 2 : when true , 1  ? D;
to 2 : when true , 1  ? C;
to 2 : when true , 1  ? B;
to 2 : when true , 1  ? A;

state 25 :
to 26 : when true , 1  ? D;
to 26 : when true , 1  ? C;
to 26 : when true , 1  ? B;
to 26 : when true , 1  ? A;

state 4 :
to 10 : when true , 1  ? D;
to 9 : when true , 1  ? C;
to 8 : when true , 1  ? B;
to 2 : when true , 1  ? A;

state 14 :
to 2 : when true , 1  ? D;
to 2 : when true , 1  ? C;
to 2 : when true , 1  ? B;
to 2 : when true , 1  ? A;

state 15 :
to 2 : when true , 1  ? D;
to 2 : when true , 1  ? C;
to 2 : when true , 1  ? B;
to 2 : when true , 1  ? A;

state 12 :
to 11 : when true , 1  ? D;
to 22 : when true , 1  ? C;
to 11 : when true , 1  ? B;
to 11 : when true , 1  ? A;

state 8 :
to 2 : when true , 1  ? D;
to 19 : when true , 1  ? C;
to 18 : when true , 1  ? B;
to 2 : when true , 1  ? A;

state 1 :
to 2 : when true , 1  ? INIT;

state 23 :
to 2 : when true , 1  ? D;
to 2 : when true , 1  ? C;
to 2 : when true , 1  ? B;
to 2 : when true , 1  ? A;

state 3 :
to 2 : when true , 1  ? D;
to 2 : when true , 1  ? C;
to 7 : when true , 1  ? B;
to 6 : when true , 1  ? A;

state 16 :
to 2 : when true , 1  ? D;
to 2 : when true , 1  ? C;
to 2 : when true , 1  ? B;
to 2 : when true , 1  ? A;

state 24 :
to 2 : when true , 1  ? D;
to 2 : when true , 1  ? C;
to 2 : when true , 1  ? B;
to 2 : when true , 1  ? A;

state 21 :
to 25 : when true , 1  ? D;
to 25 : when true , 1  ? C;
to 25 : when true , 1  ? B;
to 25 : when true , 1  ? A;

state 26 :
to 27 : when true , 1  ? D;
to 27 : when true , 1  ? C;
to 27 : when true , 1  ? B;
to 27 : when true , 1  ? A;

state 11 :
to 21 : when true , 1  ? D;
to 21 : when true , 1  ? C;
to 21 : when true , 1  ? B;
to 21 : when true , 1  ? A;

state 9 :
to 2 : when true , 1  ? D;
to 2 : when true , 1  ? C;
to 2 : when true , 1  ? B;
to 2 : when true , 1  ? A;

state 13 :
to 11 : when true , 1  ? D;
to 11 : when true , 1  ? C;
to 11 : when true , 1  ? B;
to 11 : when true , 1  ? A;

state 19 :
to 2 : when true , 1  ? D;
to 2 : when true , 1  ? C;
to 2 : when true , 1  ? B;
to 2 : when true , 1  ? A;

state 17 :
to 2 : when true , 1  ? D;
to 2 : when true , 1  ? C;
to 2 : when true , 1  ? B;
to 2 : when true , 1  ? A;

state 6 :
to 2 : when true , 1  ? D;
to 2 : when true , 1  ? C;
to 14 : when true , 1  ? B;
to 2 : when true , 1  ? A;

state 27 :
to 2 : when true , 1  ? D;
to 2 : when true , 1  ? C;
to 2 : when true , 1  ? B;
to 2 : when true , 1  ? A;

state 22 :
to 11 : when true , 1  ? D;
to 11 : when true , 1  ? C;
to 11 : when true , 1  ? B;
to 11 : when true , 1  ? A;

state 5 :
to 11 : when true , 1  ? D;
to 13 : when true , 1  ? C;
to 12 : when true , 1  ? B;
to 11 : when true , 1  ? A;

state 10 :
to 2 : when true , 1  ? D;
to 2 : when true , 1  ? C;
to 2 : when true , 1  ? B;
to 20 : when true , 1  ? A;

state 0 :
to 1 : when true , 0 ! LOG;

state 7 :
to 17 : when true , 1  ? D;
to 2 : when true , 1  ? C;
to 16 : when true , 1  ? B;
to 15 : when true , 1  ? A;

state 20 :
to 24 : when true , 1  ? D;
to 2 : when true , 1  ? C;
to 23 : when true , 1  ? B;
to 2 : when true , 1  ? A;

state 2 :
to 5 : when true , 1  ? D;
to 4 : when true , 1  ? C;
to 3 : when true , 1  ? B;
to 2 : when true , 1  ? A;
