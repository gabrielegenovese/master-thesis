
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/benchmarks/client-server-logger.txt
---------------------------------------------------------------------*/

scm client_server_logger :

nb_channels = 3 ;
parameters :
real log ;
real ok ;
real error ;
real ko ;
real data ;
real req ;

automaton A2 :

initial : 0


state 0 :
to 0 : when true, 2 ? log ;



automaton A1 :

initial : 0


state 1 :
to 3 : when true, 1 ! ok ;
to 2 : when true, 1 ! ko ;

state 0 :
to 1 : when true, 0 ? req ;

state 4 :
to 4 : when true, 2 ! log ;

state 3 :
to 4 : when true, 0 ? data ;

state 2 :
to 0 : when true, 0 ? data ;



automaton A0 :

initial : 0


state 1 :
to 2 : when true, 0 ! data ;

state 0 :
to 1 : when true, 0 ! req ;

state 4 :

state 3 :

state 2 :
to 4 : when true, 1 ? ok ;
to 3 : when true, 1 ? error ;
to 0 : when true, 1 ? ko ;


