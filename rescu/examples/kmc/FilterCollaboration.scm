
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/benchmarks/FilterCollaboration.txt
---------------------------------------------------------------------*/

scm FilterCollaboration :

nb_channels = 2 ;
parameters :
real remove ;
real ok ;
real noMoreItems ;
real itemToBeFiltered ;
real newFilterRequest ;

automaton A1 :

initial : 0


state 1 :
to 0 : when true, 1 ! noMoreItems ;
to 2 : when true, 1 ! itemToBeFiltered ;

state 0 :
to 1 : when true, 0 ? newFilterRequest ;

state 2 :
to 1 : when true, 0 ? remove ;
to 1 : when true, 0 ? ok ;



automaton A0 :

initial : 0


state 1 :
to 0 : when true, 1 ? noMoreItems ;
to 2 : when true, 1 ? itemToBeFiltered ;

state 0 :
to 1 : when true, 0 ! newFilterRequest ;

state 2 :
to 1 : when true, 0 ! remove ;
to 1 : when true, 0 ! ok ;


