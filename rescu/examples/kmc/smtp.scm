
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/smtp.txt
---------------------------------------------------------------------*/

scm smtp :

nb_channels = 2 ;
parameters :
real M535 ;
real M221 ;
real Quit ;
real EndOfData ;
real Subject ;
real DataLine ;
real M354 ;
real Data ;
real Rcpt ;
real M501 ;
real Mail ;
real M235 ;
real Auth ;
real StartTls ;
real M250 ;
real M250d ;
real Ehlo ;
real M220 ;

automaton A1 :

initial : 0


state 19 :
to 20 : when true, 0 ! M220 ;

state 18 :
to 17 : when true, 1 ? Quit ;
to 19 : when true, 1 ? StartTls ;

state 17 :

state 25 :
to 26 : when true, 0 ! M250 ;
to 24 : when true, 0 ! M501 ;

state 4 :
to 5 : when true, 0 ! M220 ;

state 30 :
to 24 : when true, 0 ! M250 ;

state 14 :
to 15 : when true, 1 ? EndOfData ;
to 14 : when true, 1 ? Subject ;
to 14 : when true, 1 ? DataLine ;

state 6 :
to 7 : when true, 0 ! M250 ;
to 6 : when true, 0 ! M250d ;

state 15 :
to 9 : when true, 0 ! M250 ;

state 27 :
to 26 : when true, 0 ! M250 ;

state 31 :
to 17 : when true, 0 ! M221 ;

state 12 :
to 11 : when true, 0 ! M250 ;

state 8 :
to 7 : when true, 0 ! M535 ;
to 9 : when true, 0 ! M235 ;

state 22 :
to 17 : when true, 1 ? Quit ;
to 23 : when true, 1 ? Auth ;

state 28 :
to 29 : when true, 0 ! M354 ;

state 1 :
to 17 : when true, 1 ? Quit ;
to 2 : when true, 1 ? Ehlo ;

state 23 :
to 22 : when true, 0 ! M535 ;
to 24 : when true, 0 ! M235 ;

state 5 :
to 17 : when true, 1 ? Quit ;
to 6 : when true, 1 ? Ehlo ;

state 3 :
to 17 : when true, 1 ? Quit ;
to 4 : when true, 1 ? StartTls ;

state 16 :
to 17 : when true, 0 ! M221 ;

state 24 :
to 31 : when true, 1 ? Quit ;
to 25 : when true, 1 ? Mail ;

state 21 :
to 22 : when true, 0 ! M250 ;
to 21 : when true, 0 ! M250d ;

state 10 :
to 11 : when true, 0 ! M250 ;
to 9 : when true, 0 ! M501 ;

state 26 :
to 28 : when true, 1 ? Data ;
to 27 : when true, 1 ? Rcpt ;

state 0 :
to 1 : when true, 0 ! M220 ;

state 11 :
to 13 : when true, 1 ? Data ;
to 12 : when true, 1 ? Rcpt ;

state 9 :
to 16 : when true, 1 ? Quit ;
to 10 : when true, 1 ? Mail ;

state 13 :
to 14 : when true, 0 ! M354 ;

state 7 :
to 17 : when true, 1 ? Quit ;
to 8 : when true, 1 ? Auth ;

state 29 :
to 30 : when true, 1 ? EndOfData ;
to 29 : when true, 1 ? Subject ;
to 29 : when true, 1 ? DataLine ;

state 2 :
to 18 : when true, 0 ! M220 ;
to 3 : when true, 0 ! M250 ;
to 2 : when true, 0 ! M250d ;

state 20 :
to 17 : when true, 1 ? Quit ;
to 21 : when true, 1 ? Ehlo ;



automaton A0 :

initial : 0


state 19 :
to 20 : when true, 0 ? M220 ;

state 18 :
to 17 : when true, 1 ! Quit ;
to 19 : when true, 1 ! StartTls ;

state 17 :

state 25 :
to 26 : when true, 0 ? M250 ;
to 24 : when true, 0 ? M501 ;

state 4 :
to 5 : when true, 0 ? M220 ;

state 30 :
to 24 : when true, 0 ? M250 ;

state 14 :
to 15 : when true, 1 ! EndOfData ;
to 14 : when true, 1 ! Subject ;
to 14 : when true, 1 ! DataLine ;

state 6 :
to 7 : when true, 0 ? M250 ;
to 6 : when true, 0 ? M250d ;

state 15 :
to 9 : when true, 0 ? M250 ;

state 27 :
to 26 : when true, 0 ? M250 ;

state 31 :
to 17 : when true, 0 ? M221 ;

state 12 :
to 11 : when true, 0 ? M250 ;

state 8 :
to 7 : when true, 0 ? M535 ;
to 9 : when true, 0 ? M235 ;

state 22 :
to 17 : when true, 1 ! Quit ;
to 23 : when true, 1 ! Auth ;

state 28 :
to 29 : when true, 0 ? M354 ;

state 1 :
to 17 : when true, 1 ! Quit ;
to 2 : when true, 1 ! Ehlo ;

state 23 :
to 22 : when true, 0 ? M535 ;
to 24 : when true, 0 ? M235 ;

state 5 :
to 17 : when true, 1 ! Quit ;
to 6 : when true, 1 ! Ehlo ;

state 3 :
to 17 : when true, 1 ! Quit ;
to 4 : when true, 1 ! StartTls ;

state 16 :
to 17 : when true, 0 ? M221 ;

state 24 :
to 31 : when true, 1 ! Quit ;
to 25 : when true, 1 ! Mail ;

state 21 :
to 22 : when true, 0 ? M250 ;
to 21 : when true, 0 ? M250d ;

state 10 :
to 11 : when true, 0 ? M250 ;
to 9 : when true, 0 ? M501 ;

state 26 :
to 28 : when true, 1 ! Data ;
to 27 : when true, 1 ! Rcpt ;

state 0 :
to 1 : when true, 0 ? M220 ;

state 11 :
to 13 : when true, 1 ! Data ;
to 12 : when true, 1 ! Rcpt ;

state 9 :
to 16 : when true, 1 ! Quit ;
to 10 : when true, 1 ! Mail ;

state 13 :
to 14 : when true, 0 ? M354 ;

state 7 :
to 17 : when true, 1 ! Quit ;
to 8 : when true, 1 ! Auth ;

state 29 :
to 30 : when true, 1 ! EndOfData ;
to 29 : when true, 1 ! Subject ;
to 29 : when true, 1 ! DataLine ;

state 2 :
to 18 : when true, 0 ? M220 ;
to 3 : when true, 0 ? M250 ;
to 2 : when true, 0 ? M250d ;

state 20 :
to 17 : when true, 1 ! Quit ;
to 21 : when true, 1 ! Ehlo ;


