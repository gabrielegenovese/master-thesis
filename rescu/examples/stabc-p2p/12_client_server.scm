/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 4 ;
parameters :
real SQUERY ;
real CREQ ;
real CARG ;
real SVALUE ;
real CACK ;
real SSERVICE ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 0 ! CARG;

state 0 :
to 1 : when true , 0 ! CREQ;

state 3 :

state 2 :
to 3 : when true , 3  ? CACK;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1  ? SQUERY;

state 0 :
to 1 : when true , 1  ? SVALUE;

state 3 :

state 2 :
to 3 : when true , 2 ! SSERVICE;

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 0  ? CARG;

state 0 :
to 1 : when true , 0  ? CREQ;

state 4 :
to 5 : when true , 2  ? SSERVICE;

state 5 :
to 6 : when true , 3 ! CACK;

state 3 :
to 4 : when true , 1 ! SQUERY;

state 2 :
to 3 : when true , 1 ! SVALUE;

state 6 :
