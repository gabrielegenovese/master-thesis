
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/travel-agency.txt
---------------------------------------------------------------------*/

scm travel_agency :

nb_channels = 5 ;
parameters :
real Ack ;
real Payment ;
real No ;
real Bye ;
real Yes ;
real Dummy ;
real Quote ;
real Query ;

automaton A2 :

initial : 0


state 1 :
to 2 : when true, 3 ? Payment ;

state 0 :
to 3 : when true, 2 ? No ;
to 1 : when true, 2 ? Yes ;
to 0 : when true, 2 ? Dummy ;

state 3 :

state 2 :
to 3 : when true, 4 ! Ack ;



automaton A1 :

initial : 0


state 1 :
to 0 : when true, 1 ? Quote ;

state 0 :
to 4 : when true, 0 ! No ;
to 2 : when true, 0 ! Yes ;
to 1 : when true, 0 ! Query ;

state 5 :

state 4 :
to 5 : when true, 0 ! Bye ;

state 3 :
to 4 : when true, 4 ? Ack ;

state 2 :
to 3 : when true, 3 ! Payment ;



automaton A0 :

initial : 0


state 1 :
to 2 : when true, 1 ! Quote ;

state 0 :
to 6 : when true, 0 ? No ;
to 3 : when true, 0 ? Yes ;
to 1 : when true, 0 ? Query ;

state 5 :

state 4 :
to 5 : when true, 0 ? Bye ;

state 3 :
to 4 : when true, 2 ! Yes ;

state 2 :
to 0 : when true, 2 ! Dummy ;

state 6 :
to 4 : when true, 2 ! No ;


