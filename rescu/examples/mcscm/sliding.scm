/* --------------------------------------------------
   simplistic SLIDING WINDOW PROTOCOL

   sending a message of length 10 
   from a sending process to a reciever whereas
   the window is of fix size 2 

   safety invariant:
   acknowledgements sent by the reciever only
   correspond to pending messages
   ------------------------------------------------- */


scm SlidingWindows:

nb_channels = 2 ;

parameters :
real m0 ;
real a0 ;
real m1 ;
real a1 ;
real m2 ;
real a2 ;
real m3 ;
real a3 ;
real m4 ;
real a4 ;
real m5 ;
real a5 ;
real m6 ;
real a6 ;
real m7 ;
real a7 ;
real m8 ;
real a8 ;



/* automaton sending messages:
   only 'qeue up' message up to size
   <currently acknowledged>+<windowsize> */

automaton sender:
initial : 100

state 166 :
to 900 : when true , 1 ? a1 ;
to 900 : when true , 1 ? a2 ;
to 900 : when true , 1 ? a3 ;
to 900 : when true , 1 ? a4 ;
to 900 : when true , 1 ? a5 ;
to 900 : when true , 1 ? a6 ;
to 900 : when true , 1 ? a7 ;
to 900 : when true , 1 ? a8 ;
to 176 : when true , 0 ! m7 ;

state 177 :
to 900 : when true , 1 ? a1 ;
to 900 : when true , 1 ? a2 ;
to 900 : when true , 1 ? a3 ;
to 900 : when true , 1 ? a4 ;
to 900 : when true , 1 ? a5 ;
to 900 : when true , 1 ? a6 ;
to 900 : when true , 1 ? a7 ;
to 900 : when true , 1 ? a8 ;
to 187 : when true , 0 ! m8 ;

state 121 :
to 900 : when true , 1 ? a1 ;
to 900 : when true , 1 ? a3 ;
to 900 : when true , 1 ? a4 ;
to 900 : when true , 1 ? a5 ;
to 900 : when true , 1 ? a6 ;
to 900 : when true , 1 ? a7 ;
to 900 : when true , 1 ? a8 ;
to 131 : when true , 0 ! m3 ;
to 122 : when true , 1 ? a2 ;

state 133 :
to 900 : when true , 1 ? a1 ;
to 900 : when true , 1 ? a2 ;
to 900 : when true , 1 ? a3 ;
to 900 : when true , 1 ? a4 ;
to 900 : when true , 1 ? a5 ;
to 900 : when true , 1 ? a6 ;
to 900 : when true , 1 ? a7 ;
to 900 : when true , 1 ? a8 ;
to 143 : when true , 0 ! m4 ;

state 176 :
to 900 : when true , 1 ? a1 ;
to 900 : when true , 1 ? a2 ;
to 900 : when true , 1 ? a3 ;
to 900 : when true , 1 ? a4 ;
to 900 : when true , 1 ? a5 ;
to 900 : when true , 1 ? a6 ;
to 900 : when true , 1 ? a8 ;
to 186 : when true , 0 ! m8 ;
to 177 : when true , 1 ? a7 ;

state 144 :
to 900 : when true , 1 ? a1 ;
to 900 : when true , 1 ? a2 ;
to 900 : when true , 1 ? a3 ;
to 900 : when true , 1 ? a4 ;
to 900 : when true , 1 ? a5 ;
to 900 : when true , 1 ? a6 ;
to 900 : when true , 1 ? a7 ;
to 900 : when true , 1 ? a8 ;
to 154 : when true , 0 ! m5 ;

state 122 :
to 900 : when true , 1 ? a1 ;
to 900 : when true , 1 ? a2 ;
to 900 : when true , 1 ? a3 ;
to 900 : when true , 1 ? a4 ;
to 900 : when true , 1 ? a5 ;
to 900 : when true , 1 ? a6 ;
to 900 : when true , 1 ? a7 ;
to 900 : when true , 1 ? a8 ;
to 132 : when true , 0 ! m3 ;

state 186 :
to 900 : when true , 1 ? a1 ;
to 900 : when true , 1 ? a2 ;
to 900 : when true , 1 ? a3 ;
to 900 : when true , 1 ? a4 ;
to 900 : when true , 1 ? a5 ;
to 900 : when true , 1 ? a6 ;
to 187 : when true , 1 ? a7 ;

state 153 :
to 900 : when true , 1 ? a1 ;
to 900 : when true , 1 ? a2 ;
to 900 : when true , 1 ? a3 ;
to 900 : when true , 1 ? a6 ;
to 900 : when true , 1 ? a7 ;
to 900 : when true , 1 ? a8 ;
to 154 : when true , 1 ? a4 ;

state 111 :
to 900 : when true , 1 ? a1 ;
to 900 : when true , 1 ? a2 ;
to 900 : when true , 1 ? a3 ;
to 900 : when true , 1 ? a4 ;
to 900 : when true , 1 ? a5 ;
to 900 : when true , 1 ? a6 ;
to 900 : when true , 1 ? a7 ;
to 900 : when true , 1 ? a8 ;
to 121 : when true , 0 ! m2 ;

state 164 :
to 900 : when true , 1 ? a1 ;
to 900 : when true , 1 ? a2 ;
to 900 : when true , 1 ? a3 ;
to 900 : when true , 1 ? a4 ;
to 900 : when true , 1 ? a7 ;
to 900 : when true , 1 ? a8 ;
to 165 : when true , 1 ? a5 ;

state 132 :
to 900 : when true , 1 ? a1 ;
to 900 : when true , 1 ? a2 ;
to 900 : when true , 1 ? a4 ;
to 900 : when true , 1 ? a5 ;
to 900 : when true , 1 ? a6 ;
to 900 : when true , 1 ? a7 ;
to 900 : when true , 1 ? a8 ;
to 142 : when true , 0 ! m4 ;
to 133 : when true , 1 ? a3 ;

state 100 :
to 110 : when true , 0 ! m1 ;

state 175 :
to 900 : when true , 1 ? a1 ;
to 900 : when true , 1 ? a2 ;
to 900 : when true , 1 ? a3 ;
to 900 : when true , 1 ? a4 ;
to 900 : when true , 1 ? a5 ;
to 900 : when true , 1 ? a8 ;
to 176 : when true , 1 ? a6 ;

state 187 :
to 900 : when true , 1 ? a1 ;
to 900 : when true , 1 ? a2 ;
to 900 : when true , 1 ? a3 ;
to 900 : when true , 1 ? a4 ;
to 900 : when true , 1 ? a5 ;
to 900 : when true , 1 ? a6 ;
to 900 : when true , 1 ? a7 ;
to 188 : when true , 1 ? a8 ;

state 154 :
to 900 : when true , 1 ? a1 ;
to 900 : when true , 1 ? a2 ;
to 900 : when true , 1 ? a3 ;
to 900 : when true , 1 ? a4 ;
to 900 : when true , 1 ? a6 ;
to 900 : when true , 1 ? a7 ;
to 900 : when true , 1 ? a8 ;
to 164 : when true , 0 ! m6 ;
to 155 : when true , 1 ? a5 ;

state 142 :
to 900 : when true , 1 ? a1 ;
to 900 : when true , 1 ? a2 ;
to 900 : when true , 1 ? a5 ;
to 900 : when true , 1 ? a6 ;
to 900 : when true , 1 ? a7 ;
to 900 : when true , 1 ? a8 ;
to 143 : when true , 1 ? a3 ;

state 110 :
to 120 : when true , 0 ! m2 ;
to 111 : when true , 1 ? a1 ;

state 165 :
to 900 : when true , 1 ? a1 ;
to 900 : when true , 1 ? a2 ;
to 900 : when true , 1 ? a3 ;
to 900 : when true , 1 ? a4 ;
to 900 : when true , 1 ? a5 ;
to 900 : when true , 1 ? a7 ;
to 900 : when true , 1 ? a8 ;
to 175 : when true , 0 ! m7 ;
to 166 : when true , 1 ? a6 ;

state 155 :
to 900 : when true , 1 ? a1 ;
to 900 : when true , 1 ? a2 ;
to 900 : when true , 1 ? a3 ;
to 900 : when true , 1 ? a4 ;
to 900 : when true , 1 ? a5 ;
to 900 : when true , 1 ? a6 ;
to 900 : when true , 1 ? a7 ;
to 900 : when true , 1 ? a8 ;
to 165 : when true , 0 ! m6 ;

state 131 :
to 900 : when true , 1 ? a1 ;
to 900 : when true , 1 ? a4 ;
to 900 : when true , 1 ? a5 ;
to 900 : when true , 1 ? a6 ;
to 900 : when true , 1 ? a7 ;
to 900 : when true , 1 ? a8 ;
to 132 : when true , 1 ? a2 ;

state 120 :
to 121 : when true , 1 ? a1 ;

state 188 :
to 900 : when true , 1 ? a1 ;
to 900 : when true , 1 ? a2 ;
to 900 : when true , 1 ? a3 ;
to 900 : when true , 1 ? a4 ;
to 900 : when true , 1 ? a5 ;
to 900 : when true , 1 ? a6 ;
to 900 : when true , 1 ? a7 ;
to 900 : when true , 1 ? a8 ;

state 143 :
to 900 : when true , 1 ? a1 ;
to 900 : when true , 1 ? a2 ;
to 900 : when true , 1 ? a3 ;
to 900 : when true , 1 ? a5 ;
to 900 : when true , 1 ? a6 ;
to 900 : when true , 1 ? a7 ;
to 900 : when true , 1 ? a8 ;
to 153 : when true , 0 ! m5 ;
to 144 : when true , 1 ? a4 ;


state 900 : /* error */



/* receiver automaton:
   acknowledge each message
*/
automaton receiver:
initial : 0
state 0 :
to 1 : when true , 0 ? m1 ;
to 2 : when true , 0 ? m2 ;
to 3 : when true , 0 ? m3 ;
to 4 : when true , 0 ? m4 ;
to 5 : when true , 0 ? m5 ;
to 6 : when true , 0 ? m6 ;
to 7 : when true , 0 ? m7 ;
to 8 : when true , 0 ? m8 ;
state 1 :
to 0 : when true , 1 ! a1 ;

state 2 :
to 0 : when true , 1 ! a2 ;

state 3 :
to 0 : when true , 1 ! a3 ;

state 4 :
to 0 : when true , 1 ! a4 ;

state 5 :
to 0 : when true , 1 ! a5 ;

state 6 :
to 0 : when true , 1 ! a6 ;

state 7 :
to 0 : when true , 1 ! a7 ;

state 8 :
to 0 : when true , 1 ! a8 ;




/* ------------------------------------------------- */
/* BAD states */
bad_states:
(automaton sender: in 900 : true)
