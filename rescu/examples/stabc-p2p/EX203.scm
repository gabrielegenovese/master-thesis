/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 4 ;
parameters :
real INIT2 ;
real A ;
real INIT3 ;
real INIT1 ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 0 ! A;

state 0 :
to 1 : when true , 2 ! INIT1;

state 4 :

state 3 :
to 4 : when true , 0 ! A;

state 2 :
to 3 : when true , 0 ! A;

automaton A1 :

initial : 0


state 1 :
to 1 : when true , 1  ? INIT3;
to 1 : when true , 0  ? A;

state 0 :
to 1 : when true , 3 ! INIT2;

automaton A2 :

initial : 0


state 1 :
to 1 : when true , 3  ? INIT2;
to 1 : when true , 2  ? INIT1;

state 0 :
to 1 : when true , 1 ! INIT3;
