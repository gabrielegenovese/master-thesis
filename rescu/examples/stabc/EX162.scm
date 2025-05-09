/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 7 ;
parameters :
real B ;
real G ;
real D ;
real A ;
real F ;
real C ;
real E ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true ;

state 4 :
to 5 : when true ;

state 5 :
to 6 : when true ;

state 3 :
to 4 : when true ;

state 7 :
to 8 : when true ;

state 8 :
to 0 : when true ;

state 2 :
to 3 : when true , 6 ! A;

state 6 :
to 7 : when true , 0  ? B;

automaton A1 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true ;

state 4 :
to 5 : when true ;

state 5 :
to 0 : when true , 1  ? C;

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true , 0 ! B;

automaton A2 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 1 ! C;

state 3 :
to 0 : when true , 2  ? D;

state 2 :
to 3 : when true ;

automaton A3 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 2 ! D;

state 4 :
to 0 : when true ;

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true , 3  ? E;

automaton A4 :

initial : 0


state 1 :
to 2 : when true , 4  ? F;

state 0 :
to 1 : when true , 3 ! E;

state 4 :
to 5 : when true , 3 ! E;

state 5 :
to 0 : when true , 4  ? F;

state 3 :
to 4 : when true , 4  ? F;

state 2 :
to 3 : when true , 3 ! E;

automaton A5 :

initial : 0


state 1 :
to 0 : when true , 5  ? G;

state 0 :
to 1 : when true , 4 ! F;

automaton A6 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 5 ! G;

state 4 :
to 0 : when true , 6  ? A;

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true ;
