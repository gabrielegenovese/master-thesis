/* ------------------------------------------------------------------
   Our running example:
   the client/server/database protocol, Figure 1 of paper
   RSC to the ReSCu: Automated Verification of Systems of Communicating Automata
----------------------------------------------------------------- */

scm client_server:

nb_channels = 3;
parameters:
int req;
int res;
int log;
int ack;

automaton server :
initial : 0

state 0:
to 1 : when true, 0?req;

state 1:
to 2: when true, 1!res;

state 2:
to 3: when true, 0?ack;

state 3:
to 0: when true, 2!log;


automaton client:
initial : 0
state 0:
to 1 : when true, 0!req;

state 1:
to 2 : when true, 1?res;

state 2:
to 0: when true, 0!ack;


automaton database :
initial: 0
state 0:
to 0: when true, 2?log;


bad_states:
(automaton client: in 0: true automaton server: in 1: true)
(automaton server: in 0: true with (req|log|res).(req|res|log|ack)^*.#.(req|res|log|ack)^*.#.(req|res|log|ack)^*)