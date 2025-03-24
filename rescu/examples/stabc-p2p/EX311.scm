/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 12 ;
parameters :
real B ;
real NEW ;
real ZZ ;
real D ;
real J12 ;
real A ;
real BACK ;
real JJJ ;
real Z2 ;
real MSG ;
real C ;
real Z1 ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 0 ! A;

state 0 :
to 1 : when true ;

state 5 :
to 4 : when true , 3  ? BACK;

state 4 :
to 5 : when true , 2 ! MSG;

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true , 0 ! A;

automaton A1 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true ;

state 3 :

state 2 :
to 3 : when true , 10  ? Z2;

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 0  ? A;

state 0 :
to 1 : when true ;

state 4 :

state 3 :
to 4 : when true , 1 ! B;

state 2 :
to 3 : when true ;

automaton A3 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 1  ? B;

state 9 :
to 7 : when true , 3 ! BACK;

state 4 :
to 5 : when true ;

state 5 :
to 6 : when true ;

state 3 :
to 4 : when true ;

state 7 :
to 8 : when true ;

state 8 :
to 9 : when true , 2  ? MSG;

state 2 :

state 6 :
to 7 : when true , 4 ! C;

automaton A4 :

initial : 0


state 1 :
to 2 : when true , 4  ? C;

state 0 :
to 1 : when true ;

state 3 :
to 2 : when true , 6  ? NEW;

state 2 :
to 3 : when true , 5 ! D;

automaton A5 :

initial : 0


state 1 :
to 2 : when true , 5  ? D;

state 0 :
to 1 : when true , 7 ! JJJ;

state 5 :
to 4 : when true , 5  ? D;

state 4 :
to 5 : when true , 6 ! NEW;

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true ;

automaton A6 :

initial : 0


state 1 :
to 2 : when true , 8 ! J12;

state 0 :
to 1 : when true , 7  ? JJJ;

state 2 :

automaton A7 :

initial : 0


state 1 :
to 2 : when true , 9 ! ZZ;

state 0 :
to 1 : when true ;

state 4 :
to 5 : when true ;

state 5 :
to 6 : when true ;

state 3 :
to 4 : when true ;

state 7 :

state 2 :
to 3 : when true ;

state 6 :
to 7 : when true , 8  ? J12;

automaton A8 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true ;

state 4 :
to 5 : when true , 10 ! Z2;

state 5 :

state 3 :
to 4 : when true , 11 ! Z1;

state 2 :
to 3 : when true , 9  ? ZZ;

automaton A9 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true ;

state 3 :

state 2 :
to 3 : when true , 11  ? Z1;
