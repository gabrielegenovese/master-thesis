/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 20 ;
parameters :
real BON ;
real K35 ;
real B ;
real BEL ;
real G ;
real K36 ;
real W ;
real D ;
real PP22 ;
real XX1 ;
real DDD ;
real A ;
real K34 ;
real F ;
real RRR ;
real YYY ;
real MSG ;
real C ;
real E ;
real Z ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true ;

state 4 :
to 5 : when true ;

state 5 :
to 6 : when true ;

state 3 :
to 4 : when true ;

state 7 :
to 8 : when true ;

state 8 :
to 0 : when true ;

state 2 :
to 3 : when true , 17 ! A;

state 6 :
to 7 : when true , 9  ? B;

automaton A1 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 0 ! YYY;

state 4 :
to 4 : when true , 18  ? W;

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true ;

automaton A2 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 0  ? YYY;

state 4 :
to 5 : when true , 0  ? YYY;

state 5 :

state 3 :
to 4 : when true , 1 ! RRR;

state 2 :
to 3 : when true , 1 ! RRR;

automaton A3 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 1  ? RRR;

state 4 :
to 0 : when true , 1  ? RRR;

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true , 2 ! DDD;

automaton A4 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 2  ? DDD;

state 4 :
to 5 : when true , 3 ! PP22;

state 5 :

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true ;

automaton A5 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 3  ? PP22;

state 4 :

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true , 4 ! XX1;

automaton A6 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 4  ? XX1;

state 4 :
to 5 : when true , 5 ! MSG;

state 5 :
to 6 : when true ;

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true , 5 ! MSG;

state 6 :
to 0 : when true ;

automaton A7 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 5  ? MSG;

state 4 :
to 5 : when true ;

state 5 :
to 6 : when true , 6 ! K34;

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true , 5  ? MSG;

state 6 :

automaton A8 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 6  ? K34;

state 4 :
to 5 : when true , 7 ! K35;

state 5 :
to 6 : when true ;

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true , 6  ? K34;

state 6 :

automaton A9 :

initial : 0


state 1 :
to 2 : when true , 8 ! K36;

state 0 :
to 1 : when true , 7  ? K35;

state 4 :
to 5 : when true ;

state 5 :
to 6 : when true ;

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true ;

state 6 :

automaton A10 :

initial : 0


state 1 :
to 2 : when true , 8  ? K36;

state 0 :
to 1 : when true , 10 ! BON;

state 4 :
to 5 : when true ;

state 5 :
to 0 : when true ;

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true , 11  ? BEL;

automaton A11 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true ;

state 4 :
to 5 : when true ;

state 5 :
to 0 : when true , 12  ? C;

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true , 9 ! B;

automaton A12 :

initial : 0


state 1 :
to 2 : when true , 11 ! BEL;

state 0 :
to 1 : when true , 10  ? BON;

state 4 :
to 5 : when true ;

state 5 :
to 6 : when true ;

state 3 :
to 4 : when true , 11 ! BEL;

state 2 :
to 3 : when true , 10  ? BON;

state 6 :

automaton A13 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 12 ! C;

state 3 :
to 0 : when true , 13  ? D;

state 2 :
to 3 : when true ;

automaton A14 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 13 ! D;

state 4 :
to 5 : when true ;

state 5 :
to 6 : when true ;

state 3 :
to 4 : when true ;

state 7 :
to 8 : when true , 14  ? E;

state 8 :

state 2 :
to 3 : when true , 14  ? E;

state 6 :
to 7 : when true ;

automaton A15 :

initial : 0


state 1 :
to 2 : when true , 15  ? F;

state 0 :
to 1 : when true , 14 ! E;

state 9 :

state 4 :
to 5 : when true , 14 ! E;

state 5 :
to 6 : when true ;

state 3 :
to 4 : when true ;

state 7 :
to 8 : when true ;

state 8 :
to 9 : when true , 15  ? F;

state 2 :
to 3 : when true ;

state 6 :
to 7 : when true ;

automaton A16 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 15 ! F;

state 4 :

state 3 :
to 4 : when true , 16  ? G;

state 2 :
to 3 : when true ;

automaton A17 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true ;

state 4 :

state 3 :
to 4 : when true ;
to 4 : when true ;

state 2 :
to 3 : when true , 16 ! G;

automaton A18 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 19 ! Z;

state 4 :
to 4 : when true , 17  ? A;

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true , 17  ? A;

automaton A19 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 18 ! W;

state 4 :
to 4 : when true , 19  ? Z;

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true ;
