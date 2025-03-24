/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real FWMOVE ;
real CHDIR ;
real BWMOVE ;

automaton A0 :

initial : 0


state 0 :
to 0 : when true , 0  ? BWMOVE;
to 0 : when true , 0  ? FWMOVE;
to 0 : when true , 2 ! CHDIR;

automaton A1 :

initial : 0


state 0 :
to 0 : when true , 2  ? CHDIR;
to 0 : when true , 0 ! FWMOVE;

automaton A2 :

initial : 0


state 0 :
to 0 : when true , 2  ? CHDIR;
to 0 : when true , 0 ! BWMOVE;
