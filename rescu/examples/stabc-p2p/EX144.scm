/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real B ;
real A ;
real C ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 1 ! A;

state 0 :
to 3 : when true ;
to 1 : when true ;

state 5 :
to 0 : when true ;

state 4 :
to 6 : when true ;

state 3 :
to 4 : when true , 1 ! B;

state 2 :
to 5 : when true , 0  ? C;

state 6 :
to 0 : when true , 0  ? C;

automaton A1 :

initial : 0


state 1 :
to 0 : when true , 1  ? B;
to 0 : when true , 1  ? A;

state 0 :
to 2 : when true ;

state 4 :
to 1 : when true ;

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true , 0 ! C;
