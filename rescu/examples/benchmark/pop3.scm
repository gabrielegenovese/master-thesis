/* ************************************************************************* */
/* A POP3 (like) Protocol                                                    */
/*                                                                           */
/* inspired by RFC 1939 whereas the transmission is restricted to            */
/* a client sending commands, and the server answering either an ok (plus    */
/* maybe an additional data token) or an error message.                      */
/*                                                                           */
/* we verify that it is not the case the either client or server passed      */
/* the authentification phase (username/password) whereas the other          */
/* still remains there.                                                      */
/*                                                                           */
/* ************************************************************************* */
scm POP3:

nb_channels = 2 ;

parameters :
/* encode possible messages pop 3 */
real ok ;
real err ;
real user ;
real pass ;
real quit ;
real stat ;
real list ;
real retr ;
real dele ;
real noop ;
real rset ;
/* use d for any data token */
real d ; 
/* to simulate connection establishment and close via tcp */
real connect ;
real ack ;
real fin ;


/* ************************************************************************* */
automaton client :

initial : 0 

/* authentification phase */
state 0 :
to 1 : when true , 0 ! connect ;

state 1 :
to 10 : when true , 1 ? ok ;

state 10 :
to 11 : when true , 0 ! user ;
to 101  : when true , 0 ! quit ;
to 22 : when true , 0 ! stat ;
to 22 : when true , 0 ! list ;
to 22 : when true , 0 ! retr ;
to 22 : when true , 0 ! dele ;
to 22 : when true , 0 ! noop ;
to 22 : when true , 0 ! rset ;
to 22 : when true , 0 ! user ;
to 22 : when true , 0 ! pass ;

state 11 :
to 12 : when true , 1 ? ok ;
to 10 : when true , 1 ? err ;

state 12 :
to 13 : when true , 0 ! pass ;

state 13 :
to 100 : when true , 1 ? ok;
to 10 : when true , 1 ? err;

state 22 :
to 10 : when true , 1 ? err ;

/* transfer phase */
state 100 :
to 101  : when true , 0 ! quit ;
to 102 : when true , 0 ! stat ;
to 102 : when true , 0 ! list ;
to 102 : when true , 0 ! retr ;
to 102 : when true , 0 ! dele ;
to 102 : when true , 0 ! noop ;
to 102 : when true , 0 ! rset ;
to 102 : when true , 0 ! user ;
to 102 : when true , 0 ! pass ;

state 102 :
to 100 : when true , 1 ? err ;
to 100 : when true , 1 ? ok ;
to 103 : when true , 1 ? ok ;

state 103 :
to 100 : when true , 1 ? d ;


state 101 :
to 901 : when true , 1 ? ok ;
to 901 : when true , 1 ? err ;

/* tcp passive/active close needed to assure both are finished */
state 901 :
to 902 : when true , 1 ? fin ;
to 910 : when true , 0 ! fin ;

state 910 : /* !f -> {?a,?f} */
to 911 : when true , 1 ? ack ;
to 912 : when true , 1 ? fin ;

state 911 : /* !f?a-> ?f */
to 913 : when true , 1 ? fin ;

state 913 : /* [!f?a?f] -> !a (end) */
to 1000 : when true , 0 ! ack ;
to 0 : when true , 0 ! ack ;

state 912 : /* !f?f -> {!a,?a} */
to 905 : when true , 0 ! ack ;
to 913 : when true , 1 ? ack ;

state 902 :  /* ?f -> !a*/
to 904 : when true , 0 ! ack ;

state 904 : /* ?f!a -> !f */
to 905 : when true , 0 ! fin ;

state 905 : /* [?f!a!f] -> ?a (end) */
to 1000 : when true , 1 ? ack ;
to 0 : when true , 1 ? ack ;

/* sink state if no further communication */
state 1000 : 



/* ************************************************************************* */
automaton server :

initial : 0

state 0 :
to 1 : when true , 0 ? connect ;

state 1 :
to 10 : when true , 1 ! ok;

state 10 :
to 11 : when true , 0 ? user ;
to 101 : when true , 0 ? quit ;
to 22 : when true , 0 ? stat ;
to 22 : when true , 0 ? list ;
to 22 : when true , 0 ? retr ;
to 22 : when true , 0 ? dele ;
to 22 : when true , 0 ? noop ;
to 22 : when true , 0 ? rset ;
to 22 : when true , 0 ? user ; 
to 22 : when true , 0 ? pass ;

state 22 :
to 10 : when true , 1 ! err ;


state 11 :
to 10 : when true , 1 ! err ;
to 12 : when true , 1 ! ok ;

state 12 :
to 13 : when true , 0 ? pass ;

state 13 :
to 10 : when true , 1 ! err ;
to 100 : when true , 1 ! ok ;

state 100 :
to 101 : when true , 0 ? quit ;
to 102 : when true , 0 ? stat ;
to 102 : when true , 0 ? list ;
to 102 : when true , 0 ? retr ;
to 102 : when true , 0 ? dele ;
to 103 : when true , 0 ? noop ;
to 103 : when true , 0 ? rset ;
to 110 : when true , 0 ? user ; 
to 110 : when true , 0 ? pass ;


state 101 : 
to 901 : when true , 1 ! ok ; 

state 102 :
to 100 : when true , 1 ! ok ;
to 100 : when true , 1 ! err ;
to 105 : when true , 1 ! ok ;

state 105 : 
to 100 : when true , 1 ! d ; 

state 103 :
to 100 : when true , 1 ! ok ;
to 100 : when true , 1 ! err ;

state 110 : 
to 100 : when true , 1 ! err ;




state 20 :


/* tcp passive/active close needed to assure both are finished */
state 901 :
to 902 : when true , 1 ? fin ;
to 910 : when true , 0 ! fin ;

state 910 : /* !f -> {?a,?f} */
to 911 : when true , 1 ? ack ;
to 912 : when true , 1 ? fin ;

state 911 : /* !f?a-> ?f */
to 913 : when true , 1 ? fin ;

state 913 : /* [!f?a?f] -> !a (end) */
to 1000 : when true , 0 ! ack ;
to 0 : when true , 0 ! ack ;

state 912 : /* !f?f -> {!a,?a} */
to 905 : when true , 0 ! ack ;
to 913 : when true , 1 ? ack ;

state 902 :  /* ?f -> !a*/
to 904 : when true , 0 ! ack ;

state 904 : /* ?f!a -> !f */
to 905 : when true , 0 ! fin ;

state 905 : /* [?f!a!f] -> ?a (end) */
to 1000 : when true , 1 ? ack ;
to 0 : when true , 1 ? ack ;

state 1000 :



/* ************************************************************************* */
bad_states:
(automaton server: in 10 : true automaton client: in 100 : true )
(automaton server: in 100 : true automaton client: in 10 : true )

