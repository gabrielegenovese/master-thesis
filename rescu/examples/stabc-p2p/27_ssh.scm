/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 6 ;
parameters :
real REQTOKEN2 ;
real ENC ;
real QUIT ;
real REFUSED ;
real PROCEED ;
real REQUEST2 ;
real REQTOKEN1 ;
real LOGIN ;
real DENIED ;
real REQUEST1 ;
real RESULT ;

automaton A0 :

initial : 0


state 1 :
to 3 : when true , 0 ! QUIT;

state 0 :
to 2 : when true ;
to 1 : when true ;

state 4 :
to 0 : when true , 5  ? ENC;
to 3 : when true , 5  ? REFUSED;

state 3 :

state 2 :
to 4 : when true , 0 ! REQUEST1;

automaton A1 :

initial : 0


state 1 :
to 3 : when true ;
to 2 : when true ;

state 0 :
to 1 : when true , 3  ? LOGIN;

state 4 :

state 5 :
to 6 : when true , 3  ? REQUEST2;

state 3 :
to 5 : when true , 4 ! PROCEED;

state 2 :
to 4 : when true , 4 ! DENIED;

state 6 :
to 5 : when true , 4 ! RESULT;

automaton A2 :

initial : 0


state 1 :
to 0 : when true , 2 ! REQTOKEN2;

state 0 :
to 1 : when true , 1  ? REQTOKEN1;

automaton A3 :

initial : 0


state 1 :

state 10 :
to 11 : when true , 5 ! ENC;

state 0 :
to 2 : when true , 0  ? REQUEST1;
to 1 : when true , 0  ? QUIT;

state 11 :
to 8 : when true , 0  ? REQUEST1;
to 12 : when true , 0  ? QUIT;

state 9 :
to 10 : when true , 4  ? RESULT;

state 4 :
to 5 : when true , 3 ! LOGIN;

state 5 :
to 8 : when true , 4  ? PROCEED;
to 6 : when true , 4  ? DENIED;

state 12 :

state 3 :
to 4 : when true , 2  ? REQTOKEN2;

state 7 :

state 8 :
to 9 : when true , 3 ! REQUEST2;

state 2 :
to 3 : when true , 1 ! REQTOKEN1;

state 6 :
to 7 : when true , 5 ! REFUSED;
