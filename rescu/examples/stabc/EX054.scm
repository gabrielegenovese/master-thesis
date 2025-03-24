/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real B ;
real D ;
real A ;
real C ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 2 ! C;
to 0 : when true , 1 ! B;

state 0 :
to 1 : when true , 0  ? A;

state 3 :
to 2 : when true , 1 ! D;

state 2 :
to 3 : when true , 0  ? A;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1  ? B;

state 0 :
to 1 : when true , 0 ! A;

state 4 :
to 4 : when true , 1  ? D;
to 4 : when true , 1  ? B;

state 3 :
to 4 : when true , 0 ! A;
to 3 : when true , 1  ? D;
to 3 : when true , 1  ? B;

state 2 :
to 3 : when true , 0 ! A;

automaton A2 :

initial : 0


state 1 :
to 1 : when true , 2  ? C;

state 0 :
to 1 : when true , 2  ? C;
