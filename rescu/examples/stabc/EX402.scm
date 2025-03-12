/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real ROOMAGAIN ;
real ROOMLIST ;
real PDALIST ;
real PDAPDF ;
real PDASHUTDOWN ;
real ROOMSELECTION ;
real ROOMQUIT ;
real PDAQUERY ;
real ROOMACCESS ;
real PDAMPEG ;
real ROOMTEXT ;
real PDALOGIN ;
real ROOMVIDEO ;
real ROOMVIDEOREQUEST ;
real PDALOGOUT ;
real ROOMTEXTREQUEST ;
real PDACHOICE ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 2 ! ROOMLIST;

state 0 :
to 1 : when true , 0  ? ROOMACCESS;

state 5 :
to 0 : when true , 2 ! ROOMTEXT;

state 4 :
to 6 : when true , 2 ! ROOMVIDEO;

state 3 :
to 4 : when true , 0  ? ROOMVIDEOREQUEST;
to 5 : when true , 0  ? ROOMTEXTREQUEST;

state 7 :
to 6 : when true , 2 ! ROOMVIDEO;

state 2 :
to 3 : when true , 0  ? ROOMSELECTION;

state 6 :
to 7 : when true , 0  ? ROOMAGAIN;
to 0 : when true , 0  ? ROOMQUIT;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 1  ? PDALIST;

state 0 :
to 4 : when true , 2 ! PDASHUTDOWN;
to 0 : when true , 2 ! PDALOGOUT;
to 0 : when true , 2 ! PDALOGIN;
to 1 : when true , 2 ! PDAQUERY;

state 4 :

state 3 :
to 0 : when true , 1  ? PDAMPEG;
to 0 : when true , 1  ? PDAPDF;

state 2 :
to 3 : when true , 2 ! PDACHOICE;

automaton A2 :

initial : 0


state 18 :
to 19 : when true , 1 ! PDAMPEG;

state 19 :
to 10 : when true , 0 ! ROOMQUIT;

state 17 :
to 18 : when true , 2  ? ROOMVIDEO;

state 1 :

state 4 :
to 5 : when true , 1 ! PDALIST;

state 5 :
to 6 : when true , 2  ? PDACHOICE;

state 3 :
to 4 : when true , 2  ? ROOMLIST;

state 16 :
to 17 : when true , 0 ! ROOMVIDEOREQUEST;

state 14 :
to 15 : when true , 2  ? PDACHOICE;

state 6 :
to 7 : when true , 0 ! ROOMSELECTION;

state 15 :
to 16 : when true , 0 ! ROOMSELECTION;

state 10 :
to 11 : when true , 2  ? PDAQUERY;
to 0 : when true , 2  ? PDALOGOUT;

state 0 :
to 10 : when true , 2  ? PDALOGIN;
to 2 : when true , 2  ? PDAQUERY;
to 1 : when true , 2  ? PDASHUTDOWN;

state 11 :
to 12 : when true , 0 ! ROOMACCESS;

state 9 :
to 0 : when true , 1 ! PDAPDF;

state 12 :
to 13 : when true , 2  ? ROOMLIST;

state 13 :
to 14 : when true , 1 ! PDALIST;

state 7 :
to 8 : when true , 0 ! ROOMTEXTREQUEST;

state 8 :
to 9 : when true , 2  ? ROOMTEXT;

state 2 :
to 3 : when true , 0 ! ROOMACCESS;
