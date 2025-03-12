/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 5 ;
parameters :
real CLPWD ;
real SVREQUEST ;
real SVACK ;
real CLDISCONNECT ;
real CLACK ;
real SVLOGIN ;
real DBLOG ;
real SVLOGOUT ;
real SVSTORE ;
real CLRESULT ;
real CLCONNECT ;
real CLREQUEST ;
real SVRESULT ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 0 ! CLREQUEST;

state 0 :
to 5 : when true , 0 ! CLCONNECT;

state 5 :
to 1 : when true , 0 ! CLPWD;

state 4 :
to 0 : when true , 0 ! CLDISCONNECT;

state 3 :
to 4 : when true , 0 ! CLACK;

state 2 :
to 3 : when true , 4  ? CLRESULT;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 2  ? SVREQUEST;
to 0 : when true , 2  ? SVLOGOUT;

state 0 :
to 1 : when true , 2  ? SVLOGIN;

state 4 :
to 3 : when true , 2  ? SVACK;

state 3 :
to 1 : when true , 3 ! SVSTORE;

state 2 :
to 4 : when true , 3 ! SVRESULT;

automaton A2 :

initial : 0


state 0 :
to 0 : when true , 1  ? DBLOG;

automaton A3 :

initial : 0


state 22 :
to 10 : when true , 0  ? CLREQUEST;

state 18 :
to 17 : when true , 2 ! SVACK;

state 19 :
to 18 : when true , 0  ? CLACK;

state 17 :
to 13 : when true , 0  ? CLDISCONNECT;
to 8 : when true , 3  ? SVSTORE;

state 1 :
to 0 : when true , 1 ! DBLOG;

state 5 :
to 11 : when true , 2 ! SVLOGIN;

state 4 :
to 9 : when true , 2 ! SVREQUEST;

state 3 :
to 21 : when true , 1 ! DBLOG;

state 16 :
to 7 : when true , 0  ? CLCONNECT;
to 1 : when true , 3  ? SVSTORE;

state 14 :
to 12 : when true , 0  ? CLPWD;

state 21 :
to 20 : when true , 3  ? SVRESULT;

state 6 :
to 0 : when true , 2 ! SVLOGOUT;

state 15 :
to 6 : when true , 0  ? CLDISCONNECT;

state 10 :
to 21 : when true , 2 ! SVREQUEST;

state 0 :
to 14 : when true , 0  ? CLCONNECT;

state 11 :
to 4 : when true , 0  ? CLREQUEST;
to 2 : when true , 3  ? SVSTORE;

state 9 :
to 3 : when true , 3  ? SVSTORE;

state 12 :
to 22 : when true , 2 ! SVLOGIN;

state 13 :
to 16 : when true , 2 ! SVLOGOUT;

state 7 :
to 5 : when true , 0  ? CLPWD;

state 8 :
to 15 : when true , 1 ! DBLOG;

state 2 :
to 22 : when true , 1 ! DBLOG;

state 20 :
to 19 : when true , 4 ! CLRESULT;
