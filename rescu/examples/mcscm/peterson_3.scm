/* --------------------------------------------------
   leader election in an asynchronous ring topology
   following the algorithm of Peterson

   here: ring with only three peers
   ------------------------------------------------- */

scm Peterson3ring:
nb_channels = 3 ;
parameters:int a ;int c ;int b ;

/* ---------------------------------------------------- */
automaton peer1 :
initial : 81

state 11:
to 7: when true , 0 ? a ;
to 112: when true , 0 ? b ;
to 113: when true , 0 ? c ;

state 3311:
to 99: when true , 0 ? a ;
to 99: when true , 0 ? b ;
to 99: when true , 0 ? c ;

state 81:
to 11: when true , 1 ! a ;

state 22:
to 7: when true , 0 ? b ;
to 221: when true , 0 ? a ;
to 223: when true , 0 ? c ;

state 1133:
to 83: when true , 0 ? a ;
to 83: when true , 0 ? b ;
to 99: when true , 0 ? c ;

state 1122:
to 82: when true , 0 ? a ;
to 99: when true , 0 ? b ;
to 99: when true , 0 ? c ;

state 331:
to 3311: when true , 1 ! a ;

state 332:
to 3311: when true , 1 ! b ;

state 99:
to 91: when true , 0 ? a ;
to 92: when true , 0 ? b ;
to 93: when true , 0 ? c ;

state 82:
to 22: when true , 1 ! b ;

state 113:
to 1133: when true , 1 ! c ;

state 112:
to 1122: when true , 1 ! b ;

state 91:
to 99: when true , 1 ! a ;

state 83:
to 33: when true , 1 ! c ;

state 93:
to 99: when true , 1 ! c ;

state 92:
to 99: when true , 1 ! b ;

state 223:
to 2233: when true , 1 ! c ;
to 83: when true , 0 ? a ;
to 83: when true , 0 ? b ;
to 99: when true , 0 ? c ;

state 33:
to 7: when true , 0 ? c ;
to 331: when true , 0 ? a ;
to 332: when true , 0 ? b ;

state 221:
to 2211: when true , 1 ! a ;
to 99: when true , 0 ? a ;
to 99: when true , 0 ? b ;
to 99: when true , 0 ? c ;

state 2211 : /* deadend */

state 2233 : /* deadend */

state 7 : /* deadend */

/* ---------------------------------------------------- */
automaton peer2 :
initial : 82

state 11:
to 7: when true , 1 ? a ;
to 112: when true , 1 ? b ;
to 113: when true , 1 ? c ;

state 3311:
to 99: when true , 1 ? a ;
to 99: when true , 1 ? b ;
to 99: when true , 1 ? c ;

state 81:
to 11: when true , 2 ! a ;

state 22:
to 7: when true , 1 ? b ;
to 221: when true , 1 ? a ;
to 223: when true , 1 ? c ;

state 1133:
to 83: when true , 1 ? a ;
to 83: when true , 1 ? b ;
to 99: when true , 1 ? c ;

state 1122:
to 82: when true , 1 ? a ;
to 99: when true , 1 ? b ;
to 99: when true , 1 ? c ;

state 331:
to 3311: when true , 2 ! a ;

state 332:
to 3311: when true , 2 ! b ;

state 99:
to 91: when true , 1 ? a ;
to 92: when true , 1 ? b ;
to 93: when true , 1 ? c ;

state 82:
to 22: when true , 2 ! b ;

state 113:
to 1133: when true , 2 ! c ;

state 112:
to 1122: when true , 2 ! b ;

state 91:
to 99: when true , 2 ! a ;

state 83:
to 33: when true , 2 ! c ;

state 93:
to 99: when true , 2 ! c ;

state 92:
to 99: when true , 2 ! b ;

state 223:
to 2233: when true , 2 ! c ;
to 83: when true , 1 ? a ;
to 83: when true , 1 ? b ;
to 99: when true , 1 ? c ;

state 33:
to 7: when true , 1 ? c ;
to 331: when true , 1 ? a ;
to 332: when true , 1 ? b ;

state 221:
to 2211: when true , 2 ! a ;
to 99: when true , 1 ? a ;
to 99: when true , 1 ? b ;
to 99: when true , 1 ? c ;

state 2211 : /* deadend */

state 2233 : /* deadend */

state 7 : /* deadend */

/* ---------------------------------------------------- */
automaton peer3 :
initial : 83

state 11:
to 7: when true , 2 ? a ;
to 112: when true , 2 ? b ;
to 113: when true , 2 ? c ;

state 3311:
to 99: when true , 2 ? a ;
to 99: when true , 2 ? b ;
to 99: when true , 2 ? c ;

state 81:
to 11: when true , 0 ! a ;

state 22:
to 7: when true , 2 ? b ;
to 221: when true , 2 ? a ;
to 223: when true , 2 ? c ;

state 1133:
to 83: when true , 2 ? a ;
to 83: when true , 2 ? b ;
to 99: when true , 2 ? c ;

state 1122:
to 82: when true , 2 ? a ;
to 99: when true , 2 ? b ;
to 99: when true , 2 ? c ;

state 331:
to 3311: when true , 0 ! a ;

state 332:
to 3311: when true , 0 ! b ;

state 99:
to 91: when true , 2 ? a ;
to 92: when true , 2 ? b ;
to 93: when true , 2 ? c ;

state 82:
to 22: when true , 0 ! b ;

state 113:
to 1133: when true , 0 ! c ;

state 112:
to 1122: when true , 0 ! b ;

state 91:
to 99: when true , 0 ! a ;

state 83:
to 33: when true , 0 ! c ;

state 93:
to 99: when true , 0 ! c ;

state 92:
to 99: when true , 0 ! b ;

state 223:
to 2233: when true , 0 ! c ;
to 83: when true , 2 ? a ;
to 83: when true , 2 ? b ;
to 99: when true , 2 ? c ;

state 33:
to 7: when true , 2 ? c ;
to 331: when true , 2 ? a ;
to 332: when true , 2 ? b ;

state 221:
to 2211: when true , 0 ! a ;
to 99: when true , 2 ? a ;
to 99: when true , 2 ? b ;
to 99: when true , 2 ? c ;

state 2211 : /* deadend */

state 2233 : /* deadend */

state 7 : /* deadend */

/* ---------------------------------------------------- */
bad_states:
(automaton peer1: in 7: true  automaton peer3: in 7: true  automaton peer2: in 7: true  )

(automaton peer1: in 7: true  automaton peer2: in 7: true  )

(automaton peer1: in 7: true  automaton peer3: in 7: true  )

(automaton peer3: in 7: true  automaton peer2: in 7: true  )
