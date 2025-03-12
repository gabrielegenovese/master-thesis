/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 6 ;
parameters :
real ENVEXITCODE ;
real CRUN ;
real SQLSQLVALUES ;
real SQLSQLQUERY ;
real CLOG ;
real CEXITCODE ;
real ENVLAUNCH ;
real CEND ;
real SQLSQLERROR ;
real CREPLY ;
real SQLID ;
real CREQUEST ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 2 ! CLOG;

state 0 :
to 1 : when true , 1  ? CRUN;

state 5 :
to 2 : when true , 1  ? CREPLY;

state 4 :
to 6 : when true , 2 ! CEND;

state 3 :
to 5 : when true , 2 ! CREQUEST;

state 7 :

state 2 :
to 4 : when true ;
to 3 : when true ;

state 6 :
to 7 : when true , 2 ! CEXITCODE;

automaton A1 :

initial : 0


state 1 :
to 2 : when true , 3  ? ENVEXITCODE;

state 0 :
to 1 : when true , 0 ! ENVLAUNCH;

state 2 :

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 4  ? SQLSQLQUERY;

state 0 :
to 1 : when true , 4  ? SQLID;

state 4 :
to 0 : when true , 5 ! SQLSQLERROR;

state 3 :
to 0 : when true , 5 ! SQLSQLVALUES;

state 2 :
to 4 : when true ;
to 3 : when true ;

automaton A3 :

initial : 0


state 1 :
to 2 : when true , 1 ! CRUN;

state 4 :
to 5 : when true , 2  ? CEXITCODE;

state 5 :
to 6 : when true , 3 ! ENVEXITCODE;

state 3 :
to 8 : when true , 4 ! SQLID;
to 7 : when true , 2  ? CREQUEST;
to 4 : when true , 2  ? CEND;

state 16 :
to 12 : when true , 4 ! SQLID;
to 3 : when true , 1 ! CREPLY;

state 14 :
to 15 : when true , 4 ! SQLSQLQUERY;

state 6 :

state 15 :
to 16 : when true , 5  ? SQLSQLERROR;
to 16 : when true , 5  ? SQLSQLVALUES;

state 10 :
to 11 : when true , 5  ? SQLSQLERROR;
to 11 : when true , 5  ? SQLSQLVALUES;

state 0 :
to 1 : when true , 0  ? ENVLAUNCH;

state 11 :
to 3 : when true , 1 ! CREPLY;
to 12 : when true , 4 ! SQLID;

state 9 :
to 10 : when true , 4 ! SQLSQLQUERY;

state 12 :
to 13 : when true , 1 ! CREPLY;

state 13 :
to 14 : when true , 2  ? CREQUEST;

state 7 :
to 9 : when true , 4 ! SQLID;

state 8 :
to 9 : when true , 2  ? CREQUEST;

state 2 :
to 3 : when true , 2  ? CLOG;

bad_states:
(automaton A3: in 5 : true
 with (ENVEXITCODE|CRUN|SQLSQLVALUES|SQLSQLQUERY|CLOG|CEXITCODE|ENVLAUNCH|CEND|SQLSQLERROR|CREPLY|SQLID|CREQUEST)^*.#.(ENVEXITCODE|CRUN|SQLSQLVALUES|SQLSQLQUERY|CLOG|CEXITCODE|ENVLAUNCH|CEND|SQLSQLERROR|CREPLY|SQLID|CREQUEST)^*.#.(ENVEXITCODE|CRUN|SQLSQLVALUES|SQLSQLQUERY|CLOG|CEXITCODE|ENVLAUNCH|CEND|SQLSQLERROR|CREPLY|SQLID|CREQUEST)^*.#.(ENVEXITCODE|CRUN|SQLSQLVALUES|SQLSQLQUERY|CLOG|CEXITCODE|ENVLAUNCH|CEND|SQLSQLERROR|CREPLY|SQLID|CREQUEST)^*.SQLID.(ENVEXITCODE|CRUN|SQLSQLVALUES|SQLSQLQUERY|CLOG|CEXITCODE|ENVLAUNCH|CEND|SQLSQLERROR|CREPLY|SQLID|CREQUEST)^*.#.(ENVEXITCODE|CRUN|SQLSQLVALUES|SQLSQLQUERY|CLOG|CEXITCODE|ENVLAUNCH|CEND|SQLSQLERROR|CREPLY|SQLID|CREQUEST)^*.#.(ENVEXITCODE|CRUN|SQLSQLVALUES|SQLSQLQUERY|CLOG|CEXITCODE|ENVLAUNCH|CEND|SQLSQLERROR|CREPLY|SQLID|CREQUEST)^*)




