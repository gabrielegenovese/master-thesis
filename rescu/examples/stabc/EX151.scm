/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 4 ;
parameters :
real LOGIN ;
real STORE ;
real IDENT ;
real SUBMIT ;
real ACK ;
real COUNT ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 2 ! SUBMIT;

state 0 :
to 1 : when true , 2 ! LOGIN;

state 4 :
to 1 : when true , 0  ? ACK;

state 3 :
to 3 : when true , 0  ? ACK;

state 2 :
to 4 : when true ;
to 1 : when true ;
to 3 : when true ;

automaton A1 :

initial : 0


state 1 :
to 0 : when true , 2 ! IDENT;

state 0 :
to 1 : when true , 1  ? STORE;

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 2  ? SUBMIT;

state 0 :
to 1 : when true , 2  ? LOGIN;

state 4 :
to 5 : when true , 2  ? IDENT;

state 5 :
to 1 : when true , 0 ! ACK;

state 3 :
to 4 : when true , 3 ! COUNT;

state 2 :
to 3 : when true , 1 ! STORE;

automaton A3 :

initial : 0


state 0 :
to 0 : when true , 3  ? COUNT;
