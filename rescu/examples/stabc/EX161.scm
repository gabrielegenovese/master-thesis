/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 10 ;
parameters :
real B ;
real G ;
real TTT ;
real QQQ ;
real D ;
real A ;
real F ;
real C ;
real E ;
real Z ;

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
to 3 : when true , 7 ! A;

state 6 :
to 7 : when true , 0  ? B;

automaton A1 :

initial : 0


state 18 :

state 17 :
to 18 : when true , 1  ? QQQ;

state 1 :
to 2 : when true , 1  ? QQQ;

state 4 :
to 5 : when true , 1  ? QQQ;

state 5 :
to 6 : when true , 1  ? QQQ;

state 3 :
to 4 : when true , 1  ? QQQ;

state 16 :
to 17 : when true ;

state 14 :
to 15 : when true ;

state 6 :
to 7 : when true , 1  ? QQQ;

state 15 :
to 16 : when true ;

state 10 :
to 11 : when true , 1  ? QQQ;

state 0 :
to 1 : when true , 1  ? QQQ;

state 11 :
to 12 : when true ;

state 9 :
to 10 : when true , 1  ? QQQ;

state 12 :
to 11 : when true ;

state 13 :
to 14 : when true ;

state 7 :
to 8 : when true , 1  ? QQQ;

state 8 :
to 9 : when true , 1  ? QQQ;

state 2 :
to 3 : when true , 1  ? QQQ;

automaton A2 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true ;

state 4 :
to 5 : when true ;

state 5 :
to 0 : when true , 2  ? C;

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true , 0 ! B;

automaton A3 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 2 ! C;

state 3 :
to 0 : when true , 3  ? D;

state 2 :
to 3 : when true ;

automaton A4 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 3 ! D;

state 4 :
to 0 : when true ;

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true , 4  ? E;

automaton A5 :

initial : 0


state 1 :
to 2 : when true , 5  ? F;

state 0 :
to 1 : when true , 4 ! E;

state 4 :
to 5 : when true , 4 ! E;

state 5 :
to 0 : when true , 5  ? F;

state 3 :
to 4 : when true , 5  ? F;

state 2 :
to 3 : when true , 4 ! E;

automaton A6 :

initial : 0


state 1 :
to 0 : when true , 6  ? G;

state 0 :
to 1 : when true , 5 ! F;

automaton A7 :

initial : 0


state 1 :
to 2 : when true , 8 ! Z;

state 0 :
to 1 : when true , 6 ! G;

state 4 :
to 0 : when true , 7  ? A;

state 3 :
to 4 : when true , 8 ! Z;

state 2 :
to 3 : when true , 6 ! G;

automaton A8 :

initial : 0


state 1 :
to 4 : when true ;
to 3 : when true ;
to 2 : when true ;

state 0 :
to 1 : when true , 8  ? Z;

state 4 :
to 5 : when true ;

state 5 :
to 6 : when true , 9 ! TTT;

state 3 :
to 5 : when true ;

state 2 :
to 5 : when true ;

state 6 :

automaton A9 :

initial : 0


state 1 :
to 2 : when true , 1 ! QQQ;

state 0 :
to 1 : when true , 9  ? TTT;

state 2 :
