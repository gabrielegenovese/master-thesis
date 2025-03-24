/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real SEND ;
real SENDCOMPLETE ;
real GETTMPSTATUS ;
real TMPSTATUS ;
real ACKSTART ;

automaton A0 :

initial : 0


state 1 :
to 3 : when true , 1 ! ACKSTART;

state 0 :
to 2 : when true , 0  ? GETTMPSTATUS;
to 1 : when true , 0  ? SEND;

state 4 :
to 3 : when true , 1 ! TMPSTATUS;

state 3 :
to 4 : when true , 0  ? GETTMPSTATUS;
to 0 : when true , 1 ! SENDCOMPLETE;

state 2 :
to 0 : when true , 1 ! TMPSTATUS;

automaton A1 :

initial : 0


state 1 :
to 3 : when true , 1  ? ACKSTART;

state 0 :
to 2 : when true , 0 ! GETTMPSTATUS;
to 1 : when true , 0 ! SEND;

state 4 :
to 3 : when true , 1  ? TMPSTATUS;

state 3 :
to 4 : when true , 0 ! GETTMPSTATUS;
to 0 : when true , 1  ? SENDCOMPLETE;

state 2 :
to 0 : when true , 1  ? TMPSTATUS;
