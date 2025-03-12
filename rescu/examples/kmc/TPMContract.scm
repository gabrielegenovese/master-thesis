
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/benchmarks/TPMContract.txt
---------------------------------------------------------------------*/

scm TPMContract :

nb_channels = 2 ;
parameters :
real SendComplete ;
real TpmStatus ;
real AckStartSend ;
real GetTpmStatus ;
real send ;

automaton A1 :

initial : 0


state 1 :
to 3 : when true, 1 ! AckStartSend ;

state 0 :
to 2 : when true, 0 ? GetTpmStatus ;
to 1 : when true, 0 ? send ;

state 4 :
to 2 : when true, 1 ! SendComplete ;
to 3 : when true, 1 ! TpmStatus ;

state 3 :
to 4 : when true, 0 ? GetTpmStatus ;

state 2 :
to 0 : when true, 1 ! TpmStatus ;



automaton A0 :

initial : 0


state 1 :
to 3 : when true, 1 ? AckStartSend ;

state 0 :
to 2 : when true, 0 ! GetTpmStatus ;
to 1 : when true, 0 ! send ;

state 4 :
to 2 : when true, 1 ? SendComplete ;
to 3 : when true, 1 ? TpmStatus ;

state 3 :
to 4 : when true, 0 ! GetTpmStatus ;

state 2 :
to 0 : when true, 1 ? TpmStatus ;


