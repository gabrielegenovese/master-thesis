/* ************************************************************************* */
/* A BOUNDED RETRANSMISSION PROTOCOL                                         */
/*                                                                           */
/* (positive acknowledgement with retransmission protocol, inspired by the   */
/*                                                                           */
/* note that we model the timed behaviour of brp with the help of non-       */
/* determinism and an additional synchronization between the two processes   */
/* on a second pair of channels following the ideas of [1,2].                */
/* we adapt the basic accumptions of [3] and model only the synchronization  */
/* part of the protocol, ignoring the transfer of actual data and the input  */
/* output behaviour with respect to the environment.                         */
/*                                                                           */
/* ************************************************************************* */

scm BRP:

/* channels 0,1 are the actual communication channels that could be lossy,
   channels 2 is used to synchronize the "timing" 
   of the two paritcipating processes 
 */
nb_channels = 3 ;  

/*lossy : 0 , 1*/

parameters :
/* brp relies on tagging messages by zero (o),
   one (i), (first), and (last) 
 */
real o ;
real i ;
real first ;
real last ;
/* we simulate synchronized timeout via handshake */
real sync ;
real ack ;


/* ************************************************************************* */
automaton client :

initial : 0 

state 0 :
to 10 : when true , 2 ! sync;

state 10 :
to 11 : when true , 1 ? ack;
to 10 : when true , 1 ? o; /* eat queues... */
to 10 : when true , 1 ? i;
to 10 : when true , 1 ? first;
to 10 : when true , 1 ? last;

state 11 :
to 1 : when true , 0 ! ack ;

state 1 :
to 2 : when true , 0 ! first;

state 2 :
to 3 : when true , 1 ? first;
to 2 : when true , 1 ? last;
to 2 : when true , 1 ? i;
to 2 : when true , 1 ? o;
to 2 : when true , 0 ! first;
to 0 : when true ; /* error */
                              
state 3 :
to 4 : when true , 0 ! last ;
to 5 : when true , 0 ! o ;

state 4 : 
to 0 : when true , 1 ? last; 
to 4 : when true , 1 ? first; 
to 4 : when true , 1 ? i; 
to 4 : when true , 1 ? o;
to 4 : when true , 0 ! last;
to 0 : when true ; /* error */


state 5 :
to 6 : when true , 1 ? o;
to 4 : when true , 1 ? first; 
to 4 : when true , 1 ? last;
to 4 : when true , 1 ? i; 
to 4 : when true , 0 ! o;
to 0 : when true ; /* error */


state 6 :
to 7 : when true , 0 ! i;
to 4 : when true , 0 ! last;


state 7 : 
to 3 : when true , 1 ? i ;
to 4 : when true , 1 ? first; 
to 4 : when true , 1 ? last;
to 4 : when true , 1 ? o; 
to 7 : when true , 0 ! i;
to 0 : when true ; /* error */




/* ************************************************************************* */
automaton server :

initial : 0

state 0 :
to 10 : when true , 2 ? sync;

state 10 :
to 11 : when true , 1 ! ack;

state 11 :
to 11 : when true , 0 ? o; /* eat queues... */
to 11 : when true , 0 ? i;
to 11 : when true , 0 ? first;
to 11 : when true , 0 ? last;
to 1 : when true , 0 ? ack ;


state 1 :
to 2 : when true , 0 ? first;
to 0 : when true ; /* timeout */

state 2 :
to 3 : when true , 1 ! first;
                              
state 3 :
to 4 : when true , 0 ? last ;
to 5 : when true , 0 ? o ;
to 0 : when true ; /* timeout */

state 4 : 
to 0 : when true , 1 ! last; 

state 5 :
to 6 : when true , 1 ! o;

state 6 :
to 7 : when true , 0 ? i;
to 4 : when true , 0 ? last;
to 0 : when true ; /* timeout */

state 7 : 
to 3 : when true , 1 ! i;



/* ************************************************************************* */
bad_states:
   /* assert: sync does not fail */
   (automaton server: in 0 : true automaton client: in 11 : true )
   (automaton client: in 1 : true 
    with (ack|first|last|i|o)^+.#.(ack|first|last|i|o)^+.#.(sync)^+)
   (automaton server: in 1 : true 
    with (ack|first|last|i|o)^+.#.(ack|first|last|i|o)^+.#.(sync)^+)

   /* ABP safety */       
   (automaton client: in 3 : true automaton server: in 6 : true )
   (automaton client: in 6 : true automaton server: in 3 : true )
   (automaton client: in 1 : true automaton server: in 3 : true )
   (automaton client: in 3 : true automaton server: in 1 : true )
   (automaton client: in 3: true in 6: true in 7: true 
    automaton server: in 5: true) 
   (automaton client: in 3: true in 5: true in 6: true 
    automaton server: in 7: true) 
   (automaton client: in 1: true in 3: true in 4: true
    automaton server: in 2: true)
   (automaton client: in 1: true in 2: true in 3: true
    automaton server: in 4: true)




/* ************************************************************************* */
/* [1] J.F. Groote, J. van de Pol "A bounded retransmission protocol for     */
/*     large data packets" in Proc. of AMAST'96                              */
/* [2] P. Argenion et al "The bounded retransmittion protocol must be on     */
/*     time" in Procl of TACAS/97                                            */
/* [3] TReX examples "the bounded retransmission protocol" at                */
/*     http://www.liafa.jussieu.fr/~sighirea/trex/demos/brp.html             */
/* ************************************************************************* */
