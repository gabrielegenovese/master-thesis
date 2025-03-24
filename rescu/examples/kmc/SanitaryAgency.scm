
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/benchmarks/SanitaryAgency.txt
---------------------------------------------------------------------*/

scm SanitaryAgency :

nb_channels = 9 ;
parameters :
real paymentM ;
real recMoneyPossM ;
real paymentT ;
real recMoneyPossT ;
real done ;
real paymentPublicFee ;
real req ;
real paymentPrivateFee ;
real provM ;
real provT ;
real acceptance ;
real refusal ;
real provInf ;
real askInfo ;
real request ;

automaton A3 :

initial : 0


state 1 :
to 2 : when true, 8 ! paymentT ;

state 0 :
to 3 : when true, 7 ? recMoneyPossM ;
to 1 : when true, 7 ? recMoneyPossT ;

state 4 :
to 5 : when true, 3 ? paymentPrivateFee ;

state 5 :
to 0 : when true, 6 ! done ;

state 3 :
to 2 : when true, 8 ! paymentM ;

state 2 :
to 4 : when true, 5 ? paymentPublicFee ;



automaton A2 :

initial : 0


state 1 :
to 4 : when true, 2 ! provM ;
to 2 : when true, 2 ! provT ;

state 0 :
to 1 : when true, 4 ? req ;

state 4 :
to 5 : when true, 7 ! recMoneyPossM ;

state 5 :
to 0 : when true, 8 ? paymentM ;

state 3 :
to 0 : when true, 8 ? paymentT ;

state 2 :
to 3 : when true, 7 ! recMoneyPossT ;



automaton A1 :

initial : 0


state 1 :
to 2 : when true, 1 ! askInfo ;

state 0 :
to 1 : when true, 0 ? request ;

state 4 :
to 5 : when true, 4 ! req ;

state 5 :
to 6 : when true, 5 ! paymentPublicFee ;

state 3 :
to 4 : when true, 1 ! acceptance ;
to 0 : when true, 1 ! refusal ;

state 2 :
to 3 : when true, 0 ? provInf ;

state 6 :
to 0 : when true, 6 ? done ;



automaton A0 :

initial : 0


state 1 :
to 2 : when true, 1 ? askInfo ;

state 0 :
to 1 : when true, 0 ! request ;

state 4 :
to 5 : when true, 2 ? provM ;
to 5 : when true, 2 ? provT ;

state 5 :
to 0 : when true, 3 ! paymentPrivateFee ;

state 3 :
to 4 : when true, 1 ? acceptance ;
to 0 : when true, 1 ? refusal ;

state 2 :
to 3 : when true, 0 ! provInf ;


