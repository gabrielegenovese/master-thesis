/* --------------------------------------------------
   simple token passing protocol in a ring with
   four peers
   ------------------------------------------------- */

scm ring_protocol : 

nb_channels = 4 ;
/*
one channel per machine
*/
parameters : 
int a ; /* alarm */
int t ; /* token */


automaton zero :

initial : 0 

state 0 : /* 0 token */
to 0 : when true , 3 ? a ; 
to 1 : when true , 3 ? t ; 

state 1 : /* 1 token */
to 2 : when true , 0 ! a ;
to 3 : when true , 3 ? a ;
to 4 : when true , 3 ? t ;

state 2 : /* 1 token, alarm sent */
to 0 : when true , 0 ! t ;
to 3 : when true , 3 ? a ;
to 4 : when true , 3 ? t ;

state 3 : /* 1 token, alarm received */
to 0 : when true , 0 ! t ;

state 4 : /* 2 tokens = bad states */



automaton one :

initial : 1 

state 0 : /* 0 token */
to 0 : when true , 0 ? a ; 
to 1 : when true , 0 ? t ; 

state 1 : /* 1 token */
to 2 : when true , 1 ! a ;
to 3 : when true , 0 ? a ;
to 4 : when true , 0 ? t ;

state 2 : /* 1 token, alarm sent */
to 0 : when true , 1 ! t ;
to 3 : when true , 0 ? a ;
to 4 : when true , 0 ? t ;

state 3 : /* 1 token, alarm received */
to 0 : when true , 1 ! t ;

state 4 : /* 2 tokens = bad states */





automaton two :

initial : 0 

state 0 : /* 0 token */
to 0 : when true , 1 ? a ; 
to 1 : when true , 1 ? t ; 

state 1 : /* 1 token */
to 2 : when true , 2 ! a ;
to 3 : when true , 1 ? a ;
to 4 : when true , 1 ? t ;

state 2 : /* 1 token, alarm sent */
to 0 : when true , 2 ! t ;
to 3 : when true , 1 ? a ;
to 4 : when true , 1 ? t ;

state 3 : /* 1 token, alarm received */
to 0 : when true , 2 ! t ;

state 4 : /* 2 tokens = bad states */





automaton three :

initial : 1 

state 0 : /* 0 token */
to 0 : when true , 2 ? a ; 
to 1 : when true , 2 ? t ; 

state 1 : /* 1 token */
to 2 : when true , 3 ! a ;
to 3 : when true , 2 ? a ;
to 4 : when true , 2 ? t ;

state 2 : /* 1 token, alarm sent */
to 0 : when true , 3 ! t ;
to 3 : when true , 1 ? a ;
to 4 : when true , 2 ? t ;

state 3 : /* 1 token, alarm received */
to 0 : when true , 3 ! t ;

state 4 : /* 2 tokens = bad states */


bad_states:
(automaton zero: in 4: true)
(automaton one: in 4: true)
(automaton two: in 4: true)
(automaton three: in 4: true)
