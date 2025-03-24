
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/fibo.txt
---------------------------------------------------------------------*/

scm fibo :

nb_channels = 2 ;
parameters :
real stop ;
real fibonacci ;

automaton A1 :

initial : 0


state 1 :
to 0 : when true, 1 ! fibonacci ;

state 0 :
to 2 : when true, 0 ? stop ;
to 1 : when true, 0 ? fibonacci ;

state 2 :



automaton A0 :

initial : 0


state 1 :
to 0 : when true, 1 ? fibonacci ;

state 0 :
to 2 : when true, 0 ! stop ;
to 1 : when true, 0 ! fibonacci ;

state 2 :


