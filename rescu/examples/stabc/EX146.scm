/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 1 ;
parameters :
real B ;
real A ;
real C ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 0 ! A;

state 0 :
to 1 : when true ;

state 5 :

state 4 :
to 6 : when true ;
to 5 : when true ;

state 3 :
to 4 : when true , 0 ! B;

state 7 :

state 2 :
to 3 : when true ;

state 6 :
to 7 : when true , 0 ! C;

automaton A1 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true ;

state 2 :
to 2 : when true , 0  ? C;
to 2 : when true , 0  ? B;
to 2 : when true , 0  ? A;
