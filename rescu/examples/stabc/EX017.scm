/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real B ;
real START ;
real A ;
real END ;
real ACK ;

automaton A0 :

initial : 0


state 1 :
to 1 : when true , 1 ! B;
to 1 : when true , 1 ! A;
to 2 : when true , 1 ! END;

state 0 :
to 1 : when true , 1 ! START;

state 2 :
to 0 : when true , 0  ? ACK;

automaton A1 :

initial : 0


state 1 :
to 1 : when true , 1  ? B;
to 1 : when true , 1  ? A;
to 2 : when true , 1  ? END;

state 0 :
to 1 : when true , 1  ? START;

state 2 :
to 0 : when true , 0 ! ACK;
