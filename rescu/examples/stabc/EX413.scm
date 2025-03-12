/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real VM1FAILED ;
real VM1ADDINSTANCE ;
real VM1RESETINSTANCE ;
real DMALERTFAILURE ;
real DMINSTANTIATE1 ;
real DMFAILED1 ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 0  ? DMFAILED1;

state 0 :
to 1 : when true , 2 ! DMINSTANTIATE1;

state 3 :
to 1 : when true , 2 ! DMALERTFAILURE;

state 2 :
to 3 : when true , 2 ! DMINSTANTIATE1;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 2 ! VM1FAILED;

state 0 :
to 1 : when true , 1  ? VM1ADDINSTANCE;

state 2 :
to 1 : when true , 1  ? VM1RESETINSTANCE;

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 1 ! VM1ADDINSTANCE;

state 10 :
to 4 : when true , 2  ? DMALERTFAILURE;

state 0 :
to 1 : when true , 2  ? DMINSTANTIATE1;

state 9 :
to 4 : when true , 2  ? VM1FAILED;

state 5 :
to 6 : when true , 2  ? DMINSTANTIATE1;

state 4 :
to 5 : when true , 0 ! DMFAILED1;

state 7 :
to 2 : when true , 1 ! VM1RESETINSTANCE;

state 8 :
to 10 : when true , 2  ? VM1FAILED;
to 9 : when true , 2  ? DMALERTFAILURE;

state 6 :
to 8 : when true , 1 ! VM1RESETINSTANCE;
to 7 : when true , 2  ? DMALERTFAILURE;

state 2 :
to 4 : when true , 2  ? VM1FAILED;
