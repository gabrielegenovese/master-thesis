/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 6 ;
parameters :
real M3 ;
real B ;
real M1 ;
real A ;
real M2 ;
real C ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 3 ! A;

state 0 :
to 1 : when true , 3 ! A;

state 2 :
to 0 : when true , 0  ? M1;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 4 ! B;

state 0 :
to 1 : when true , 4 ! B;

state 2 :
to 0 : when true , 1  ? M2;

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 5 ! C;

state 0 :
to 1 : when true , 5 ! C;

state 2 :
to 0 : when true , 2  ? M3;

automaton A3 :

initial : 0


state 1 :
to 2 : when true , 1 ! M2;

state 0 :
to 1 : when true , 0 ! M1;

state 4 :
to 5 : when true , 3  ? A;

state 5 :
to 6 : when true , 4  ? B;

state 3 :
to 4 : when true , 3  ? A;

state 7 :
to 8 : when true , 5  ? C;

state 8 :
to 0 : when true , 5  ? C;

state 2 :
to 3 : when true , 2 ! M3;

state 6 :
to 7 : when true , 4  ? B;
