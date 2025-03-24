/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 5 ;
parameters :
real B ;
real D ;
real ZZZ ;
real A ;
real C ;

automaton A0 :

initial : 0


state 1 :

state 0 :
to 1 : when true , 1 ! A;

automaton A1 :

initial : 0


state 1 :
to 1 : when true , 0  ? ZZZ;

state 0 :
to 1 : when true , 2 ! B;

automaton A2 :

initial : 0


state 1 :

state 0 :
to 1 : when true , 3 ! C;

automaton A3 :

initial : 0


state 1 :

state 0 :
to 1 : when true , 4 ! D;

automaton A4 :

initial : 0


state 1 :
to 1 : when true , 4  ? D;
to 1 : when true , 3  ? C;
to 1 : when true , 2  ? B;
to 1 : when true , 1  ? A;

state 0 :
to 1 : when true , 0 ! ZZZ;
