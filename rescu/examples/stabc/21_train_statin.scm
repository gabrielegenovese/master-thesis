/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 4 ;
parameters :
real INFOAVAIL ;
real ITINERARY ;
real INFO ;
real INVOICE ;
real BOOK ;
real REQUEST ;
real RESULT ;
real ACK ;

automaton A0 :

initial : 0


state 1 :
to 3 : when true , 0  ? INVOICE;
to 2 : when true , 0  ? RESULT;

state 0 :
to 1 : when true , 2 ! REQUEST;

state 4 :

state 3 :
to 4 : when true , 0  ? RESULT;

state 2 :
to 4 : when true , 0  ? INVOICE;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 2 ! ACK;

state 0 :
to 1 : when true , 1  ? BOOK;

state 3 :

state 2 :
to 3 : when true , 0 ! INVOICE;

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 3 ! INFO;

state 0 :
to 1 : when true , 2  ? REQUEST;

state 4 :
to 5 : when true , 2  ? ACK;

state 5 :
to 6 : when true , 0 ! RESULT;

state 3 :
to 4 : when true , 1 ! BOOK;
to 3 : when true , 2  ? ITINERARY;

state 2 :
to 3 : when true , 2  ? INFOAVAIL;

state 6 :

automaton A3 :

initial : 0


state 1 :
to 2 : when true , 2 ! INFOAVAIL;

state 0 :
to 1 : when true , 3  ? INFO;

state 3 :

state 2 :
to 3 : when true , 2 ! ITINERARY;
