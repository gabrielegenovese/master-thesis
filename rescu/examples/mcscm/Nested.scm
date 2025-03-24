/* --------------------------------------------------
   simple protocol (based on connection disconnection)
   that includes nested control loops

   as presented by Tristan Le Gall and Bertrand Jeannet
   in the proceedings of AMAST06 
   ------------------------------------------------- */

scm Nested :


nb_channels = 1 ;


parameters : 
real o ;
real c ;
real m ;

automaton sender :

initial : 0

state 0 :
to 1 :  when true , 0 ! o  ;

state 1 :
to 1 :  when true , 0 ! m ;
to 0 :  when true , 0 ! c ;


automaton receiver :

initial : 0

state 0 :
to 1 :  when true , 0 ? o ;
to 2 :  when true , 0 ? c ;

state 1 :
to 1 :  when true , 0 ? m ;
to 0 :  when true , 0 ? c ;

state 2 : /* bad state */


bad_states:
(automaton receiver: in 2: true)
