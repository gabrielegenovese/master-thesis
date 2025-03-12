/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real PFLIGHTSELECTED ;
real QPAYMENTTYPE ;
real QTICKETINFO ;
real PTXOK ;
real QPAYMENT ;
real PPAYMENTTYPE ;
real PCLIENTID ;
real PTICKETINFO ;
real QFLIGHTSELECTED ;
real QCLIENTID ;
real PPAYMENT ;
real QTXOK ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 2 ! PPAYMENTTYPE;

state 0 :
to 1 : when true , 2 ! PFLIGHTSELECTED;

state 4 :
to 5 : when true , 0  ? PTXOK;
to 6 : when true , 2 ! PPAYMENT;

state 5 :
to 7 : when true , 2 ! PPAYMENT;

state 3 :
to 6 : when true , 2 ! PCLIENTID;

state 7 :
to 8 : when true , 0  ? PTICKETINFO;

state 8 :

state 2 :
to 4 : when true , 2 ! PCLIENTID;
to 3 : when true , 2 ! PPAYMENT;

state 6 :
to 7 : when true , 0  ? PTXOK;

automaton A1 :

initial : 0


state 1 :
to 4 : when true , 1  ? QPAYMENT;
to 2 : when true , 1  ? QFLIGHTSELECTED;

state 0 :
to 1 : when true , 1  ? QCLIENTID;

state 4 :
to 3 : when true , 1  ? QFLIGHTSELECTED;

state 5 :
to 6 : when true , 2 ! QTICKETINFO;

state 3 :
to 5 : when true , 1  ? QPAYMENTTYPE;

state 7 :

state 2 :
to 3 : when true , 1  ? QPAYMENT;

state 6 :
to 7 : when true , 2 ! QTXOK;

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 2  ? PPAYMENTTYPE;

state 4 :
to 5 : when true , 2  ? PPAYMENT;
to 6 : when true , 1 ! QCLIENTID;

state 5 :
to 7 : when true , 1 ! QCLIENTID;

state 3 :
to 5 : when true , 2  ? PCLIENTID;

state 16 :

state 14 :
to 15 : when true , 0 ! PTXOK;

state 6 :
to 7 : when true , 2  ? PPAYMENT;
to 9 : when true , 1 ! QFLIGHTSELECTED;

state 15 :
to 16 : when true , 0 ! PTICKETINFO;

state 10 :
to 11 : when true , 1 ! QPAYMENT;

state 0 :
to 1 : when true , 2  ? PFLIGHTSELECTED;

state 11 :
to 12 : when true , 1 ! QPAYMENTTYPE;

state 9 :
to 10 : when true , 2  ? PPAYMENT;

state 12 :
to 13 : when true , 2  ? QTICKETINFO;

state 13 :
to 14 : when true , 2  ? QTXOK;

state 7 :
to 10 : when true , 1 ! QFLIGHTSELECTED;
to 8 : when true , 1 ! QPAYMENT;

state 8 :
to 11 : when true , 1 ! QFLIGHTSELECTED;

state 2 :
to 4 : when true , 2  ? PCLIENTID;
to 3 : when true , 2  ? PPAYMENT;
