
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/negotiate.txt
---------------------------------------------------------------------*/

scm negotiate :

nb_channels = 2 ;
parameters :
real reject ;
real confirm ;
real accpt ;
real propose ;

automaton A1 :

initial : 0


state 1 :
to 4 : when true, 1 ! propose ;
to 3 : when true, 1 ! reject ;
to 2 : when true, 1 ! accpt ;

state 0 :
to 1 : when true, 0 ? propose ;

state 5 :
to 3 : when true, 1 ! confirm ;

state 4 :
to 1 : when true, 0 ? propose ;
to 3 : when true, 0 ? reject ;
to 5 : when true, 0 ? accpt ;

state 3 :

state 2 :
to 3 : when true, 0 ? confirm ;



automaton A0 :

initial : 0


state 1 :
to 4 : when true, 1 ? propose ;
to 3 : when true, 1 ? reject ;
to 2 : when true, 1 ? accpt ;

state 0 :
to 1 : when true, 0 ! propose ;

state 5 :
to 3 : when true, 1 ? confirm ;

state 4 :
to 1 : when true, 0 ! propose ;
to 3 : when true, 0 ! reject ;
to 5 : when true, 0 ! accpt ;

state 3 :

state 2 :
to 3 : when true, 0 ! confirm ;


