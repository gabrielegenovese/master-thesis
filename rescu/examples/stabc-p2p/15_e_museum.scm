/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 6 ;
parameters :
real C2RETVALUE2 ;
real C3METHOD1 ;
real C3RETVALUE1 ;
real C1RETVALUE1 ;
real C1METHOD1 ;
real C2METHOD2 ;
real C2METHOD3 ;
real C3METHOD3 ;
real C3METHOD2 ;
real C2METHOD1 ;
real C3RETVALUE2 ;

automaton A0 :

initial : 0


state 1 :
to 0 : when true , 3  ? C1RETVALUE1;

state 0 :
to 1 : when true , 0 ! C1METHOD1;

automaton A1 :

initial : 0


state 1 :
to 0 : when true , 5  ? C2RETVALUE2;

state 0 :
to 2 : when true , 4 ! C2METHOD2;
to 1 : when true , 4 ! C2METHOD3;

state 2 :
to 1 : when true , 4 ! C2METHOD1;

automaton A2 :

initial : 0


state 1 :
to 0 : when true , 2 ! C3RETVALUE1;

state 0 :
to 3 : when true , 1  ? C3METHOD2;
to 2 : when true , 1  ? C3METHOD3;
to 1 : when true , 1  ? C3METHOD1;

state 3 :
to 2 : when true , 1  ? C3METHOD1;

state 2 :
to 0 : when true , 2 ! C3RETVALUE2;

automaton A3 :

initial : 0


state 1 :
to 2 : when true , 1 ! C3METHOD1;

state 0 :
to 7 : when true , 4  ? C2METHOD2;
to 4 : when true , 4  ? C2METHOD3;
to 1 : when true , 0  ? C1METHOD1;

state 9 :
to 5 : when true , 1 ! C3METHOD1;

state 4 :
to 5 : when true , 1 ! C3METHOD3;

state 5 :
to 6 : when true , 2  ? C3RETVALUE2;

state 3 :
to 0 : when true , 3 ! C1RETVALUE1;

state 7 :
to 8 : when true , 1 ! C3METHOD2;

state 8 :
to 9 : when true , 4  ? C2METHOD1;

state 2 :
to 3 : when true , 2  ? C3RETVALUE1;

state 6 :
to 0 : when true , 5 ! C2RETVALUE2;
