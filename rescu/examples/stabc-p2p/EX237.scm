/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real FWMOVE ;
real CHDIR ;
real BWMOVE ;

automaton A0 :

initial : 0


state 1 :
to 1 : when true , 0  ? BWMOVE;
to 0 : when true , 1 ! CHDIR;

state 0 :
to 0 : when true , 0  ? FWMOVE;
to 1 : when true , 1 ! CHDIR;

automaton A1 :

initial : 0


state 1 :
to 0 : when true , 1  ? CHDIR;
to 1 : when true , 0 ! BWMOVE;

state 0 :
to 1 : when true , 1  ? CHDIR;
to 0 : when true , 0 ! FWMOVE;
