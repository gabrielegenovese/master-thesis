/* --------------------------------------------------
   Simple Asynchronous Load Balancer

   (originally communicated by Etienne Lozes, enhanced 
    version included in heap-hop tool's examples:
    http://www.lsv.ens-cachan.fr/Software/heap-hop/ )

   uses channels as simple counters (without zero test)
   version below includes error 
   ---------------------------------------------------- */


scm LoadBalancing :

nb_channels = 4 ;

parameters :
real t ; /* task */
real a ; /* ack  */
real i;  


/* ---------------------------------------------------- */
automaton left :

initial : 4

state 0 :
to 2 : when true, 0 ! t ;
to 1 : when true, 0 ! a ;

state 1 :
to 3 : when true, 1 ? a ;
to 0 : when true, 1 ? t ;

state 2 :
to 0 : when true, 2 ! i ; /* counter ++ */

state 3 :
to 1 : when true, 2 ? i ; /* counter -- */

state 4 :
to 1 : when true, 2 ! i ; /* init counter 1 */



/* ---------------------------------------------------- */
automaton right :

initial : 4

state 0 :
to 2 : when true, 1 ! t ;
to 1 : when true, 1 ! a ;

state 1 :
to 3 : when true, 0 ? a ;
to 0 : when true, 0 ? t ;
to 0 : when true, 1 ! t ; /* ERROR : no termination */

state 2 :
to 2 : when true, 3 ! i ;
to 0 : when true, 3 ! i ; /* counter ++ */


state 3 :
to 1 : when true, 3 ? i ; /* counter -- */

state 4 :
to 1 : when true, 3 ! i ; /* init counter 1 */



/* ---------------------------------------------------- */
bad_states:
/* DEADLOCK */
(automaton left: in 1: true
 automaton right: in 1: true
 with (t|a).(t|a)^*.#.(t|a)^*.#.#)
/* MEMORY LEAK */
(automaton left: in 1: true
 automaton right: in 1: true
 with #.(t|a)^*.#.#.i.i^* )

