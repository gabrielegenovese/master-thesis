
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/benchmarks/HealthSystem.txt
---------------------------------------------------------------------*/

scm HealthSystem :

nb_channels = 10 ;
parameters :
real helpReq ;
real provideService ;
real fwdOk ;
real fwd ;
real logCreated ;
real account ;
real ok ;
real notSubscribed ;
real nok ;
real subscribed ;
real sendData ;

automaton A5 :

initial : 0


state 1 :
to 0 : when true, 8 ! provideService ;

state 0 :
to 1 : when true, 9 ? helpReq ;



automaton A4 :

initial : 0


state 1 :
to 2 : when true, 7 ! fwdOk ;

state 0 :
to 1 : when true, 6 ? fwd ;

state 2 :
to 0 : when true, 9 ! helpReq ;



automaton A3 :

initial : 0


state 1 :
to 0 : when true, 5 ! logCreated ;

state 0 :
to 1 : when true, 4 ? account ;



automaton A2 :

initial : 0


state 1 :
to 0 : when true, 2 ! ok ;
to 0 : when true, 2 ! nok ;

state 0 :
to 1 : when true, 1 ? subscribed ;



automaton A1 :

initial : 0


state 1 :
to 0 : when true, 8 ? provideService ;
to 0 : when true, 3 ? notSubscribed ;

state 0 :
to 1 : when true, 0 ! sendData ;



automaton A0 :

initial : 0


state 1 :
to 2 : when true, 1 ! subscribed ;

state 0 :
to 1 : when true, 0 ? sendData ;

state 4 :
to 5 : when true, 4 ! account ;

state 5 :
to 6 : when true, 5 ? logCreated ;

state 3 :
to 0 : when true, 3 ! notSubscribed ;

state 7 :
to 0 : when true, 7 ? fwdOk ;

state 2 :
to 4 : when true, 2 ? ok ;
to 3 : when true, 2 ? nok ;

state 6 :
to 7 : when true, 6 ! fwd ;


