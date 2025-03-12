
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/http-fsm.txt
---------------------------------------------------------------------*/

scm http_fsm :

nb_channels = 2 ;
parameters :
real M404 ;
real VIA ;
real CONTENTT ;
real VARY ;
real CONTENTL ;
real ACCEPTR ;
real ETAG ;
real LASTM ;
real STRICTTS ;
real SERVER ;
real DATE ;
real M200 ;
real HTTPV ;
real BODY ;
real UPGRADEIR ;
real CONNECTION ;
real DNT ;
real ACCEPTE ;
real ACCEPTL ;
real ACCEPT ;
real USERA ;
real HOST ;
real REQUESTL ;

automaton A1 :

initial : 0


state 1 :
to 2 : when true, 0 ? BODY ;
to 1 : when true, 0 ? UPGRADEIR ;
to 1 : when true, 0 ? CONNECTION ;
to 1 : when true, 0 ? DNT ;
to 1 : when true, 0 ? ACCEPTE ;
to 1 : when true, 0 ? ACCEPTL ;
to 1 : when true, 0 ? ACCEPT ;
to 1 : when true, 0 ? USERA ;
to 1 : when true, 0 ? HOST ;

state 0 :
to 1 : when true, 0 ? REQUESTL ;

state 5 :

state 4 :
to 5 : when true, 1 ! BODY ;
to 4 : when true, 1 ! VIA ;
to 4 : when true, 1 ! CONTENTT ;
to 4 : when true, 1 ! VARY ;
to 4 : when true, 1 ! CONTENTL ;
to 4 : when true, 1 ! ACCEPTR ;
to 4 : when true, 1 ! ETAG ;
to 4 : when true, 1 ! LASTM ;
to 4 : when true, 1 ! STRICTTS ;
to 4 : when true, 1 ! SERVER ;
to 4 : when true, 1 ! DATE ;

state 3 :
to 4 : when true, 1 ! M404 ;
to 4 : when true, 1 ! M200 ;

state 2 :
to 3 : when true, 1 ! HTTPV ;



automaton A0 :

initial : 0


state 1 :
to 2 : when true, 0 ! BODY ;
to 1 : when true, 0 ! UPGRADEIR ;
to 1 : when true, 0 ! CONNECTION ;
to 1 : when true, 0 ! DNT ;
to 1 : when true, 0 ! ACCEPTE ;
to 1 : when true, 0 ! ACCEPTL ;
to 1 : when true, 0 ! ACCEPT ;
to 1 : when true, 0 ! USERA ;
to 1 : when true, 0 ! HOST ;

state 0 :
to 1 : when true, 0 ! REQUESTL ;

state 5 :

state 4 :
to 5 : when true, 1 ? BODY ;
to 4 : when true, 1 ? VIA ;
to 4 : when true, 1 ? CONTENTT ;
to 4 : when true, 1 ? VARY ;
to 4 : when true, 1 ? CONTENTL ;
to 4 : when true, 1 ? ACCEPTR ;
to 4 : when true, 1 ? ETAG ;
to 4 : when true, 1 ? LASTM ;
to 4 : when true, 1 ? STRICTTS ;
to 4 : when true, 1 ? SERVER ;
to 4 : when true, 1 ? DATE ;

state 3 :
to 4 : when true, 1 ? M404 ;
to 4 : when true, 1 ? M200 ;

state 2 :
to 3 : when true, 1 ? HTTPV ;


bad_states:
(automaton A1: in 2 : true with (M404 | VIA | CONTENTT | VARY | CONTENTL | ACCEPTR | ETAG | LASTM | STRICTTS | SERVER | DATE | M200 | HTTPV | BODY | UPGRADEIR | CONNECTION | DNT | ACCEPTE | ACCEPT | USERA | HOST | REQUESTL)^*.ACCEPTL.(M404 | VIA | CONTENTT | VARY | CONTENTL | ACCEPTR | ETAG | LASTM | STRICTTS | SERVER | DATE | M200 | HTTPV | BODY | UPGRADEIR | CONNECTION | DNT | ACCEPTE | ACCEPT | USERA | HOST | REQUESTL)^*.#.(M404 | VIA | CONTENTT | VARY | CONTENTL | ACCEPTR | ETAG | LASTM | STRICTTS | SERVER | DATE | M200 | HTTPV | BODY | UPGRADEIR | CONNECTION | DNT | ACCEPTE | ACCEPT | USERA | HOST | REQUESTL)^*)