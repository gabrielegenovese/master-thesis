/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real B ;
real A ;
real LOG ;
real C ;
real D ;
real INIT ;

automaton A0 :

initial : 0


state 4 :
to 2 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 8 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 6 :
to 10 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 2 : when true , 0  ? B;
to 9 : when true , 0  ? A;

state 8 :
to 2 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 2 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 1 :
to 2 : when true , 0  ? INIT;

state 5 :
to 2 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 2 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 3 :
to 2 : when true , 0  ? D;
to 7 : when true , 0  ? C;
to 2 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 10 :
to 2 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 2 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 0 :
to 1 : when true , 1 ! LOG;

state 11 :
to 2 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 2 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 9 :
to 2 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 2 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 7 :
to 11 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 2 : when true , 0  ? B;
to 2 : when true , 0  ? A;

state 2 :
to 6 : when true , 0  ? D;
to 5 : when true , 0  ? C;
to 4 : when true , 0  ? B;
to 3 : when true , 0  ? A;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1  ? LOG;

state 0 :
to 1 : when true , 0 ! INIT;

state 4 :
to 2 : when true , 0 ! C;

state 3 :
to 2 : when true , 0 ! B;
to 4 : when true , 0 ! A;

state 2 :
to 4 : when true , 0 ! D;
to 3 : when true , 0 ! A;
