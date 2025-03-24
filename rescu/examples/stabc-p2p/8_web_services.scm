/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 4 ;
parameters :
real MSG5 ;
real MSG4 ;
real MSG2 ;
real MSG6 ;
real MSG3 ;
real MSG1 ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 1  ? MSG2;

state 0 :
to 1 : when true , 0 ! MSG1;

state 3 :

state 2 :
to 3 : when true , 1  ? MSG6;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1 ! MSG2;

state 0 :
to 1 : when true , 0  ? MSG1;

state 4 :
to 5 : when true , 1 ! MSG6;

state 5 :

state 3 :
to 2 : when true , 3  ? MSG4;

state 2 :
to 4 : when true , 2 ! MSG5;
to 3 : when true , 2 ! MSG3;

automaton A2 :

initial : 0


state 1 :
to 0 : when true , 3 ! MSG4;

state 0 :
to 2 : when true , 2  ? MSG5;
to 1 : when true , 2  ? MSG3;

state 2 :
