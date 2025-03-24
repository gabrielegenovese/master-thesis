/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real B ;
real INIT2 ;
real A ;
real INIT3 ;
real C ;
real INIT1 ;

automaton A0 :

initial : 0


state 1 :
to 4 : when true , 1 ! B;
to 3 : when true , 1 ! C;
to 2 : when true , 1 ! A;

state 10 :

state 0 :
to 1 : when true , 2 ! INIT1;

state 9 :
to 10 : when true ;

state 4 :
to 7 : when true , 1 ! C;
to 6 : when true , 1 ! A;

state 5 :
to 8 : when true , 1 ! B;

state 3 :
to 7 : when true , 1 ! B;
to 5 : when true , 1 ! A;

state 7 :
to 8 : when true , 1 ! A;

state 8 :
to 9 : when true , 0  ? INIT3;

state 2 :
to 6 : when true , 1 ! B;
to 5 : when true , 1 ! C;

state 6 :
to 8 : when true , 1 ! C;

automaton A1 :

initial : 0


state 1 :
to 4 : when true , 1  ? A;
to 3 : when true , 1  ? C;
to 2 : when true , 1  ? B;

state 0 :
to 1 : when true , 2 ! INIT2;

state 9 :

state 4 :
to 7 : when true , 1  ? C;
to 6 : when true , 1  ? B;

state 5 :
to 8 : when true , 1  ? A;

state 3 :
to 7 : when true , 1  ? A;
to 5 : when true , 1  ? B;

state 7 :
to 8 : when true , 1  ? B;

state 8 :
to 9 : when true ;

state 2 :
to 6 : when true , 1  ? A;
to 5 : when true , 1  ? C;

state 6 :
to 8 : when true , 1  ? C;

automaton A2 :

initial : 0


state 1 :
to 3 : when true , 2  ? INIT1;
to 2 : when true , 2  ? INIT2;

state 0 :
to 1 : when true , 0 ! INIT3;

state 4 :
to 5 : when true ;

state 5 :

state 3 :
to 4 : when true , 2  ? INIT2;

state 2 :
to 4 : when true , 2  ? INIT1;
