/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 8 ;
parameters :
real CLIENTRESULT ;
real LBRESULT ;
real LBREPLY ;
real CLIENTREQUEST ;
real VM2REQUEST ;
real VM1REQ ;
real VM1RES ;
real VM2LOGIN ;
real LBCOMPUTE ;
real VM2RESULT ;
real LBREQUEST ;

automaton A0 :

initial : 0


state 1 :
to 0 : when true , 5  ? CLIENTRESULT;

state 0 :
to 1 : when true , 0 ! CLIENTREQUEST;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 2 ! LBCOMPUTE;

state 0 :
to 1 : when true , 1  ? LBREQUEST;

state 3 :
to 0 : when true , 2 ! LBRESULT;

state 2 :
to 3 : when true , 1  ? LBREPLY;

automaton A2 :

initial : 0


state 1 :
to 0 : when true , 4 ! VM1RES;

state 0 :
to 1 : when true , 3  ? VM1REQ;

automaton A3 :

initial : 0


state 1 :
to 2 : when true , 6  ? VM2REQUEST;

state 0 :
to 1 : when true , 6  ? VM2LOGIN;

state 2 :
to 1 : when true , 7 ! VM2RESULT;

automaton A4 :

initial : 0


state 22 :
to 23 : when true , 2  ? LBCOMPUTE;

state 18 :
to 19 : when true , 5 ! CLIENTRESULT;

state 19 :
to 20 : when true , 0  ? CLIENTREQUEST;

state 17 :
to 18 : when true , 2  ? LBRESULT;

state 1 :
to 2 : when true , 1 ! LBREQUEST;

state 28 :
to 29 : when true , 0  ? CLIENTREQUEST;

state 23 :
to 24 : when true , 3 ! VM1REQ;

state 25 :
to 26 : when true , 1 ! LBREPLY;

state 4 :
to 5 : when true , 4  ? VM1RES;

state 5 :
to 6 : when true , 1 ! LBREPLY;

state 3 :
to 4 : when true , 3 ! VM1REQ;

state 16 :
to 17 : when true , 1 ! LBREPLY;

state 24 :
to 25 : when true , 4  ? VM1RES;

state 14 :
to 15 : when true , 6 ! VM2REQUEST;

state 6 :
to 7 : when true , 2  ? LBRESULT;

state 15 :
to 16 : when true , 7  ? VM2RESULT;

state 27 :
to 28 : when true , 5 ! CLIENTRESULT;

state 10 :
to 13 : when true , 6 ! VM2LOGIN;
to 12 : when true , 2  ? LBCOMPUTE;

state 26 :
to 27 : when true , 2  ? LBRESULT;

state 0 :
to 1 : when true , 0  ? CLIENTREQUEST;

state 11 :
to 13 : when true , 1 ! LBREQUEST;

state 9 :
to 11 : when true , 6 ! VM2LOGIN;
to 10 : when true , 1 ! LBREQUEST;

state 12 :
to 14 : when true , 6 ! VM2LOGIN;

state 13 :
to 14 : when true , 2  ? LBCOMPUTE;

state 7 :
to 8 : when true , 5 ! CLIENTRESULT;

state 8 :
to 9 : when true , 0  ? CLIENTREQUEST;

state 29 :
to 13 : when true , 1 ! LBREQUEST;

state 2 :
to 3 : when true , 2  ? LBCOMPUTE;

state 20 :
to 22 : when true , 1 ! LBREQUEST;
