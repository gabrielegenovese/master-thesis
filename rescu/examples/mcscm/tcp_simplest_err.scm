/* --------------------------------------------------
   Simplified version of TCP/IP protocol

   includes 3-way handshake
            active/passive close

   abstracts data exchange
   fix roles for client and server

   added small error in passive close
   ------------------------------------------------- */



scm ExtraSimpleTCP:
nb_channels = 2 ;
parameters:int a ;int s ;int d ;int f ;

/* ---------------------------------------------------- */
automaton client :
initial : 0

state 11:
to 13: when true , 1 ? f ;

state 10:
to 11: when true , 1 ? a ;
to 13: when true , 1 ? f ;

state 13:
to 14: when true , 0 ! a ;
to 15: when true , 1 ? a ;

state 15:
to 0: when true , 0 ! a ;

state 14:
to 0: when true , 1 ? a ;

state 1:
to 2: when true , 1 ? s ;
to 3: when true , 1 ? a ;

state 0:
to 1: when true , 0 ! s ;

state 3:
to 4: when true , 1 ? s ;

state 2:
to 4: when true , 1 ? a ;

state 5:
to 5: when true , 0 ! d ;
to 5: when true , 1 ? d ;
to 6: when true , 1 ? f ;
to 10: when true , 0 ! f ;

state 4:
to 5: when true , 0 ! a ;

state 7:
to 0: when true , 0 ! f ;  
/* to 8: when true , 0 ! f ;*/ /* ERROR: forget to wait for ack ! */

state 6:
to 7: when true , 0 ! a ; 

state 8:
to 0: when true , 1 ? a ;

/* ---------------------------------------------------- */
automaton server :
initial : 0

state 11:
to 13: when true , 0 ? f ;

state 10:
to 11: when true , 0 ? a ;
to 13: when true , 0 ? f ;

state 13:
to 14: when true , 1 ! a ;
to 15: when true , 0 ? a ;

state 15:
to 0: when true , 1 ! a ;

state 14:
to 0: when true , 0 ? a ;

state 1:
to 2: when true , 1 ! s ;
to 3: when true , 1 ! a ;

state 0:
to 1: when true , 0 ? s ;

state 3:
to 4: when true , 1 ! s ;

state 2:
to 4: when true , 1 ! a ;

state 5:
to 5: when true , 1 ! d ;
to 5: when true , 0 ? d ;
to 6: when true , 0 ? f ;
to 10: when true , 1 ! f ;

state 4:
to 5: when true , 0 ? a ;

state 7:
to 8: when true , 1 ! f ;

state 6:
to 7: when true , 1 ! a ;

state 8:
to 0: when true , 0 ? a ;

/* ---------------------------------------------------- */
bad_states:
/* client "established", thus server "established" */
(automaton client: in 5: true  automaton server: in 0: true  )
(automaton client: in 5: true  automaton server: in 1: true  )
(automaton client: in 5: true  automaton server: in 2: true  )
(automaton client: in 5: true  automaton server: in 3: true  )
/* client in 5, server in 4 possible due to message passing */
(automaton client: in 5: true  automaton server: in 6: true  )
(automaton client: in 5: true  automaton server: in 7: true  )
(automaton client: in 5: true  automaton server: in 8: true  )
/* client in 5, server in 10 possible due to message passing */
(automaton client: in 5: true  automaton server: in 11: true  )
(automaton client: in 5: true  automaton server: in 13: true  )
(automaton client: in 5: true  automaton server: in 14: true  )
(automaton client: in 5: true  automaton server: in 15: true  )

/* client "closed" thus server "closed" */
(automaton client: in 0: true  automaton server: in 1: true  )
(automaton client: in 0: true  automaton server: in 2: true  )
(automaton client: in 0: true  automaton server: in 3: true  )
(automaton client: in 0: true  automaton server: in 4: true  )
(automaton client: in 0: true  automaton server: in 5: true  )
(automaton client: in 0: true  automaton server: in 6: true  )
(automaton client: in 0: true  automaton server: in 7: true  )
(automaton client: in 0: true  automaton server: in 8: true  )
(automaton client: in 0: true  automaton server: in 10: true  )
(automaton client: in 0: true  automaton server: in 11: true  )
(automaton client: in 0: true  automaton server: in 13: true  )
(automaton client: in 0: true  automaton server: in 13: true  )
/* client in 0, server in 14 possible due to message passing */

