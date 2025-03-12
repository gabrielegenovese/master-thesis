/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real TFOOD ;
real CORDER ;
real TMONEY ;
real CFOOD ;
real CMONEY ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 0  ? TFOOD;

state 0 :
to 1 : when true , 2 ! TMONEY;

state 2 :

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 2 ! CFOOD;

state 0 :
to 1 : when true , 1  ? CORDER;

state 3 :

state 2 :
to 3 : when true , 1  ? CMONEY;

automaton A2 :

initial : 0


state 1 :
to 3 : when true , 2  ? CFOOD;
to 4 : when true , 2  ? TMONEY;

state 0 :
to 2 : when true , 2  ? TMONEY;
to 1 : when true , 1 ! CORDER;

state 4 :
to 6 : when true , 2  ? CFOOD;

state 5 :
to 7 : when true , 2  ? TMONEY;

state 3 :
to 5 : when true , 0 ! TFOOD;
to 6 : when true , 2  ? TMONEY;

state 7 :
to 8 : when true , 1 ! CMONEY;

state 8 :

state 2 :
to 4 : when true , 1 ! CORDER;

state 6 :
to 7 : when true , 0 ! TFOOD;
