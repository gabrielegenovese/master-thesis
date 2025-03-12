/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 5 ;
parameters :
real QUIT ;
real BOOK3 ;
real SEARCH2 ;
real AVAILABILITYCHECK2 ;
real FIND2 ;
real BOOK2 ;
real BOOK1 ;
real RESERVE2 ;
real FIND1 ;
real SEARCH1 ;
real RESERVE1 ;
real AVAILABILITYCHECK1 ;
real BOOKTAXI ;
real BOOK4 ;
real CONFIRM ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 4 ! BOOK2;

state 0 :
to 1 : when true , 0  ? BOOK1;

state 2 :

automaton A1 :

initial : 0


state 1 :
to 0 : when true , 4 ! FIND2;

state 0 :
to 1 : when true , 1  ? FIND1;

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 4 ! AVAILABILITYCHECK2;

state 0 :
to 1 : when true , 2  ? AVAILABILITYCHECK1;

state 4 :

state 3 :
to 4 : when true , 4 ! BOOK4;

state 2 :
to 3 : when true , 2  ? BOOK3;
to 1 : when true , 2  ? AVAILABILITYCHECK1;

automaton A3 :

initial : 0


state 1 :
to 2 : when true , 3  ? SEARCH2;

state 10 :
to 11 : when true , 4 ! BOOKTAXI;

state 0 :
to 1 : when true , 4 ! SEARCH1;

state 11 :

state 9 :
to 10 : when true , 4 ! CONFIRM;

state 4 :

state 5 :
to 1 : when true , 4 ! SEARCH1;

state 3 :
to 4 : when true , 4 ! QUIT;

state 7 :
to 8 : when true , 3  ? RESERVE2;

state 8 :
to 9 : when true ;
to 2 : when true ;

state 6 :
to 7 : when true , 4 ! RESERVE1;

state 2 :
to 6 : when true ;
to 5 : when true ;
to 3 : when true ;

automaton A4 :

initial : 0


state 22 :
to 9 : when true , 4  ? BOOK4;

state 18 :
to 19 : when true , 0 ! BOOK1;

state 19 :
to 9 : when true , 4  ? BOOK2;

state 17 :
to 18 : when true , 4  ? BOOKTAXI;

state 1 :
to 2 : when true , 1 ! FIND1;

state 4 :
to 5 : when true , 4  ? RESERVE1;
to 1 : when true , 4  ? SEARCH1;

state 5 :
to 6 : when true , 2 ! AVAILABILITYCHECK1;

state 3 :
to 4 : when true , 3 ! SEARCH2;

state 16 :
to 20 : when true , 4  ? BOOKTAXI;
to 17 : when true , 4  ? BOOK4;

state 14 :
to 5 : when true , 4  ? RESERVE1;
to 9 : when true , 4  ? QUIT;
to 10 : when true , 4  ? SEARCH1;

state 21 :
to 22 : when true , 4  ? BOOK2;
to 19 : when true , 4  ? BOOK4;

state 6 :
to 7 : when true , 4  ? AVAILABILITYCHECK2;

state 15 :
to 16 : when true , 2 ! BOOK3;

state 10 :
to 11 : when true , 1 ! FIND1;

state 0 :
to 1 : when true , 4  ? SEARCH1;

state 11 :
to 12 : when true , 4  ? FIND2;

state 9 :

state 12 :

state 13 :
to 14 : when true , 3 ! SEARCH2;

state 7 :
to 8 : when true , 3 ! RESERVE2;

state 8 :
to 15 : when true , 4  ? CONFIRM;
to 10 : when true , 4  ? SEARCH1;
to 9 : when true , 4  ? QUIT;

state 2 :
to 3 : when true , 4  ? FIND2;

state 20 :
to 21 : when true , 0 ! BOOK1;
