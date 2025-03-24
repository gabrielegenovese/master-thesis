/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 13 ;
parameters :
real B ;
real G ;
real W ;
real D ;
real PP22 ;
real DDD ;
real A ;
real F ;
real RRR ;
real OLE ;
real YYY ;
real C ;
real E ;
real Z ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 6 ! OLE;

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
to 3 : when true , 11 ! A;

state 6 :
to 7 : when true , 0  ? B;

automaton A1 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 2 ! YYY;

state 4 :
to 4 : when true , 1  ? W;

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true ;

automaton A2 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 2  ? YYY;

state 4 :
to 5 : when true , 2  ? YYY;

state 5 :

state 3 :
to 4 : when true , 3 ! RRR;

state 2 :
to 3 : when true , 3 ! RRR;

automaton A3 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 3  ? RRR;

state 4 :
to 0 : when true , 3  ? RRR;

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true , 4 ! DDD;

automaton A4 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 4  ? DDD;

state 4 :
to 5 : when true , 5 ! PP22;

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
to 1 : when true , 5  ? PP22;

state 4 :

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true ;

automaton A6 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 0 ! B;

state 5 :
to 4 : when true , 6  ? OLE;

state 4 :
to 0 : when true ;

state 3 :
to 4 : when true , 6  ? C;

state 2 :
to 5 : when true , 6  ? C;
to 3 : when true , 6  ? OLE;

automaton A7 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 6 ! C;

state 3 :
to 0 : when true , 7  ? D;

state 2 :
to 3 : when true ;

automaton A8 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 7 ! D;

state 4 :
to 5 : when true ;

state 5 :
to 6 : when true ;

state 3 :
to 4 : when true ;

state 7 :
to 8 : when true , 8  ? E;

state 8 :

state 2 :
to 3 : when true , 8  ? E;

state 6 :
to 7 : when true ;

automaton A9 :

initial : 0


state 1 :
to 2 : when true , 9  ? F;

state 0 :
to 1 : when true , 8 ! E;

state 9 :

state 4 :
to 5 : when true , 8 ! E;

state 5 :
to 6 : when true ;

state 3 :
to 4 : when true ;

state 7 :
to 8 : when true ;

state 8 :
to 9 : when true , 9  ? F;

state 2 :
to 3 : when true ;

state 6 :
to 7 : when true ;

automaton A10 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 9 ! F;

state 4 :

state 3 :
to 4 : when true , 10  ? G;

state 2 :
to 3 : when true ;

automaton A11 :

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
to 3 : when true , 10 ! G;

automaton A12 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 12 ! Z;

state 4 :
to 4 : when true , 11  ? A;

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true , 11  ? A;

automaton A13 :

initial : 0


state 1 :
to 2 : when true ;

state 0 :
to 1 : when true , 1 ! W;

state 4 :
to 4 : when true , 12  ? Z;

state 3 :
to 4 : when true ;

state 2 :
to 3 : when true ;
