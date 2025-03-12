/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 4 ;
parameters :
real ASKINF ;
real PAYMENTPUBLICFEE ;
real PROVM ;
real DONE ;
real PAYMENTM ;
real RECMONEYPOSST ;
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
to 2 : when true , 0  ? ASKINF;

state 0 :
to 1 : when true , 1 ! REQUEST;

state 4 :
to 6 : when true , 0  ? PROVT;
to 5 : when true , 0  ? PROVM;

state 5 :
to 0 : when true , 3 ! PAYMENTPRIVATEFEE;

state 3 :
to 4 : when true , 0  ? ACCEPTANCE;
to 0 : when true , 0  ? REFUSAL;

state 2 :
to 3 : when true , 1 ! PROVINF;

state 6 :
to 0 : when true , 3 ! PAYMENTPRIVATEFEE;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 0 ! ASKINF;

state 0 :
to 1 : when true , 1  ? REQUEST;

state 4 :
to 5 : when true , 2 ! REQ;

state 5 :
to 6 : when true , 3 ! PAYMENTPUBLICFEE;

state 7 :
to 0 : when true , 0 ! REFUSAL;

state 3 :
to 8 : when true ;
to 7 : when true ;

state 8 :
to 4 : when true , 0 ! ACCEPTANCE;

state 2 :
to 3 : when true , 1  ? PROVINF;

state 6 :
to 0 : when true , 1  ? DONE;

automaton A2 :

initial : 0


state 1 :
to 5 : when true ;
to 2 : when true ;

state 0 :
to 1 : when true , 2  ? REQ;

state 4 :
to 0 : when true , 2  ? PAYMENTT;

state 5 :
to 6 : when true , 0 ! PROVM;

state 3 :
to 4 : when true , 3 ! RECMONEYPOSST;

state 7 :
to 0 : when true , 2  ? PAYMENTM;

state 2 :
to 3 : when true , 0 ! PROVT;

state 6 :
to 7 : when true , 3 ! RECMONEYPOSSM;

automaton A3 :

initial : 0


state 1 :
to 3 : when true , 3  ? PAYMENTPUBLICFEE;
to 2 : when true , 3  ? PAYMENTPRIVATEFEE;

state 10 :
to 0 : when true , 1 ! DONE;

state 0 :
to 6 : when true , 3  ? RECMONEYPOSSM;
to 1 : when true , 3  ? RECMONEYPOSST;

state 9 :
to 10 : when true , 2 ! PAYMENTM;

state 4 :
to 5 : when true , 2 ! PAYMENTT;

state 5 :
to 0 : when true , 1 ! DONE;

state 3 :
to 4 : when true , 3  ? PAYMENTPRIVATEFEE;

state 7 :
to 9 : when true , 3  ? PAYMENTPUBLICFEE;

state 8 :
to 9 : when true , 3  ? PAYMENTPRIVATEFEE;

state 2 :
to 4 : when true , 3  ? PAYMENTPUBLICFEE;

state 6 :
to 8 : when true , 3  ? PAYMENTPUBLICFEE;
to 7 : when true , 3  ? PAYMENTPRIVATEFEE;
