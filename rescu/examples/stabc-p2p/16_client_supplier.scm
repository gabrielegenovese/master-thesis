/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 4 ;
parameters :
real SITEMREQUEST2 ;
real SDONE ;
real CCONFIRMATION ;
real CGETITEM1 ;
real SPURCHASE ;
real SITEMREQUEST1 ;
real CCANCEL ;
real SABORT ;
real SSETCATEGORY ;
real CBUY ;
real CGETITEM2 ;
real SINVOICE ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 3  ? CGETITEM2;

state 0 :
to 1 : when true , 0 ! CGETITEM1;

state 4 :
to 6 : when true , 0 ! CBUY;

state 5 :

state 3 :
to 5 : when true , 0 ! CCANCEL;

state 2 :
to 4 : when true ;
to 3 : when true ;

state 6 :
to 5 : when true , 3  ? CCONFIRMATION;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1  ? SITEMREQUEST1;

state 0 :
to 1 : when true , 1  ? SSETCATEGORY;

state 4 :
to 5 : when true , 2 ! SINVOICE;

state 5 :
to 6 : when true , 2 ! SDONE;

state 3 :
to 7 : when true , 1  ? SABORT;
to 4 : when true , 1  ? SPURCHASE;

state 7 :

state 2 :
to 3 : when true , 2 ! SITEMREQUEST2;

state 6 :
to 7 : when true , 1  ? SABORT;
to 1 : when true , 1  ? SSETCATEGORY;

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 1 ! SSETCATEGORY;

state 4 :
to 5 : when true , 3 ! CGETITEM2;

state 5 :
to 6 : when true , 0  ? CBUY;
to 7 : when true , 0  ? CCANCEL;

state 3 :
to 4 : when true , 2  ? SITEMREQUEST2;

state 14 :
to 11 : when true , 1 ! SABORT;

state 6 :
to 8 : when true , 1 ! SPURCHASE;

state 15 :
to 11 : when true , 3 ! CCONFIRMATION;

state 10 :
to 13 : when true , 2  ? SDONE;
to 12 : when true , 3 ! CCONFIRMATION;

state 0 :
to 1 : when true , 0  ? CGETITEM1;

state 11 :

state 9 :

state 12 :
to 14 : when true , 2  ? SDONE;

state 13 :
to 15 : when true , 1 ! SABORT;
to 14 : when true , 3 ! CCONFIRMATION;

state 7 :
to 9 : when true , 1 ! SABORT;

state 8 :
to 10 : when true , 2  ? SINVOICE;

state 2 :
to 3 : when true , 1 ! SITEMREQUEST1;
