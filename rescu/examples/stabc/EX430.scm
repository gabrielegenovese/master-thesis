/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real BSTOP ;
real BREPLY ;
real STYPE ;
real SREPLY ;
real BACK ;
real SACK ;
real SPRICE ;
real SBUY ;
real BREQUEST ;
real BPURCHASE ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 0  ? SPRICE;

state 0 :
to 1 : when true , 0  ? STYPE;

state 4 :
to 2 : when true , 0  ? SPRICE;

state 5 :
to 6 : when true , 1 ! SACK;

state 3 :
to 5 : when true , 0  ? SBUY;
to 4 : when true , 0  ? STYPE;

state 2 :
to 3 : when true , 1 ! SREPLY;

state 6 :

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 0 ! STYPE;

state 10 :
to 11 : when true , 1  ? SACK;

state 0 :
to 1 : when true , 1  ? BREQUEST;

state 11 :
to 6 : when true , 2 ! BACK;

state 9 :
to 10 : when true , 0 ! SBUY;

state 4 :
to 5 : when true , 2 ! BREPLY;

state 5 :
to 12 : when true , 1  ? BSTOP;
to 9 : when true , 1  ? BPURCHASE;
to 7 : when true , 1  ? BREQUEST;

state 12 :

state 7 :
to 8 : when true , 0 ! STYPE;

state 3 :
to 4 : when true , 1  ? SREPLY;

state 8 :
to 3 : when true , 0 ! SPRICE;

state 2 :
to 3 : when true , 0 ! SPRICE;

state 6 :

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 2  ? BREPLY;

state 0 :
to 1 : when true , 1 ! BREQUEST;

state 4 :
to 5 : when true , 2  ? BACK;

state 5 :

state 2 :
to 4 : when true , 1 ! BPURCHASE;
to 2 : when true , 1 ! BSTOP;
to 1 : when true , 1 ! BREQUEST;
