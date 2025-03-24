
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/benchmarks/CloudSystemVFour.txt
---------------------------------------------------------------------*/

scm CloudSystemVFour :

nb_channels = 6 ;
parameters :
real log ;
real setup ;
real syncLog ;
real syncLogout ;
real logout ;
real access ;
real syncAccess ;
real connect ;

automaton A3 :

initial : 0


state 0 :
to 0 : when true, 5 ? log ;



automaton A2 :

initial : 0


state 1 :
to 2 : when true, 4 ! setup ;

state 0 :
to 1 : when true, 0 ? connect ;

state 3 :
to 0 : when true, 0 ? logout ;

state 2 :
to 3 : when true, 1 ! syncAccess ;



automaton A1 :

initial : 0


state 1 :
to 2 : when true, 2 ? syncLogout ;
to 1 : when true, 2 ? access ;

state 0 :
to 1 : when true, 4 ? setup ;

state 3 :
to 0 : when true, 3 ! syncLog ;

state 2 :
to 3 : when true, 5 ! log ;



automaton A0 :

initial : 0


state 1 :
to 2 : when true, 1 ? syncAccess ;

state 0 :
to 1 : when true, 0 ! connect ;

state 4 :
to 0 : when true, 3 ? syncLog ;

state 3 :
to 4 : when true, 2 ! syncLogout ;

state 2 :
to 3 : when true, 0 ! logout ;
to 2 : when true, 2 ! access ;


