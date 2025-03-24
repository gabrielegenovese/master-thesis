
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/rock-paper-scissor-simp.txt
---------------------------------------------------------------------*/

scm rock_paper_scissor_simp :

nb_channels = 2 ;
parameters :
real scissors ;
real paper ;
real rock ;

automaton A1 :

initial : 0


state 1 :
to 2 : when true, 0 ? scissors ;
to 2 : when true, 0 ? paper ;
to 2 : when true, 0 ? rock ;

state 0 :
to 1 : when true, 1 ! scissors ;
to 1 : when true, 1 ! paper ;
to 1 : when true, 1 ! rock ;

state 2 :



automaton A0 :

initial : 0


state 1 :
to 2 : when true, 1 ? scissors ;
to 2 : when true, 1 ? paper ;
to 2 : when true, 1 ? rock ;

state 0 :
to 1 : when true, 0 ! scissors ;
to 1 : when true, 0 ! paper ;
to 1 : when true, 0 ! rock ;

state 2 :


