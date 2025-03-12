
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/ce-reduced-obi.txt
---------------------------------------------------------------------*/

scm ce_reduced_obi :

nb_channels = 2 ;
parameters :
real LOGOUT ;
real ACCESS ;

automaton A2 :

initial : 0


state 1 :

state 0 :
to 1 : when true, 1 ? LOGOUT ;



automaton A1 :

initial : 0


state 0 :
to 0 : when true, 0 ? ACCESS ;



automaton A0 :

initial : 0


state 1 :

state 0 :
to 1 : when true, 1 ! LOGOUT ;
to 0 : when true, 0 ! ACCESS ;


