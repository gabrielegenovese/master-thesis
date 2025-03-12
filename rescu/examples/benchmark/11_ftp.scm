/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 2 ;
parameters :
real SGET ;
real CPASS ;
real SUSER ;
real CLOGIN ;
real CGETFILE ;
real CLOGOUT ;
real SCLOSE ;
real SOPEN ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 0  ? SUSER;

state 0 :
to 1 : when true , 0  ? SOPEN;

state 5 :

state 4 :
to 3 : when true , 0  ? SCLOSE;

state 3 :

state 2 :
to 5 : when true , 0  ? SCLOSE;
to 4 : when true , 0  ? SGET;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1 ! CPASS;

state 0 :
to 1 : when true , 1 ! CLOGIN;

state 4 :

state 3 :
to 4 : when true , 1 ! CLOGOUT;

state 2 :
to 3 : when true , 1 ! CGETFILE;

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 1  ? CPASS;

state 0 :
to 1 : when true , 1  ? CLOGIN;

state 4 :
to 5 : when true , 1  ? CGETFILE;

state 5 :
to 6 : when true , 0 ! SGET;

state 3 :
to 4 : when true , 0 ! SUSER;

state 7 :
to 8 : when true , 0 ! SCLOSE;

state 8 :

state 2 :
to 3 : when true , 0 ! SOPEN;

state 6 :
to 7 : when true , 1  ? CLOGOUT;

bad_states:
(automaton A2: in 4 : true with (SGET | CPASS | SUSER | CLOGIN | CGETFILE | CLOGOUT | SCLOSE | SOPEN)^*.#.(SGET | CPASS | SUSER | CLOGIN | CLOGOUT | SCLOSE | SOPEN).(SGET | CPASS | SUSER | CLOGIN | CGETFILE | CLOGOUT | SCLOSE | SOPEN)^*)