/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real ZZ ;
real B ;
real D ;
real A ;
real C ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 1 ! D;
to 2 : when true , 1 ! C;
to 2 : when true , 1 ! B;

state 0 :
to 1 : when true , 1 ! A;

state 3 :
to 0 : when true , 0  ? ZZ;

state 2 :
to 3 : when true , 0  ? ZZ;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 0 ! ZZ;

state 0 :
to 1 : when true , 0 ! ZZ;

state 3 :
to 0 : when true , 1  ? D;
to 0 : when true , 1  ? C;
to 0 : when true , 1  ? B;

state 2 :
to 3 : when true , 1  ? A;
