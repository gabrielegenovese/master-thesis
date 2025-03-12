/* ------------------------------------------------------------------
   Our running example:
   the client/server/database protocol, Figure 1 of
   https://doi.org/10.1016/j.jlamp.2022.100843
   ----------------------------------------------------------------- */

scm client_server_database :

nb_channels = 3 ;
parameters : 
real req ;
real res ;
real acks ;
real logs ;
real ackd ;
real logc ;

automaton server :

initial : 0

state 0 :
to 1 :  when true , 0 ? req ;

state 1 :
to 2 :  when true , 1 ! res ;

state 2 :
to 3 :  when true , 0 ? acks ;

state 3 :
to 0 : when true , 2 ! logs ;



automaton client :

initial : 0

state 0 :
to 1 :  when true , 0 ! req ;
to 3 : when true , 2 ! logc ;

state 1 :
to 2 :  when true , 1 ? res ;

state 2 :
to 0 : when true , 0 ! acks ;

state 3 :
to 0 : when true , 1 ? ackd ;


automaton database :

initial : 0
state 0 :
to 1 : when true , 2 ? logc ;
to 0 : when true , 2 ? logs ;

state 1 :
to 0 : when true , 1 ! ackd ;



bad_states:
(automaton client: in 0 : true with (req | res | acks | logs | ackd | logc)^*.#.(req | res | acks | logs | logc).#.(req | res | acks | logs | ackd | logc)^*)

(automaton client: in 0 : true automaton server: in 1 : true)

