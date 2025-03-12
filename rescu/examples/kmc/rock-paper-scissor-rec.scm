
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/rock-paper-scissor-rec.txt
---------------------------------------------------------------------*/

scm rock_paper_scissor_rec :

nb_channels = 6 ;
parameters :
real tie ;
real win ;
real scissors ;
real paper ;
real rock ;
real play ;

automaton A2 :

initial : 0


state 1 :
to 2 : when true, 4 ! play ;

state 0 :
to 1 : when true, 0 ! play ;

state 2 :
to 0 : when true, 3 ? tie ;
to 0 : when true, 5 ? win ;
to 0 : when true, 3 ? win ;



automaton A1 :

initial : 0


state 1 :
to 4 : when true, 2 ! scissors ;
to 3 : when true, 2 ! paper ;
to 2 : when true, 2 ! rock ;

state 0 :
to 1 : when true, 4 ? play ;

state 4 :
to 0 : when true, 1 ? scissors ;
to 5 : when true, 1 ? paper ;
to 0 : when true, 1 ? rock ;

state 5 :
to 0 : when true, 5 ! win ;

state 3 :
to 0 : when true, 1 ? scissors ;
to 0 : when true, 1 ? paper ;
to 5 : when true, 1 ? rock ;

state 2 :
to 5 : when true, 1 ? scissors ;
to 0 : when true, 1 ? paper ;
to 0 : when true, 1 ? rock ;



automaton A0 :

initial : 0


state 1 :
to 4 : when true, 1 ! scissors ;
to 3 : when true, 1 ! paper ;
to 2 : when true, 1 ! rock ;

state 0 :
to 1 : when true, 0 ? play ;

state 4 :
to 5 : when true, 2 ? scissors ;
to 6 : when true, 2 ? paper ;
to 0 : when true, 2 ? rock ;

state 5 :
to 0 : when true, 3 ! tie ;

state 3 :
to 0 : when true, 2 ? scissors ;
to 5 : when true, 2 ? paper ;
to 6 : when true, 2 ? rock ;

state 2 :
to 6 : when true, 2 ? scissors ;
to 0 : when true, 2 ? paper ;
to 5 : when true, 2 ? rock ;

state 6 :
to 0 : when true, 3 ! win ;


