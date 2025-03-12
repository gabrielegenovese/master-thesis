/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real A ;
real EEEE ;
real C ;

automaton A0 :

initial : 0


state 1 :
to 0 : when true , 1  ? EEEE;

state 0 :
to 1 : when true , 0 ! A;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 0  ? A;

state 0 :
to 1 : when true , 2 ! C;

state 2 :
to 0 : when true , 1 ! EEEE;

automaton A2 :

initial : 0


state 0 :
to 0 : when true , 2  ? C;
