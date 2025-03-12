/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real B ;
real QQQ ;
real D ;
real A ;
real C ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 1 ! B;

state 0 :
to 1 : when true , 1 ! A;

state 9 :

state 4 :
to 5 : when true , 1 ! D;

state 5 :
to 6 : when true , 0  ? QQQ;

state 3 :
to 4 : when true , 0  ? QQQ;

state 7 :
to 8 : when true , 1 ! A;

state 8 :
to 9 : when true , 0  ? QQQ;

state 2 :
to 3 : when true , 1 ! C;

state 6 :
to 7 : when true , 1 ! D;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 0 ! QQQ;
to 1 : when true , 1  ? D;
to 1 : when true , 1  ? C;
to 1 : when true , 1  ? A;
to 1 : when true , 1  ? B;

state 0 :
to 1 : when true , 0 ! QQQ;

state 3 :
to 3 : when true , 1  ? D;
to 3 : when true , 1  ? C;
to 3 : when true , 1  ? A;
to 3 : when true , 1  ? B;

state 2 :
to 3 : when true , 0 ! QQQ;
