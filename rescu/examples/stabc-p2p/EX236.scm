/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 4 ;
parameters :
real FWMOVE ;
real CHDIR ;
real BWMOVE ;

automaton A0 :

initial : 0


state 0 :
to 0 : when true , 2  ? BWMOVE;
to 0 : when true , 0  ? FWMOVE;
to 0 : when true , 3 ! CHDIR;

automaton A1 :

initial : 0


state 0 :
to 0 : when true , 3  ? CHDIR;
to 0 : when true , 0 ! FWMOVE;

automaton A2 :

initial : 0


state 0 :
to 0 : when true , 3  ? CHDIR;
to 0 : when true , 2 ! BWMOVE;
