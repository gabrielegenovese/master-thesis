
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/philo.txt
---------------------------------------------------------------------*/

scm philo :

nb_channels = 14 ;
parameters :
real left ;
real right ;

automaton A5 :

initial : 0


state 1 :
to 2 : when true, 11 ? left ;

state 0 :
to 1 : when true, 10 ! left ;

state 3 :
to 0 : when true, 13 ? right ;

state 2 :
to 3 : when true, 12 ! right ;



automaton A4 :

initial : 0


state 1 :
to 0 : when true, 9 ! right ;

state 0 :
to 2 : when true, 10 ? left ;
to 1 : when true, 8 ? right ;

state 2 :
to 0 : when true, 11 ! left ;



automaton A3 :

initial : 0


state 1 :
to 2 : when true, 7 ? left ;

state 0 :
to 1 : when true, 6 ! left ;

state 3 :
to 0 : when true, 9 ? right ;

state 2 :
to 3 : when true, 8 ! right ;



automaton A2 :

initial : 0


state 1 :
to 0 : when true, 5 ! right ;

state 0 :
to 2 : when true, 6 ? left ;
to 1 : when true, 4 ? right ;

state 2 :
to 0 : when true, 7 ! left ;



automaton A1 :

initial : 0


state 1 :
to 2 : when true, 3 ? left ;

state 0 :
to 1 : when true, 2 ! left ;

state 3 :
to 0 : when true, 5 ? right ;

state 2 :
to 3 : when true, 4 ! right ;



automaton A0 :

initial : 0


state 1 :
to 0 : when true, 1 ! right ;

state 0 :
to 2 : when true, 2 ? left ;
to 1 : when true, 0 ? right ;

state 2 :
to 0 : when true, 3 ! left ;


