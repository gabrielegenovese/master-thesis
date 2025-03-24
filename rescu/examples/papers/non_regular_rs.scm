/* -------------------------------------------------------------
   Example of system with a non regular reachability space.
   Figure 5 of
   https://doi.org/10.1016/j.jlamp.2022.100843
   ----------------------------------------------------------- */

scm clien_server_database :

nb_channels = 3 ;
parameters : 
real a ;
real b ;
real c ;

automaton p :

initial : 0

state 0 :
to 1 :  when true , 0 ! a ;

state 1 :
to 2 :  when true , 1 ! b ;

state 2 :
to 0 :  when true , 2 ! c ;



bad_states:
(automaton p: in 0 : true with (a.a)^*.#.(b.b)^*.#.c)


