/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 4 ;
parameters :
real VM1RESETINSTANCE ;
real VM2FAILED ;
real VM1ADDINSTANCE ;
real VM1FAILED ;
real DMALERTFAILURE ;
real VM2NEWAZUREVM ;
real DMFAILED2 ;
real DMINSTANTIATE2 ;
real DMINSTANTIATE1 ;
real DMFAILED1 ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 3 ! DMINSTANTIATE2;

state 0 :
to 1 : when true , 3 ! DMINSTANTIATE1;

state 4 :
to 2 : when true , 3 ! DMALERTFAILURE;

state 5 :
to 6 : when true , 3 ! DMINSTANTIATE2;

state 3 :
to 4 : when true , 3 ! DMINSTANTIATE1;

state 6 :
to 2 : when true , 3 ! DMALERTFAILURE;

state 2 :
to 5 : when true , 0  ? DMFAILED2;
to 3 : when true , 0  ? DMFAILED1;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 3 ! VM1FAILED;

state 0 :
to 1 : when true , 1  ? VM1ADDINSTANCE;

state 2 :
to 1 : when true , 1  ? VM1RESETINSTANCE;

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 3 ! VM2FAILED;

state 0 :
to 1 : when true , 2  ? VM2NEWAZUREVM;

state 2 :
to 1 : when true , 2  ? VM2NEWAZUREVM;

automaton A3 :

initial : 0


state 18 :
to 25 : when true , 2 ! VM2NEWAZUREVM;
to 24 : when true , 1 ! VM1RESETINSTANCE;
to 23 : when true , 3  ? DMALERTFAILURE;

state 50 :
to 58 : when true , 3  ? VM1FAILED;
to 15 : when true , 3  ? DMALERTFAILURE;

state 4 :
to 9 : when true , 2 ! VM2NEWAZUREVM;
to 8 : when true , 3  ? VM1FAILED;

state 15 :
to 20 : when true , 3  ? VM1FAILED;
to 21 : when true , 0 ! DMFAILED2;

state 8 :
to 12 : when true , 2 ! VM2NEWAZUREVM;
to 11 : when true , 0 ! DMFAILED1;

state 54 :
to 60 : when true , 3  ? VM2FAILED;
to 14 : when true , 3  ? DMALERTFAILURE;

state 1 :
to 3 : when true , 1 ! VM1ADDINSTANCE;
to 2 : when true , 3  ? DMINSTANTIATE2;

state 3 :
to 7 : when true , 3  ? VM1FAILED;
to 6 : when true , 3  ? DMINSTANTIATE2;

state 16 :
to 21 : when true , 1 ! VM1ADDINSTANCE;
to 22 : when true , 3  ? DMINSTANTIATE2;

state 21 :
to 31 : when true , 3  ? VM1FAILED;
to 30 : when true , 3  ? DMINSTANTIATE2;

state 36 :
to 47 : when true , 2 ! VM2NEWAZUREVM;
to 8 : when true , 3  ? DMALERTFAILURE;

state 26 :
to 39 : when true , 3  ? VM2FAILED;
to 37 : when true , 1 ! VM1RESETINSTANCE;
to 38 : when true , 3  ? DMALERTFAILURE;

state 63 :
to 35 : when true , 2 ! VM2NEWAZUREVM;
to 43 : when true , 1 ! VM1RESETINSTANCE;

state 32 :
to 5 : when true , 2 ! VM2NEWAZUREVM;
to 43 : when true , 1 ! VM1ADDINSTANCE;

state 19 :
to 27 : when true , 3  ? VM2FAILED;
to 26 : when true , 3  ? DMINSTANTIATE1;

state 17 :
to 20 : when true , 3  ? VM1FAILED;
to 21 : when true , 0 ! DMFAILED2;

state 60 :
to 20 : when true , 3  ? DMALERTFAILURE;

state 27 :
to 39 : when true , 3  ? DMINSTANTIATE1;

state 34 :
to 45 : when true , 3  ? VM2FAILED;
to 42 : when true , 1 ! VM1ADDINSTANCE;
to 44 : when true , 3  ? DMALERTFAILURE;

state 22 :
to 34 : when true , 2 ! VM2NEWAZUREVM;
to 33 : when true , 1 ! VM1ADDINSTANCE;
to 32 : when true , 3  ? DMALERTFAILURE;

state 28 :
to 39 : when true , 3  ? DMINSTANTIATE1;

state 65 :
to 37 : when true , 2 ! VM2NEWAZUREVM;
to 67 : when true , 3  ? VM1FAILED;
to 41 : when true , 3  ? DMALERTFAILURE;

state 44 :
to 10 : when true , 3  ? VM2FAILED;
to 9 : when true , 1 ! VM1ADDINSTANCE;

state 5 :
to 10 : when true , 3  ? VM2FAILED;
to 9 : when true , 1 ! VM1ADDINSTANCE;

state 33 :
to 42 : when true , 2 ! VM2NEWAZUREVM;
to 40 : when true , 3  ? VM1FAILED;
to 41 : when true , 3  ? DMALERTFAILURE;

state 64 :
to 66 : when true , 3  ? VM2FAILED;
to 42 : when true , 1 ! VM1RESETINSTANCE;
to 38 : when true , 3  ? DMALERTFAILURE;

state 10 :
to 17 : when true , 1 ! VM1ADDINSTANCE;
to 16 : when true , 0 ! DMFAILED2;

state 0 :
to 1 : when true , 3  ? DMINSTANTIATE1;

state 39 :
to 51 : when true , 1 ! VM1RESETINSTANCE;
to 46 : when true , 3  ? DMALERTFAILURE;

state 7 :
to 8 : when true , 3  ? DMINSTANTIATE2;

state 20 :
to 29 : when true , 0 ! DMFAILED2;
to 28 : when true , 0 ! DMFAILED1;

state 25 :
to 39 : when true , 3  ? VM2FAILED;
to 37 : when true , 1 ! VM1RESETINSTANCE;
to 38 : when true , 3  ? DMALERTFAILURE;

state 49 :
to 58 : when true , 3  ? VM2FAILED;
to 14 : when true , 3  ? DMALERTFAILURE;

state 52 :
to 12 : when true , 2 ! VM2NEWAZUREVM;
to 59 : when true , 0 ! DMFAILED1;

state 30 :
to 42 : when true , 2 ! VM2NEWAZUREVM;
to 40 : when true , 3  ? VM1FAILED;
to 41 : when true , 3  ? DMALERTFAILURE;

state 62 :
to 25 : when true , 2 ! VM2NEWAZUREVM;
to 65 : when true , 1 ! VM1RESETINSTANCE;
to 63 : when true , 3  ? DMALERTFAILURE;

state 14 :
to 20 : when true , 3  ? VM2FAILED;
to 19 : when true , 0 ! DMFAILED1;

state 56 :
to 60 : when true , 3  ? VM1FAILED;
to 15 : when true , 3  ? DMALERTFAILURE;

state 31 :
to 40 : when true , 3  ? DMINSTANTIATE2;

state 12 :
to 20 : when true , 3  ? VM2FAILED;
to 19 : when true , 0 ! DMFAILED1;

state 45 :
to 56 : when true , 1 ! VM1ADDINSTANCE;
to 10 : when true , 3  ? DMALERTFAILURE;

state 23 :
to 35 : when true , 2 ! VM2NEWAZUREVM;
to 4 : when true , 1 ! VM1RESETINSTANCE;

state 24 :
to 37 : when true , 2 ! VM2NEWAZUREVM;
to 36 : when true , 3  ? VM1FAILED;
to 6 : when true , 3  ? DMALERTFAILURE;

state 57 :
to 21 : when true , 1 ! VM1RESETINSTANCE;
to 61 : when true , 3  ? DMINSTANTIATE2;

state 11 :
to 19 : when true , 2 ! VM2NEWAZUREVM;
to 18 : when true , 3  ? DMINSTANTIATE1;

state 9 :
to 15 : when true , 3  ? VM2FAILED;
to 14 : when true , 3  ? VM1FAILED;

state 51 :
to 58 : when true , 3  ? VM1FAILED;
to 15 : when true , 3  ? DMALERTFAILURE;

state 40 :
to 53 : when true , 2 ! VM2NEWAZUREVM;
to 52 : when true , 3  ? DMALERTFAILURE;

state 67 :
to 47 : when true , 2 ! VM2NEWAZUREVM;
to 52 : when true , 3  ? DMALERTFAILURE;

state 55 :
to 60 : when true , 3  ? VM1FAILED;
to 15 : when true , 3  ? DMALERTFAILURE;

state 59 :
to 19 : when true , 2 ! VM2NEWAZUREVM;
to 62 : when true , 3  ? DMINSTANTIATE1;

state 6 :
to 9 : when true , 2 ! VM2NEWAZUREVM;
to 8 : when true , 3  ? VM1FAILED;

state 61 :
to 64 : when true , 2 ! VM2NEWAZUREVM;
to 33 : when true , 1 ! VM1RESETINSTANCE;
to 63 : when true , 3  ? DMALERTFAILURE;

state 38 :
to 46 : when true , 3  ? VM2FAILED;
to 9 : when true , 1 ! VM1RESETINSTANCE;

state 58 :
to 20 : when true , 3  ? DMALERTFAILURE;

state 48 :
to 15 : when true , 3  ? VM2FAILED;
to 14 : when true , 3  ? VM1FAILED;

state 53 :
to 60 : when true , 3  ? VM2FAILED;
to 14 : when true , 3  ? DMALERTFAILURE;

state 47 :
to 58 : when true , 3  ? VM2FAILED;
to 14 : when true , 3  ? DMALERTFAILURE;

state 37 :
to 50 : when true , 3  ? VM2FAILED;
to 49 : when true , 3  ? VM1FAILED;
to 48 : when true , 3  ? DMALERTFAILURE;

state 41 :
to 9 : when true , 2 ! VM2NEWAZUREVM;
to 52 : when true , 3  ? VM1FAILED;

state 42 :
to 55 : when true , 3  ? VM2FAILED;
to 54 : when true , 3  ? VM1FAILED;
to 48 : when true , 3  ? DMALERTFAILURE;

state 46 :
to 17 : when true , 1 ! VM1RESETINSTANCE;
to 57 : when true , 0 ! DMFAILED2;

state 66 :
to 56 : when true , 1 ! VM1RESETINSTANCE;
to 46 : when true , 3  ? DMALERTFAILURE;

state 35 :
to 46 : when true , 3  ? VM2FAILED;
to 9 : when true , 1 ! VM1RESETINSTANCE;

state 29 :
to 40 : when true , 3  ? DMINSTANTIATE2;

state 43 :
to 9 : when true , 2 ! VM2NEWAZUREVM;
to 52 : when true , 3  ? VM1FAILED;

state 2 :
to 5 : when true , 2 ! VM2NEWAZUREVM;
to 4 : when true , 1 ! VM1ADDINSTANCE;
