/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 9 ;
parameters :
real B ;
real Z4 ;
real Z3 ;
real Z2 ;
real AAA ;
real FINAL ;
real Z1 ;
real Z5 ;
real WWW ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 1 ! AAA;

state 0 :
to 1 : when true , 1 ! AAA;

state 4 :
to 5 : when true , 1 ! AAA;

state 5 :
to 6 : when true , 1 ! AAA;

state 3 :
to 4 : when true , 1 ! AAA;

state 7 :
to 8 : when true , 1 ! AAA;

state 8 :
to 8 : when true , 0  ? B;

state 2 :
to 3 : when true , 1 ! AAA;

state 6 :
to 7 : when true , 1 ! AAA;

automaton A1 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 8 ! FINAL;

state 4 :
to 5 : when true ;

state 5 :
to 6 : when true , 8 ! FINAL;

state 3 :
to 4 : when true , 8 ! FINAL;

state 2 :
to 3 : when true ;

state 6 :

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 0 ! B;

state 0 :
to 1 : when true , 0 ! B;

state 4 :
to 5 : when true , 0 ! B;

state 5 :
to 6 : when true , 0 ! B;

state 3 :
to 4 : when true , 0 ! B;

state 7 :
to 8 : when true , 0 ! B;

state 8 :
to 8 : when true , 1  ? AAA;

state 2 :
to 3 : when true , 0 ! B;

state 6 :
to 7 : when true , 0 ! B;

automaton A3 :

initial : 0


state 1 :
to 2 : when true , 4 ! Z2;

state 0 :
to 1 : when true , 3 ! Z1;

state 4 :
to 5 : when true , 7 ! Z5;

state 5 :
to 6 : when true ;

state 3 :
to 4 : when true , 6 ! Z4;

state 7 :
to 8 : when true ;

state 8 :
to 0 : when true , 2  ? WWW;

state 2 :
to 3 : when true , 5 ! Z3;

state 6 :
to 7 : when true ;

automaton A4 :

initial : 0


state 1 :
to 0 : when true , 3  ? Z1;

state 0 :
to 1 : when true , 3  ? Z1;

automaton A5 :

initial : 0


state 1 :
to 0 : when true , 4  ? Z2;

state 0 :
to 1 : when true , 4  ? Z2;

automaton A6 :

initial : 0


state 1 :
to 0 : when true , 5  ? Z3;

state 0 :
to 1 : when true , 5  ? Z3;

automaton A7 :

initial : 0


state 1 :
to 0 : when true , 6  ? Z4;

state 0 :
to 1 : when true , 6  ? Z4;

automaton A8 :

initial : 0


state 1 :
to 0 : when true , 7  ? Z5;

state 0 :
to 1 : when true , 7  ? Z5;

automaton A9 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 2 ! WWW;

state 3 :
to 0 : when true , 8  ? FINAL;

state 2 :
to 3 : when true ;
