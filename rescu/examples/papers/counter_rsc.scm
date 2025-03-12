
/* ------------------------------------------------------------------
   Example of non RSC system
   Figure 3 of
   https://doi.org/10.1016/j.jlamp.2022.100843
   ----------------------------------------------------------------- */

scm connection_disconnection :

nb_channels = 2 ;
parameters : 
real v1 ;
real v2 ;

automaton p :

initial : 0

state 0 :
to 1 :  when true , 1 ! v1  ;
to 3 :  when true , 0 ? v2 ;

state 1 :
to 2 :  when true , 0 ? v2 ;

state 3 :
to 2 :  when true , 1 ! v1 ;

state 2 : // End of protocol


automaton q :

initial : 0

state 0 :
to 1 :  when true , 0 ! v2 ;

state 1 :
to 2 :  when true , 1 ? v1 ;

state 2 : // End of protocol

bad_states:
(automaton p: in 0 : true with v1.(v2|v1)^*.#.v1^*)
