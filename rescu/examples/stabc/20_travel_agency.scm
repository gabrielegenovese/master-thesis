/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real CONF2 ;
real MAKERES1 ;
real FINDTRIP1 ;
real SELCAR2 ;
real SELFLIGHT2 ;
real SELHOTEL1 ;
real SELHOTEL2 ;
real SELFLIGHT1 ;
real CONF1 ;
real SELCAR1 ;
real MAKERES2 ;
real FINDTRIP2 ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 0  ? FINDTRIP2;

state 0 :
to 1 : when true , 2 ! FINDTRIP1;

state 4 :

state 3 :
to 4 : when true , 0  ? CONF2;

state 2 :
to 3 : when true , 2 ! CONF1;

automaton A1 :

initial : 0


state 1 :
to 4 : when true , 2 ! SELFLIGHT1;
to 2 : when true , 1  ? SELHOTEL2;

state 4 :
to 7 : when true , 1  ? SELFLIGHT2;
to 5 : when true , 1  ? SELHOTEL2;

state 5 :
to 8 : when true , 1  ? SELFLIGHT2;

state 3 :
to 6 : when true , 1  ? SELFLIGHT2;
to 4 : when true , 2 ! SELHOTEL1;

state 16 :
to 15 : when true , 1  ? MAKERES2;

state 14 :
to 16 : when true , 2 ! MAKERES1;

state 6 :
to 7 : when true , 2 ! SELHOTEL1;
to 9 : when true , 2 ! SELCAR1;

state 15 :

state 10 :
to 13 : when true , 1  ? SELCAR2;
to 11 : when true , 1  ? SELHOTEL2;

state 0 :
to 3 : when true , 2 ! SELFLIGHT1;
to 1 : when true , 2 ! SELHOTEL1;

state 11 :
to 14 : when true , 1  ? SELCAR2;

state 9 :
to 12 : when true , 1  ? SELCAR2;
to 10 : when true , 2 ! SELHOTEL1;

state 12 :
to 13 : when true , 2 ! SELHOTEL1;

state 13 :
to 14 : when true , 1  ? SELHOTEL2;

state 7 :
to 10 : when true , 2 ! SELCAR1;
to 8 : when true , 1  ? SELHOTEL2;

state 8 :
to 11 : when true , 2 ! SELCAR1;

state 2 :
to 5 : when true , 2 ! SELFLIGHT1;

automaton A2 :

initial : 0


state 18 :
to 20 : when true , 2  ? CONF1;

state 19 :
to 17 : when true , 0 ! CONF2;

state 17 :
to 16 : when true , 1 ! MAKERES2;

state 1 :
to 4 : when true , 2  ? SELFLIGHT1;
to 2 : when true , 2  ? SELHOTEL1;

state 4 :
to 5 : when true , 2  ? SELHOTEL1;
to 7 : when true , 1 ! SELFLIGHT2;

state 5 :
to 8 : when true , 1 ! SELFLIGHT2;
to 6 : when true , 1 ! SELHOTEL2;

state 3 :
to 6 : when true , 2  ? SELFLIGHT1;

state 16 :

state 14 :
to 15 : when true , 1 ! SELHOTEL2;

state 6 :
to 9 : when true , 1 ! SELFLIGHT2;

state 15 :
to 18 : when true , 0 ! FINDTRIP2;

state 10 :
to 11 : when true , 2  ? SELHOTEL1;
to 13 : when true , 1 ! SELCAR2;

state 0 :
to 1 : when true , 2  ? FINDTRIP1;

state 11 :
to 12 : when true , 1 ! SELHOTEL2;
to 14 : when true , 1 ! SELCAR2;

state 9 :
to 12 : when true , 2  ? SELCAR1;

state 12 :
to 15 : when true , 1 ! SELCAR2;

state 13 :
to 14 : when true , 2  ? SELHOTEL1;

state 7 :
to 10 : when true , 2  ? SELCAR1;
to 8 : when true , 2  ? SELHOTEL1;

state 8 :
to 11 : when true , 2  ? SELCAR1;
to 9 : when true , 1 ! SELHOTEL2;

state 2 :
to 5 : when true , 2  ? SELFLIGHT1;
to 3 : when true , 1 ! SELHOTEL2;

state 20 :
to 19 : when true , 2  ? MAKERES1;
