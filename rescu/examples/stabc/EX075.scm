/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 4 ;
parameters :
real B ;
real A ;
real DDD ;
real C ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 2 ! B;

state 0 :
to 1 : when true , 1 ! A;

state 2 :
to 0 : when true , 0  ? C;

automaton A1 :

initial : 0


state 1 :
to 0 : when true , 1  ? A;

state 0 :
to 1 : when true , 0 ! C;

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 2  ? B;

state 0 :
to 1 : when true , 2  ? B;

state 4 :
to 0 : when true , 3 ! DDD;

state 3 :
to 4 : when true , 2  ? B;

state 2 :
to 3 : when true , 2  ? B;

automaton A3 :

initial : 0


state 0 :
to 0 : when true , 3  ? DDD;
