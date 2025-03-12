
/* --------------------------------------------------
   our basic example:
   the connection-disconnection protocol
   ------------------------------------------------- */

scm connection_disconnection :

nb_channels = 2 ;
parameters : 
real o ;
real c ;
real d ;

automaton sender :

initial : 0

state 0 :
to 1 :  when true , 0 ! o  ;

state 1 :
to 0 :  when true , 0 ! c ;
to 0 :  when true , 1 ? d ;


automaton receiver :

initial : 0

state 0 :
to 1 :  when true , 0 ? o ;

state 1 :
to 0 :  when true , 0 ? c ;
to 0 :  when true , 1 ! d ;


bad_states:
(automaton receiver: in 0 : true with c.(o|c)^*.#.d^*)
