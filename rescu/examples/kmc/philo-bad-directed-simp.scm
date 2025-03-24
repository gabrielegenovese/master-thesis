
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/philo-bad-directed-simp.txt
---------------------------------------------------------------------*/

scm philo_bad_directed_simp :

nb_channels = 16 ;
parameters :
real left ;
real down ;
real right ;

automaton A7 :

initial : 0


state 1 :
to 2 : when true, 0 ? right ;

state 0 :
to 1 : when true, 14 ? left ;

state 3 :
to 0 : when true, 1 ! down ;

state 2 :
to 3 : when true, 15 ! down ;



automaton A6 :

initial : 0


state 1 :
to 0 : when true, 13 ? down ;

state 0 :
to 2 : when true, 14 ! left ;
to 1 : when true, 12 ! right ;

state 2 :
to 0 : when true, 15 ? down ;



automaton A5 :

initial : 0


state 1 :
to 2 : when true, 12 ? right ;

state 0 :
to 1 : when true, 10 ? left ;

state 3 :
to 0 : when true, 13 ! down ;

state 2 :
to 3 : when true, 11 ! down ;



automaton A4 :

initial : 0


state 1 :
to 0 : when true, 9 ? down ;

state 0 :
to 2 : when true, 10 ! left ;
to 1 : when true, 8 ! right ;

state 2 :
to 0 : when true, 11 ? down ;



automaton A3 :

initial : 0


state 1 :
to 2 : when true, 8 ? right ;

state 0 :
to 1 : when true, 6 ? left ;

state 3 :
to 0 : when true, 9 ! down ;

state 2 :
to 3 : when true, 7 ! down ;



automaton A2 :

initial : 0


state 1 :
to 0 : when true, 5 ? down ;

state 0 :
to 2 : when true, 6 ! left ;
to 1 : when true, 4 ! right ;

state 2 :
to 0 : when true, 7 ? down ;



automaton A1 :

initial : 0


state 1 :
to 2 : when true, 4 ? right ;

state 0 :
to 1 : when true, 2 ? left ;

state 3 :
to 0 : when true, 5 ! down ;

state 2 :
to 3 : when true, 3 ! down ;



automaton A0 :

initial : 0


state 1 :
to 0 : when true, 1 ? down ;

state 0 :
to 2 : when true, 2 ! left ;
to 1 : when true, 0 ! right ;

state 2 :
to 0 : when true, 3 ? down ;


