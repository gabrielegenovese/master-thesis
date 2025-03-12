/* --------------------------------------------------
   simple TCP-like protocol for connection 
   establishment whereas two clients share
   the same channel to a server (but are 
   distinguishable by their messages)                                     
   ------------------------------------------------- */

scm SimpleClientServer:
nb_channels = 2 ;
parameters:int f1 ;int f2 ;int r1 ;int r2 ;int a1 ;int a2 ;int c2 ;int c1 ;int d2 ;int d1 ;

/* ---------------------------------------------------- */
automaton client1 :
initial : 0

state 1:
to 1: when true , 0 ! r1 ;
to 2: when true , 1 ? a1 ;

state 0:
to 1: when true , 0 ! r1 ;

state 3:
to 0: when true , 1 ? a1 ;

state 2:
to 2: when true , 0 ! c1 ;
to 2: when true , 1 ? d1 ;
to 3: when true , 0 ! f1 ;
to 4: when true , 1 ? f1 ;

state 4:
to 0: when true , 0 ! a1 ;

/* ---------------------------------------------------- */
automaton server :
initial : 0

state 11:
to 12: when true , 1 ! a1 ;
to 11: when true , 0 ? r2 ;
to 11: when true , 0 ? c2 ;
to 11: when true , 0 ? a2 ;
to 11: when true , 0 ? f2 ;

state 24:
to 0: when true , 1 ! a2 ;
to 24: when true , 0 ? r1 ;
to 24: when true , 0 ? c1 ;
to 24: when true , 0 ? a1 ;
to 24: when true , 0 ? f1 ;

state 13:
to 0: when true , 1 ! a1 ;
to 13: when true , 0 ? r2 ;
to 13: when true , 0 ? c2 ;
to 13: when true , 0 ? a2 ;
to 13: when true , 0 ? f2 ;

state 12:
to 12: when true , 1 ! d1 ;
to 12: when true , 0 ? c1 ;
to 13: when true , 0 ? f1 ;
to 14: when true , 1 ! f1 ;
to 12: when true , 0 ? r2 ;
to 12: when true , 0 ? c2 ;
to 12: when true , 0 ? a2 ;
to 12: when true , 0 ? f2 ;

state 14:
to 0: when true , 1 ! a1 ;
to 14: when true , 0 ? r2 ;
to 14: when true , 0 ? c2 ;
to 14: when true , 0 ? a2 ;
to 14: when true , 0 ? f2 ;

state 22:
to 22: when true , 1 ! d2 ;
to 22: when true , 0 ? c2 ;
to 23: when true , 0 ? f2 ;
to 24: when true , 1 ! f2 ;
to 22: when true , 0 ? r1 ;
to 22: when true , 0 ? c1 ;
to 22: when true , 0 ? a1 ;
to 22: when true , 0 ? f1 ;

state 23:
to 0: when true , 1 ! a2 ;
to 23: when true , 0 ? r1 ;
to 23: when true , 0 ? c1 ;
to 23: when true , 0 ? a1 ;
to 23: when true , 0 ? f1 ;

state 0:
to 11: when true , 0 ? r1 ;
to 21: when true , 0 ? r2 ;
to 0: when true , 0 ? a1 ;
to 0: when true , 0 ? a2 ;
to 0: when true , 0 ? c1 ;
to 0: when true , 0 ? c2 ;
to 0: when true , 0 ? f1 ;
to 0: when true , 0 ? f2 ;

state 21:
to 22: when true , 1 ! a2 ;
to 21: when true , 0 ? r1 ;
to 21: when true , 0 ? c1 ;
to 21: when true , 0 ? a1 ;
to 21: when true , 0 ? f1 ;

/* ---------------------------------------------------- */
automaton client2 :
initial : 0

state 1:
to 1: when true , 0 ! r2 ;
to 2: when true , 1 ? a2 ;

state 0:
to 1: when true , 0 ! r2 ;

state 3:
to 0: when true , 1 ? a2 ;

state 2:
to 2: when true , 0 ! c2 ;
to 2: when true , 1 ? d2 ;
to 3: when true , 0 ! f2 ;
to 4: when true , 1 ? f2 ;

state 4:
to 0: when true , 0 ! a2 ;

/* ---------------------------------------------------- */
bad_states:
(automaton client1: in 2: true  automaton client2: in 2: true)
