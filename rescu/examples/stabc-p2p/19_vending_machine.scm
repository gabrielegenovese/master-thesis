/* Transcoded from AUT with aut2scm */

scm not_named :

nb_channels = 4 ;
parameters :
real MSERVEDTEA ;
real MSERVEDCOFFEE ;
real MCOFFEEBUTTON ;
real DSERVEDCOFFEE ;
real MEURO ;
real MTEABUTTON ;
real DEURO ;

automaton A0 :

initial : 0


state 1 :
to 2 : when true , 3  ? DSERVEDCOFFEE;

state 0 :
to 1 : when true , 0 ! DEURO;

state 2 :

automaton A1 :

initial : 0


state 1 :
to 3 : when true , 1  ? MCOFFEEBUTTON;
to 2 : when true , 1  ? MTEABUTTON;

state 0 :
to 1 : when true , 1  ? MEURO;

state 4 :

state 3 :
to 4 : when true , 2 ! MSERVEDCOFFEE;

state 2 :
to 4 : when true , 2 ! MSERVEDTEA;

automaton A2 :

initial : 0


state 1 :
to 2 : when true , 1 ! MEURO;

state 0 :
to 1 : when true , 0  ? DEURO;

state 5 :

state 4 :
to 5 : when true , 3 ! DSERVEDCOFFEE;

state 3 :
to 4 : when true , 2  ? MSERVEDCOFFEE;

state 2 :
to 6 : when true , 1 ! MTEABUTTON;
to 3 : when true , 1 ! MCOFFEEBUTTON;

state 6 :
to 4 : when true , 2  ? MSERVEDTEA;
