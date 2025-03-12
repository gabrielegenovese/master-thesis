/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real B ;
real INIT2 ;
real A ;
real C ;
real INIT1 ;
real D ;
real INIT3 ;

automaton A0 :

initial : 0


state 18 :

state 17 :
to 18 : when true ;

state 4 :
to 11 : when true , 1 ! B;
to 9 : when true , 1 ! C;
to 7 : when true , 1 ! A;

state 14 :
to 16 : when true , 1 ! C;

state 6 :
to 13 : when true , 1 ! B;
to 12 : when true , 1 ! D;

state 15 :
to 16 : when true , 1 ! A;

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

state 5 :
to 11 : when true , 1 ! D;
to 10 : when true , 1 ! C;
to 8 : when true , 1 ! A;

state 3 :
to 10 : when true , 1 ! B;
to 9 : when true , 1 ! D;
to 6 : when true , 1 ! A;

state 16 :
to 17 : when true , 0  ? INIT3;

state 10 :
to 15 : when true , 1 ! D;
to 13 : when true , 1 ! A;

state 0 :
to 1 : when true , 2 ! INIT1;

state 11 :
to 15 : when true , 1 ! C;
to 14 : when true , 1 ! A;

state 9 :
to 15 : when true , 1 ! B;
to 12 : when true , 1 ! A;

state 13 :
to 16 : when true , 1 ! D;

state 7 :
to 14 : when true , 1 ! B;
to 12 : when true , 1 ! C;

state 2 :
to 8 : when true , 1 ! B;
to 7 : when true , 1 ! D;
to 6 : when true , 1 ! C;

automaton A1 :

initial : 0


state 17 :

state 4 :
to 11 : when true , 1  ? A;
to 9 : when true , 1  ? D;
to 7 : when true , 1  ? B;

state 14 :
to 16 : when true , 1  ? D;

state 6 :
to 13 : when true , 1  ? A;
to 12 : when true , 1  ? C;

state 15 :
to 16 : when true , 1  ? B;

state 12 :
to 16 : when true , 1  ? A;

state 8 :
to 14 : when true , 1  ? C;
to 13 : when true , 1  ? D;

state 1 :
to 5 : when true , 1  ? A;
to 4 : when true , 1  ? C;
to 3 : when true , 1  ? D;
to 2 : when true , 1  ? B;

state 5 :
to 11 : when true , 1  ? C;
to 10 : when true , 1  ? D;
to 8 : when true , 1  ? B;

state 3 :
to 10 : when true , 1  ? A;
to 9 : when true , 1  ? C;
to 6 : when true , 1  ? B;

state 16 :
to 17 : when true ;

state 10 :
to 15 : when true , 1  ? C;
to 13 : when true , 1  ? B;

state 0 :
to 1 : when true , 2 ! INIT2;

state 11 :
to 15 : when true , 1  ? D;
to 14 : when true , 1  ? B;

state 9 :
to 15 : when true , 1  ? A;
to 12 : when true , 1  ? B;

state 13 :
to 16 : when true , 1  ? C;

state 7 :
to 14 : when true , 1  ? A;
to 12 : when true , 1  ? D;

state 2 :
to 8 : when true , 1  ? A;
to 7 : when true , 1  ? C;
to 6 : when true , 1  ? D;

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
