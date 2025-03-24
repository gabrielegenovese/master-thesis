/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 6 ;
parameters :
real B ;
real W ;
real D ;
real A ;
real E ;
real C ;
real Z ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true ;

state 10 :
to 0 : when true , 0  ? D;

state 0 :
to 1 : when true ;

state 9 :
to 10 : when true ;

state 4 :
to 5 : when true ;

state 5 :
to 7 : when true ;
to 6 : when true ;

state 3 :
to 4 : when true ;

state 7 :
to 9 : when true , 2 ! C;

state 8 :
to 10 : when true ;

state 2 :
to 3 : when true , 3 ! A;

state 6 :
to 8 : when true , 2 ! B;

automaton A1 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true ;

state 4 :
to 5 : when true ;

state 5 :
to 0 : when true , 1  ? E;

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true , 0 ! D;

automaton A2 :

initial : 0


state 1 :
to 3 : when true ;

state 0 :
to 2 : when true , 2  ? C;
to 1 : when true , 2  ? B;

state 4 :
to 0 : when true , 1 ! E;

state 3 :
to 0 : when true , 1 ! E;

state 2 :
to 4 : when true ;

automaton A3 :

initial : 0


state 1 :
to 2 : when true ;
to 2 : when true ;

state 0 :
to 1 : when true , 4 ! Z;

state 4 :
to 0 : when true , 3  ? A;

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true , 5 ! W;

automaton A4 :

initial : 0


state 0 :
to 0 : when true , 4  ? Z;

automaton A5 :

initial : 0


state 0 :
to 0 : when true , 5  ? W;
