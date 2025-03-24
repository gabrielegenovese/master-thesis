/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real B ;
real D ;
real INIT ;
real A ;
real LOG ;
real C ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 0  ? INIT;

state 0 :
to 1 : when true , 1 ! LOG;

state 2 :
to 2 : when true , 0  ? D;
to 2 : when true , 0  ? C;
to 2 : when true , 0  ? B;
to 2 : when true , 0  ? A;

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
