/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real D1 ;
real B ;
real A ;
real D2 ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 0  ? D1;

state 0 :
to 1 : when true , 1 ! A;

state 3 :
to 0 : when true , 1 ! B;

state 2 :
to 3 : when true , 0  ? D2;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1  ? A;

state 0 :
to 1 : when true , 0 ! D1;

state 3 :
to 0 : when true , 1  ? B;

state 2 :
to 3 : when true , 0 ! D2;
