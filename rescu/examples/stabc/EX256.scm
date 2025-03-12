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
to 2 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 2 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 4 :
to 10 : when true , 0  ? D;
to 9 : when true , 0  ? C;
to 8 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 14 :
to 2 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 2 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 15 :
to 2 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 2 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 12 :
to 2 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 2 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 8 :
to 2 : when true , 0  ? D;
to 18 : when true , 0  ? C;
to 17 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 1 :
to 2 : when true , 0  ? INIT;

state 3 :
to 2 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 7 : when true , 0  ? B;
to 6 : when true , 0  ? A;

state 16 :
to 2 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 2 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 21 :
to 2 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 2 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 11 :
to 2 : when true , 0  ? D;
to 20 : when true , 0  ? C;
to 2 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 9 :
to 2 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 2 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 13 :
to 2 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 2 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 19 :
to 22 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 21 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 17 :
to 2 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 2 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 6 :
to 2 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 13 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 22 :
to 2 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 2 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 5 :
to 2 : when true , 0  ? D;
to 12 : when true , 0  ? C;
to 11 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 10 :
to 2 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 2 : when true , 0  ? B;
to 19 : when true , 0  ? A;

state 0 :
to 1 : when true , 1 ! LOG;

state 7 :
to 16 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 15 : when true , 0  ? B;
to 14 : when true , 0  ? A;

state 20 :
to 2 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 2 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 2 :
to 5 : when true , 0  ? D;
to 4 : when true , 0  ? C;
to 3 : when true , 0  ? B;
to 2 : when true , 0  ? A;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1  ? LOG;

state 4 :
to 2 : when true , 0 ! D;
to 7 : when true , 0 ! C;
to 2 : when true , 0 ! A;

state 5 :
to 9 : when true , 0 ! D;
to 8 : when true , 0 ! C;
to 2 : when true , 0 ! B;

state 3 :
to 6 : when true , 0 ! D;
to 2 : when true , 0 ! B;
to 2 : when true , 0 ! A;

state 6 :
to 2 : when true , 0 ! C;
to 2 : when true , 0 ! B;
to 2 : when true , 0 ! A;

state 10 :
to 11 : when true , 0 ! A;

state 0 :
to 1 : when true , 0 ! INIT;

state 11 :
to 2 : when true , 0 ! D;

state 9 :
to 2 : when true , 0 ! D;
to 2 : when true , 0 ! C;
to 2 : when true , 0 ! B;
to 2 : when true , 0 ! A;

state 7 :
to 2 : when true , 0 ! D;
to 2 : when true , 0 ! C;
to 2 : when true , 0 ! B;
to 2 : when true , 0 ! A;

state 8 :
to 10 : when true , 0 ! C;

state 2 :
to 5 : when true , 0 ! D;
to 4 : when true , 0 ! C;
to 3 : when true , 0 ! B;
to 2 : when true , 0 ! A;
