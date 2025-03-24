/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 4 ;
parameters :
real LBREPLY ;
real CLIENTREQUEST ;
real VM1REQ ;
real VM1RES ;
real VM2LOGIN ;
real LBREQUEST ;
real VM2REQUEST ;
real LBCOMPUTE ;
real VM2RESULT ;

automaton A0 :

initial : 0


state 0 :
to 0 : when true , 3 ! CLIENTREQUEST;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 3 ! LBCOMPUTE;

state 0 :
to 1 : when true , 0  ? LBREQUEST;

state 2 :
to 0 : when true , 0  ? LBREPLY;

automaton A2 :

initial : 0


state 1 :
to 0 : when true , 3 ! VM1RES;

state 0 :
to 1 : when true , 1  ? VM1REQ;

automaton A3 :

initial : 0


state 1 :
to 2 : when true , 2  ? VM2REQUEST;

state 0 :
to 1 : when true , 2  ? VM2LOGIN;

state 2 :
to 1 : when true , 3 ! VM2RESULT;

automaton A4 :

initial : 0


state 18 :
to 25 : when true , 3  ? LBCOMPUTE;
to 24 : when true , 3  ? LBCOMPUTE;

state 25 :
to 32 : when true , 1 ! VM1REQ;

state 4 :
to 11 : when true , 0 ! LBREQUEST;

state 30 :
to 39 : when true , 3  ? VM2RESULT;

state 14 :
to 25 : when true , 3  ? LBCOMPUTE;
to 24 : when true , 3  ? LBCOMPUTE;

state 15 :
to 26 : when true , 2 ! VM2REQUEST;
to 24 : when true , 3  ? CLIENTREQUEST;

state 31 :
to 41 : when true , 2 ! VM2LOGIN;
to 40 : when true , 0 ! LBREPLY;

state 12 :
to 21 : when true , 2 ! VM2LOGIN;

state 8 :
to 15 : when true , 2 ! VM2LOGIN;
to 12 : when true , 3  ? CLIENTREQUEST;

state 1 :
to 4 : when true , 2 ! VM2LOGIN;
to 3 : when true , 0 ! LBREQUEST;

state 23 :
to 32 : when true , 1 ! VM1REQ;

state 3 :
to 10 : when true , 2 ! VM2LOGIN;
to 9 : when true , 3  ? LBCOMPUTE;
to 8 : when true , 3  ? LBCOMPUTE;
to 7 : when true , 3  ? CLIENTREQUEST;

state 16 :
to 29 : when true , 2 ! VM2LOGIN;
to 28 : when true , 3  ? VM1RES;
to 27 : when true , 3  ? CLIENTREQUEST;

state 24 :
to 30 : when true , 2 ! VM2REQUEST;

state 21 :
to 30 : when true , 2 ! VM2REQUEST;

state 36 :
to 2 : when true , 0 ! LBREPLY;
to 42 : when true , 3  ? CLIENTREQUEST;

state 26 :
to 34 : when true , 3  ? VM2RESULT;
to 33 : when true , 3  ? CLIENTREQUEST;

state 11 :
to 20 : when true , 3  ? LBCOMPUTE;
to 19 : when true , 3  ? LBCOMPUTE;
to 18 : when true , 3  ? CLIENTREQUEST;

state 9 :
to 17 : when true , 2 ! VM2LOGIN;
to 16 : when true , 1 ! VM1REQ;
to 13 : when true , 3  ? CLIENTREQUEST;

state 13 :
to 23 : when true , 2 ! VM2LOGIN;
to 22 : when true , 1 ! VM1REQ;

state 19 :
to 26 : when true , 2 ! VM2REQUEST;
to 24 : when true , 3  ? CLIENTREQUEST;

state 32 :
to 42 : when true , 3  ? VM1RES;

state 17 :
to 29 : when true , 1 ! VM1REQ;
to 25 : when true , 3  ? CLIENTREQUEST;

state 40 :
to 4 : when true , 2 ! VM2LOGIN;
to 3 : when true , 0 ! LBREQUEST;

state 27 :
to 32 : when true , 2 ! VM2LOGIN;
to 31 : when true , 3  ? VM1RES;

state 38 :
to 2 : when true , 0 ! LBREPLY;
to 42 : when true , 3  ? CLIENTREQUEST;

state 34 :
to 2 : when true , 0 ! LBREPLY;
to 39 : when true , 3  ? CLIENTREQUEST;

state 22 :
to 32 : when true , 2 ! VM2LOGIN;
to 31 : when true , 3  ? VM1RES;

state 28 :
to 36 : when true , 2 ! VM2LOGIN;
to 35 : when true , 0 ! LBREPLY;
to 31 : when true , 3  ? CLIENTREQUEST;

state 5 :
to 11 : when true , 0 ! LBREQUEST;

state 33 :
to 39 : when true , 3  ? VM2RESULT;

state 37 :
to 42 : when true , 3  ? VM1RES;

state 41 :
to 4 : when true , 0 ! LBREPLY;

state 10 :
to 20 : when true , 3  ? LBCOMPUTE;
to 19 : when true , 3  ? LBCOMPUTE;
to 18 : when true , 3  ? CLIENTREQUEST;

state 42 :
to 4 : when true , 0 ! LBREPLY;

state 0 :
to 2 : when true , 2 ! VM2LOGIN;
to 1 : when true , 3  ? CLIENTREQUEST;

state 39 :
to 4 : when true , 0 ! LBREPLY;

state 7 :
to 14 : when true , 2 ! VM2LOGIN;
to 13 : when true , 3  ? LBCOMPUTE;
to 12 : when true , 3  ? LBCOMPUTE;

state 35 :
to 2 : when true , 2 ! VM2LOGIN;
to 1 : when true , 3  ? CLIENTREQUEST;

state 29 :
to 38 : when true , 3  ? VM1RES;
to 37 : when true , 3  ? CLIENTREQUEST;

state 20 :
to 29 : when true , 1 ! VM1REQ;
to 25 : when true , 3  ? CLIENTREQUEST;

state 2 :
to 5 : when true , 3  ? CLIENTREQUEST;
