
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/rock-paper-scissor.txt
---------------------------------------------------------------------*/

scm rock_paper_scissor :

nb_channels = 4 ;
parameters :
real tie ;
real win ;
real scissors ;
real paper ;
real rock ;

automaton A2 :

initial : 0


state 1 :

state 0 :
to 1 : when true, 2 ? tie ;
to 1 : when true, 3 ? win ;
to 1 : when true, 2 ? win ;



automaton A1 :

initial : 0


state 1 :
to 6 : when true, 0 ? scissors ;
to 5 : when true, 0 ? paper ;
to 4 : when true, 0 ? rock ;

state 0 :
to 3 : when true, 1 ! scissors ;
to 2 : when true, 1 ! paper ;
to 1 : when true, 1 ! rock ;

state 4 :

state 5 :

state 3 :
to 4 : when true, 0 ? scissors ;
to 6 : when true, 0 ? paper ;
to 5 : when true, 0 ? rock ;

state 7 :

state 2 :
to 5 : when true, 0 ? scissors ;
to 4 : when true, 0 ? paper ;
to 6 : when true, 0 ? rock ;

state 6 :
to 7 : when true, 3 ! win ;



automaton A0 :

initial : 0


state 1 :
to 6 : when true, 1 ? scissors ;
to 5 : when true, 1 ? paper ;
to 4 : when true, 1 ? rock ;

state 0 :
to 3 : when true, 0 ! scissors ;
to 2 : when true, 0 ! paper ;
to 1 : when true, 0 ! rock ;

state 5 :

state 4 :
to 7 : when true, 2 ! tie ;

state 3 :
to 4 : when true, 1 ? scissors ;
to 6 : when true, 1 ? paper ;
to 5 : when true, 1 ? rock ;

state 7 :

state 2 :
to 5 : when true, 1 ? scissors ;
to 4 : when true, 1 ? paper ;
to 6 : when true, 1 ? rock ;

state 6 :
to 7 : when true, 2 ! win ;


