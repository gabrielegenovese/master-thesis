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
to 2 : when true , 0 ! A;

state 0 :
to 4 : when true , 0 ! B;
to 1 : when true , 0 ! A;

state 4 :
to 5 : when true , 0 ! B;

state 5 :
to 3 : when true , 0 ! B;

state 3 :
to 0 : when true , 1  ? C;

state 2 :
to 3 : when true , 0 ! A;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1 ! C;

state 0 :
to 1 : when true , 0  ? B;
to 1 : when true , 0  ? A;

state 4 :
to 0 : when true , 2 ! D;

state 3 :
to 4 : when true , 0  ? B;
to 3 : when true , 0  ? A;

state 2 :
to 2 : when true , 0  ? B;
to 3 : when true , 0  ? A;

automaton A2 :

initial : 0


state 1 :
to 1 : when true , 2  ? D;

state 0 :
to 1 : when true , 2  ? D;
