/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 9 ;
parameters :
real ASKINF ;
real PAYMENTPUBLICFEE ;
real PROVM ;
real DONE ;
real RECMONEYPOSST ;
real PAYMENTM ;
real REQ ;
real REQUEST ;
real PROVINF ;
real PAYMENTPRIVATEFEE ;
real RECMONEYPOSSM ;
real REFUSAL ;
real PAYMENTT ;
real ACCEPTANCE ;
real PROVT ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 1  ? ASKINF;

state 0 :
to 1 : when true , 0 ! REQUEST;

state 4 :
to 6 : when true , 3  ? PROVT;
to 5 : when true , 3  ? PROVM;

state 5 :
to 0 : when true , 5 ! PAYMENTPRIVATEFEE;

state 3 :
to 4 : when true , 1  ? ACCEPTANCE;
to 0 : when true , 1  ? REFUSAL;

state 2 :
to 3 : when true , 0 ! PROVINF;

state 6 :
to 0 : when true , 5 ! PAYMENTPRIVATEFEE;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1 ! ASKINF;

state 0 :
to 1 : when true , 0  ? REQUEST;

state 4 :
to 5 : when true , 2 ! REQ;

state 5 :
to 6 : when true , 6 ! PAYMENTPUBLICFEE;

state 7 :
to 0 : when true , 1 ! REFUSAL;

state 3 :
to 8 : when true ;
to 7 : when true ;

state 8 :
to 4 : when true , 1 ! ACCEPTANCE;

state 2 :
to 3 : when true , 0  ? PROVINF;

state 6 :
to 0 : when true , 8  ? DONE;

automaton A2 :

initial : 0


state 1 :
to 5 : when true ;
to 2 : when true ;

state 0 :
to 1 : when true , 2  ? REQ;

state 4 :
to 0 : when true , 7  ? PAYMENTT;

state 5 :
to 6 : when true , 3 ! PROVM;

state 3 :
to 4 : when true , 4 ! RECMONEYPOSST;

state 7 :
to 0 : when true , 7  ? PAYMENTM;

state 2 :
to 3 : when true , 3 ! PROVT;

state 6 :
to 7 : when true , 4 ! RECMONEYPOSSM;

automaton A3 :

initial : 0


state 1 :
to 3 : when true , 6  ? PAYMENTPUBLICFEE;
to 2 : when true , 5  ? PAYMENTPRIVATEFEE;

state 10 :
to 0 : when true , 8 ! DONE;

state 0 :
to 6 : when true , 4  ? RECMONEYPOSSM;
to 1 : when true , 4  ? RECMONEYPOSST;

state 9 :
to 10 : when true , 7 ! PAYMENTM;

state 4 :
to 5 : when true , 7 ! PAYMENTT;

state 5 :
to 0 : when true , 8 ! DONE;

state 3 :
to 4 : when true , 5  ? PAYMENTPRIVATEFEE;

state 7 :
to 9 : when true , 6  ? PAYMENTPUBLICFEE;

state 8 :
to 9 : when true , 5  ? PAYMENTPRIVATEFEE;

state 2 :
to 4 : when true , 6  ? PAYMENTPUBLICFEE;

state 6 :
to 8 : when true , 6  ? PAYMENTPUBLICFEE;
to 7 : when true , 5  ? PAYMENTPRIVATEFEE;
