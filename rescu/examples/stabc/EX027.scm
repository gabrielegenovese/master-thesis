/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 5 ;
parameters :
real M3 ;
real B ;
real START ;
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
to 2 : when true , 3 ! B;

state 0 :
to 1 : when true , 3 ! B;

state 2 :
to 0 : when true , 1  ? M2;

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 3 ! C;

state 0 :
to 1 : when true , 3 ! C;

state 2 :
to 0 : when true , 2  ? M3;

automaton A3 :

initial : 0


state 18 :
to 1 : when true , 3  ? C;

state 17 :
to 18 : when true , 3  ? C;

state 1 :
to 2 : when true , 0 ! M1;

state 4 :
to 5 : when true , 0 ! M1;

state 5 :
to 6 : when true , 1 ! M2;

state 3 :
to 4 : when true , 2 ! M3;

state 16 :
to 17 : when true , 3  ? B;

state 14 :
to 15 : when true , 3  ? A;

state 6 :
to 7 : when true , 2 ! M3;

state 15 :
to 16 : when true , 3  ? B;

state 10 :
to 11 : when true , 3  ? B;

state 0 :
to 1 : when true , 4 ! START;

state 11 :
to 12 : when true , 3  ? C;

state 9 :
to 10 : when true , 3  ? B;

state 12 :
to 13 : when true , 3  ? C;

state 13 :
to 14 : when true , 3  ? A;

state 7 :
to 8 : when true , 3  ? A;

state 8 :
to 9 : when true , 3  ? A;

state 2 :
to 3 : when true , 1 ! M2;

automaton A4 :

initial : 0


state 0 :
to 0 : when true , 4  ? START;
