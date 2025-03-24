/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 6 ;
parameters :
real B ;
real ZZ ;
real D ;
real A ;
real Z2 ;
real C ;
real Z ;
real Z1 ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 0  ? B;

state 0 :
to 1 : when true , 1 ! A;

state 2 :
to 2 : when true , 0  ? D;
to 0 : when true , 0  ? C;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1  ? A;

state 0 :
to 1 : when true , 0 ! B;

state 4 :
to 0 : when true , 2 ! Z;

state 3 :
to 4 : when true , 0 ! D;

state 2 :
to 3 : when true , 0 ! C;

automaton A2 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 3 ! ZZ;

state 2 :
to 0 : when true , 2  ? Z;

automaton A3 :

initial : 0


state 1 :
to 2 : when true ;
to 2 : when true , 5 ! Z2;

state 0 :
to 1 : when true , 4 ! Z1;

state 2 :
to 0 : when true , 3  ? ZZ;

automaton A4 :

initial : 0


state 0 :
to 0 : when true , 4  ? Z1;

automaton A5 :

initial : 0


state 0 :
to 0 : when true , 5  ? Z2;
