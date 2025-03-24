/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 8 ;
parameters :
real LBREPLY ;
real CLIENTREQUEST ;
real VM1REQ ;
real VM1RES ;
real VM2LOGIN ;
real LBREQUEST ;
real CLIENTRESULT ;
real LBRESULT ;
real VM2REQUEST ;
real LBCOMPUTE ;
real VM2RESULT ;

automaton A0 :

initial : 0


state 1 :
to 0 : when true , 7  ? CLIENTRESULT;

state 0 :
to 1 : when true , 0 ! CLIENTREQUEST;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 3 ! LBCOMPUTE;

state 0 :
to 1 : when true , 2  ? LBREQUEST;

state 3 :
to 0 : when true , 3 ! LBRESULT;

state 2 :
to 3 : when true , 2  ? LBREPLY;

automaton A2 :

initial : 0


state 1 :
to 0 : when true , 5 ! VM1RES;

state 0 :
to 1 : when true , 4  ? VM1REQ;

automaton A3 :

initial : 0


state 1 :
to 2 : when true , 1  ? VM2REQUEST;

state 0 :
to 1 : when true , 1  ? VM2LOGIN;

state 2 :
to 1 : when true , 6 ! VM2RESULT;

automaton A4 :

initial : 0


state 18 :
to 21 : when true , 1 ! VM2LOGIN;
to 20 : when true , 7 ! CLIENTRESULT;

state 19 :
to 22 : when true , 3  ? LBRESULT;

state 17 :
to 19 : when true , 2 ! LBREPLY;

state 4 :
to 7 : when true , 2 ! LBREQUEST;

state 14 :
to 19 : when true , 1 ! VM2LOGIN;
to 18 : when true , 3  ? LBRESULT;

state 6 :
to 9 : when true , 1 ! VM2LOGIN;
to 8 : when true , 4 ! VM1REQ;

state 15 :
to 19 : when true , 2 ! LBREPLY;

state 12 :
to 16 : when true , 5  ? VM1RES;

state 8 :
to 12 : when true , 1 ! VM2LOGIN;
to 11 : when true , 5  ? VM1RES;

state 22 :
to 2 : when true , 7 ! CLIENTRESULT;

state 1 :
to 4 : when true , 1 ! VM2LOGIN;
to 3 : when true , 2 ! LBREQUEST;

state 5 :
to 7 : when true , 2 ! LBREQUEST;

state 3 :
to 7 : when true , 1 ! VM2LOGIN;
to 6 : when true , 3  ? LBCOMPUTE;

state 16 :
to 19 : when true , 2 ! LBREPLY;

state 21 :
to 2 : when true , 7 ! CLIENTRESULT;

state 10 :
to 13 : when true , 1 ! VM2REQUEST;
to 12 : when true , 4 ! VM1REQ;

state 0 :
to 2 : when true , 1 ! VM2LOGIN;
to 1 : when true , 0  ? CLIENTREQUEST;

state 11 :
to 15 : when true , 1 ! VM2LOGIN;
to 14 : when true , 2 ! LBREPLY;

state 9 :
to 13 : when true , 1 ! VM2REQUEST;
to 12 : when true , 4 ! VM1REQ;

state 13 :
to 17 : when true , 6  ? VM2RESULT;

state 7 :
to 10 : when true , 3  ? LBCOMPUTE;

state 20 :
to 2 : when true , 1 ! VM2LOGIN;
to 1 : when true , 0  ? CLIENTREQUEST;

state 2 :
to 5 : when true , 0  ? CLIENTREQUEST;
