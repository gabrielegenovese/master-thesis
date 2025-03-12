/* --------------------------------------------------
   simple protocol with non-regular configurations

   as presented by Tristan Le Gall and Bertrand Jeannet
   in the proceedings of AMAST06 
   ------------------------------------------------- */

scm NonRegular :

nb_channels = 4 ;


parameters : 
real a ;
real b ; 
real c ;
real d ;

automaton one :

initial : 0

state 0 :
to 1 :  when true , 0 ! a  ;

state 1 :
to 2 :  when true , 1 ! b ;

state 2 :
to 0 :  when true , 3 ? d  ;



automaton two :

initial : 0

state 0 :
to 1 :  when true , 1 ? b  ;

state 1 :
to 2 :  when true , 2 ! c ;

state 2 :
to 0 :  when true , 3 ! d  ;



bad_states:
(automaton one: in 0: true automaton two: in 2: true)
