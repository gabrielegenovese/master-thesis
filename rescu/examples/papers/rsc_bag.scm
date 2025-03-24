
/* -----------------------------------------------------------
   System that is RSC with bag buffers but not with FIFO ones.
   ---------------------------------------------------------- */

scm connection_disconnection :

nb_channels = 2 ;
parameters : 
real v1 ;
real v2 ;
real v3 ;

automaton p :

initial : 0

state 0 :
to 1 :  when true , 0 ! v1  ;

state 1:


automaton q :

initial : 0

state 0 :
to 1 :  when true , 0 ! v2 ;

state 1 :
to 2 :  when true , 1 ! v3 ;

state 2:

automaton r :

initial : 0

state 0 :
to 1 :  when true , 1 ? v3 ;

state 1 :
to 2 :  when true , 0 ? v1 ;

state 2:

bad_states:
(automaton p: in 1 : true   automaton q: in 2 : true   automaton r: in 2 : true)
