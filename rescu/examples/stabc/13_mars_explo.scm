/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 3 ;
parameters :
real CCSUBMITERR ;
real MESUBMITERR ;
real CCLOGIN ;
real MEJOBID ;
real CCLOGOUT2 ;
real MESETCOORDS ;
real MELOGIN ;
real MELOGOUT1 ;
real CCLOGOUT1 ;
real CCJOBID ;
real MESETJOB ;
real MESUBMITREP ;
real CCSUBMITREP ;
real CCSETCOORDS ;
real MELOGOUT2 ;
real CCSETJOB ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 2 ! MEJOBID;

state 0 :
to 1 : when true , 0  ? MELOGIN;

state 5 :
to 6 : when true , 0  ? MELOGOUT1;

state 4 :
to 7 : when true , 2 ! MESUBMITERR;
to 5 : when true , 2 ! MESUBMITREP;

state 3 :
to 4 : when true , 0  ? MESETCOORDS;

state 7 :
to 8 : when true , 0  ? MELOGOUT2;

state 8 :

state 2 :
to 3 : when true , 0  ? MESETJOB;

state 6 :

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 2 ! CCSETCOORDS;

state 0 :
to 1 : when true , 2 ! CCLOGIN;

state 4 :
to 5 : when true , 1  ? CCJOBID;

state 5 :
to 6 : when true , 2 ! CCLOGOUT1;

state 3 :
to 7 : when true , 1  ? CCSUBMITERR;
to 4 : when true , 1  ? CCSUBMITREP;

state 7 :
to 8 : when true , 2 ! CCLOGOUT2;

state 8 :

state 2 :
to 3 : when true , 2 ! CCSETJOB;

state 6 :

automaton A2 :

initial : 0


state 17 :

state 1 :
to 2 : when true , 0 ! MELOGIN;

state 5 :
to 4 : when true , 2  ? CCSETCOORDS;

state 4 :
to 6 : when true , 2  ? CCSETJOB;

state 3 :
to 4 : when true , 2  ? MEJOBID;

state 16 :
to 17 : when true , 0 ! MELOGOUT2;

state 14 :
to 15 : when true , 1 ! CCSUBMITERR;

state 6 :
to 7 : when true , 0 ! MESETJOB;

state 15 :
to 16 : when true , 2  ? CCLOGOUT2;

state 10 :
to 11 : when true , 1 ! CCJOBID;

state 0 :
to 1 : when true , 2  ? CCLOGIN;

state 11 :
to 12 : when true , 2  ? CCLOGOUT1;

state 9 :
to 10 : when true , 1 ! CCSUBMITREP;

state 12 :
to 13 : when true , 0 ! MELOGOUT1;

state 13 :

state 7 :
to 8 : when true , 0 ! MESETCOORDS;

state 8 :
to 14 : when true , 2  ? MESUBMITERR;
to 9 : when true , 2  ? MESUBMITREP;

state 2 :
to 5 : when true , 2  ? MEJOBID;
to 3 : when true , 2  ? CCSETCOORDS;
