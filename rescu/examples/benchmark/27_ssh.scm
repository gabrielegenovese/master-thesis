/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 4 ;
parameters :
real ENC ;
real REQTOKEN2 ;
real QUIT ;
real REFUSED ;
real PROCEED ;
real REQUEST2 ;
real LOGIN ;
real REQTOKEN1 ;
real DENIED ;
real REQUEST1 ;
real RESULT ;

automaton A0 :

initial : 0


state 1 :
to 3 : when true , 3 ! QUIT;

state 0 :
to 2 : when true ;
to 1 : when true ;

state 4 :
to 0 : when true , 0  ? ENC;
to 3 : when true , 0  ? REFUSED;

state 3 :

state 2 :
to 4 : when true , 3 ! REQUEST1;

automaton A1 :

initial : 0


state 1 :
to 3 : when true ;
to 2 : when true ;

state 0 :
to 1 : when true , 1  ? LOGIN;

state 4 :

state 5 :
to 6 : when true , 1  ? REQUEST2;

state 3 :
to 5 : when true , 3 ! PROCEED;

state 2 :
to 4 : when true , 3 ! DENIED;

state 6 :
to 5 : when true , 3 ! RESULT;

automaton A2 :

initial : 0


state 1 :
to 0 : when true , 3 ! REQTOKEN2;

state 0 :
to 1 : when true , 2  ? REQTOKEN1;

automaton A3 :

initial : 0


state 1 :

state 10 :
to 11 : when true , 0 ! ENC;

state 0 :
to 2 : when true , 3  ? REQUEST1;
to 1 : when true , 3  ? QUIT;

state 11 :
to 8 : when true , 3  ? REQUEST1;
to 12 : when true , 3  ? QUIT;

state 9 :
to 10 : when true , 3  ? RESULT;

state 4 :
to 5 : when true , 1 ! LOGIN;

state 5 :
to 8 : when true , 3  ? PROCEED;
to 6 : when true , 3  ? DENIED;

state 12 :

state 3 :
to 4 : when true , 3  ? REQTOKEN2;

state 7 :

state 8 :
to 9 : when true , 1 ! REQUEST2;

state 2 :
to 3 : when true , 2 ! REQTOKEN1;

state 6 :
to 7 : when true , 0 ! REFUSED;

bad_states:
(automaton A3: in 11 : true with (ENC | REQTOKEN2 | QUIT | REFUSED | PROCEED | REQUEST2 | LOGIN | REQTOKEN1 | DENIED | REQUEST1 | RESULT)^*.#.(ENC | REQTOKEN2 | QUIT | REFUSED | PROCEED | REQUEST2 | LOGIN | REQTOKEN1 | DENIED | REQUEST1 | RESULT)^*.#.(ENC | REQTOKEN2 | QUIT | REFUSED | PROCEED | REQUEST2 | LOGIN | REQTOKEN1 | DENIED | REQUEST1 | RESULT)^*.#.(ENC | REQTOKEN2 | REFUSED | PROCEED | REQUEST2 | LOGIN | REQTOKEN1 | DENIED | RESULT).(ENC | REQTOKEN2 | QUIT | REFUSED | PROCEED | REQUEST2 | LOGIN | REQTOKEN1 | DENIED | REQUEST1 | RESULT)^*)