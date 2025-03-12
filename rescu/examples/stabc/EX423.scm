/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 5 ;
parameters :
real CLIENTRESULT ;
real LBRESULT ;
real LBREPLY ;
real CLIENTREQUEST ;
real VM2REQUEST ;
real VM1INFO ;
real VM1REQ ;
real VM1RES ;
real VM2LOGIN ;
real LBCOMPUTE ;
real LBREQUEST ;
real VM2RESULT ;

automaton A0 :

initial : 0


state 1 :
to 0 : when true , 0  ? CLIENTRESULT;

state 0 :
to 1 : when true , 4 ! CLIENTREQUEST;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 4 ! LBCOMPUTE;

state 0 :
to 1 : when true , 1  ? LBREQUEST;

state 3 :
to 0 : when true , 4 ! LBRESULT;

state 2 :
to 3 : when true , 1  ? LBREPLY;

automaton A2 :

initial : 0


state 1 :
to 1 : when true , 4 ! VM1INFO;
to 0 : when true , 4 ! VM1RES;

state 0 :
to 1 : when true , 2  ? VM1REQ;

automaton A3 :

initial : 0


state 1 :
to 2 : when true , 3  ? VM2REQUEST;

state 0 :
to 1 : when true , 3  ? VM2LOGIN;

state 2 :
to 1 : when true , 4 ! VM2RESULT;

automaton A4 :

initial : 0


state 18 :
to 21 : when true , 1 ! LBREPLY;

state 19 :
to 21 : when true , 1 ! LBREPLY;

state 17 :
to 18 : when true , 4  ? VM1RES;
to 17 : when true , 4  ? VM1INFO;

state 4 :
to 7 : when true , 1 ! LBREQUEST;

state 14 :
to 19 : when true , 4  ? VM2RESULT;

state 6 :
to 9 : when true , 3 ! VM2LOGIN;
to 8 : when true , 2 ! VM1REQ;

state 15 :
to 21 : when true , 3 ! VM2LOGIN;
to 20 : when true , 4  ? LBRESULT;

state 12 :
to 16 : when true , 3 ! VM2LOGIN;
to 15 : when true , 1 ! LBREPLY;

state 8 :
to 13 : when true , 3 ! VM2LOGIN;
to 12 : when true , 4  ? VM1RES;
to 11 : when true , 4  ? VM1INFO;

state 22 :
to 2 : when true , 3 ! VM2LOGIN;
to 1 : when true , 4  ? CLIENTREQUEST;

state 1 :
to 4 : when true , 3 ! VM2LOGIN;
to 3 : when true , 1 ! LBREQUEST;

state 23 :
to 2 : when true , 0 ! CLIENTRESULT;

state 5 :
to 7 : when true , 1 ! LBREQUEST;

state 3 :
to 7 : when true , 3 ! VM2LOGIN;
to 6 : when true , 4  ? LBCOMPUTE;

state 16 :
to 21 : when true , 1 ! LBREPLY;

state 24 :
to 2 : when true , 0 ! CLIENTRESULT;

state 21 :
to 24 : when true , 4  ? LBRESULT;

state 10 :
to 14 : when true , 3 ! VM2REQUEST;
to 13 : when true , 2 ! VM1REQ;

state 0 :
to 2 : when true , 3 ! VM2LOGIN;
to 1 : when true , 4  ? CLIENTREQUEST;

state 11 :
to 13 : when true , 3 ! VM2LOGIN;
to 12 : when true , 4  ? VM1RES;
to 11 : when true , 4  ? VM1INFO;

state 9 :
to 14 : when true , 3 ! VM2REQUEST;
to 13 : when true , 2 ! VM1REQ;

state 13 :
to 18 : when true , 4  ? VM1RES;
to 17 : when true , 4  ? VM1INFO;

state 7 :
to 10 : when true , 4  ? LBCOMPUTE;

state 20 :
to 23 : when true , 3 ! VM2LOGIN;
to 22 : when true , 0 ! CLIENTRESULT;

state 2 :
to 5 : when true , 4  ? CLIENTREQUEST;
