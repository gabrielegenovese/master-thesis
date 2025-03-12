/* -----------------------------------------------------
   Business Agreement with Coordinator Completion 
   (enhanced version)
   
   as formalized by A.P. Ravn, J. Srba, and S. Vighio
   in their TACAS 2011 paper "Modelling and Verification
   of Web Services Business Activity Protocols"

   automatically generated from their XML file
   ---------------------------------------------------- */

scm Enhanced_BAwCC :

nb_channels = 2 ;

parameters :
real Complete_c ;
real Cancel_c ;
real Close_c ;
real Canceled_p ;
real Exited_c ;
real CannotComplete_p ;
real Compensated_p ;
real Compensate_c ;
real Closed_p ;
real Fail_p ;
real Completed_p ;
real Exit_p ;
real NotCompleted_c ;
real Failed_c ;




automaton PARTICIPANT :

initial : 0 // Active


state 9 :  // FailingCompensating
to 9 : when true , 1 ! Fail_p ; // to FailingCompensating
to 9 : when true , 0 ? Cancel_c ; // to FailingCompensating
to 9 : when true , 0 ? Complete_c ; // to FailingCompensating
to 16 : when true , 0 ? Close_c ; // to Invalid
to 34 : when true , 0 ? Compensate_c ; // to state34
to 15 : when true , 0 ? Failed_c ; // to Ended
to 16 : when true , 0 ? Exited_c ; // to Invalid
to 16 : when true , 0 ? NotCompleted_c ; // to Invalid

state 14 :  // EndedCompensated
to 14 : when true , 1 ! Compensated_p ; // to EndedCompensated
to 14 : when true , 0 ? Cancel_c ; // to EndedCompensated
to 32 : when true , 0 ? Complete_c ; // to state32
to 14 : when true , 0 ? Close_c ; // to EndedCompensated
to 35 : when true , 0 ? Compensate_c ; // to state35
to 14 : when true , 0 ? Failed_c ; // to EndedCompensated
to 14 : when true , 0 ? Exited_c ; // to EndedCompensated
to 14 : when true , 0 ? NotCompleted_c ; // to EndedCompensated

state 5 :  // Compensating
to 9 : when true , 1 ! Fail_p ; // to FailingCompensating
to 14 : when true , 1 ! Compensated_p ; // to EndedCompensated
to 5 : when true , 0 ? Cancel_c ; // to Compensating
to 5 : when true , 0 ? Complete_c ; // to Compensating
to 16 : when true , 0 ? Close_c ; // to Invalid
to 5 : when true , 0 ? Compensate_c ; // to Compensating
to 16 : when true , 0 ? Failed_c ; // to Invalid
to 16 : when true , 0 ? Exited_c ; // to Invalid
to 16 : when true , 0 ? NotCompleted_c ; // to Invalid

state 6 :  // FailingActive
to 6 : when true , 1 ! Fail_p ; // to FailingActive
to 18 : when true , 0 ? Cancel_c ; // to state18
to 25 : when true , 0 ? Complete_c ; // to state25
to 16 : when true , 0 ? Close_c ; // to Invalid
to 16 : when true , 0 ? Compensate_c ; // to Invalid
to 15 : when true , 0 ? Failed_c ; // to Ended
to 16 : when true , 0 ? Exited_c ; // to Invalid
to 16 : when true , 0 ? NotCompleted_c ; // to Invalid

state 15 :  // Ended
to 15 : when true , 0 ? Cancel_c ; // to Ended
to 15 : when true , 0 ? Complete_c ; // to Ended
to 15 : when true , 0 ? Close_c ; // to Ended
to 15 : when true , 0 ? Compensate_c ; // to Ended
to 15 : when true , 0 ? Failed_c ; // to Ended
to 15 : when true , 0 ? Exited_c ; // to Ended
to 15 : when true , 0 ? NotCompleted_c ; // to Ended

state 3 :  // Completed
to 3 : when true , 1 ! Completed_p ; // to Completed
to 17 : when true , 0 ? Cancel_c ; // to state17
to 24 : when true , 0 ? Complete_c ; // to state24
to 4 : when true , 0 ? Close_c ; // to Closing
to 5 : when true , 0 ? Compensate_c ; // to Compensating
to 16 : when true , 0 ? Failed_c ; // to Invalid
to 16 : when true , 0 ? Exited_c ; // to Invalid
to 16 : when true , 0 ? NotCompleted_c ; // to Invalid

state 35 :  // state35
to 14 : when true , 1 ! Compensated_p ; // to EndedCompensated

state 34 :  // state34
to 9 : when true , 1 ! Fail_p ; // to FailingCompensating

state 31 :  // state31
to 13 : when true , 1 ! Fail_p ; // to EndedClosed

state 30 :  // state30
to 12 : when true , 1 ! Fail_p ; // to EndedCanceled

state 33 :  // state33
to 13 : when true , 1 ! Closed_p ; // to EndedClosed

state 32 :  // state32
to 14 : when true , 1 ! Fail_p ; // to EndedCompensated

state 0 :  // Active
to 11 : when true , 1 ! Exit_p ; // to Exiting
to 6 : when true , 1 ! Fail_p ; // to FailingActive
to 10 : when true , 1 ! CannotComplete_p ; // to NotCompleting
to 1 : when true , 0 ? Cancel_c ; // to Canceling
to 2 : when true , 0 ? Complete_c ; // to Completing
to 16 : when true , 0 ? Close_c ; // to Invalid
to 16 : when true , 0 ? Compensate_c ; // to Invalid
to 16 : when true , 0 ? Failed_c ; // to Invalid
to 16 : when true , 0 ? Exited_c ; // to Invalid
to 16 : when true , 0 ? NotCompleted_c ; // to Invalid

state 7 :  // FailingCanceling
to 7 : when true , 1 ! Fail_p ; // to FailingCanceling
to 19 : when true , 0 ? Cancel_c ; // to state19
to 26 : when true , 0 ? Complete_c ; // to state26
to 16 : when true , 0 ? Close_c ; // to Invalid
to 16 : when true , 0 ? Compensate_c ; // to Invalid
to 15 : when true , 0 ? Failed_c ; // to Ended
to 16 : when true , 0 ? Exited_c ; // to Invalid
to 16 : when true , 0 ? NotCompleted_c ; // to Invalid

state 27 :  // state27
to 8 : when true , 1 ! Fail_p ; // to FailingCompleting

state 19 :  // state19
to 7 : when true , 1 ! Fail_p ; // to FailingCanceling

state 18 :  // state18
to 6 : when true , 1 ! Fail_p ; // to FailingActive

state 2 :  // Completing
to 11 : when true , 1 ! Exit_p ; // to Exiting
to 3 : when true , 1 ! Completed_p ; // to Completed
to 8 : when true , 1 ! Fail_p ; // to FailingCompleting
to 10 : when true , 1 ! CannotComplete_p ; // to NotCompleting
to 1 : when true , 0 ? Cancel_c ; // to Canceling
to 2 : when true , 0 ? Complete_c ; // to Completing
to 16 : when true , 0 ? Close_c ; // to Invalid
to 16 : when true , 0 ? Compensate_c ; // to Invalid
to 16 : when true , 0 ? Failed_c ; // to Invalid
to 16 : when true , 0 ? Exited_c ; // to Invalid
to 16 : when true , 0 ? NotCompleted_c ; // to Invalid

state 17 :  // state17
to 3 : when true , 1 ! Completed_p ; // to Completed

state 11 :  // Exiting
to 11 : when true , 1 ! Exit_p ; // to Exiting
to 22 : when true , 0 ? Cancel_c ; // to state22
to 29 : when true , 0 ? Complete_c ; // to state29
to 16 : when true , 0 ? Close_c ; // to Invalid
to 16 : when true , 0 ? Compensate_c ; // to Invalid
to 16 : when true , 0 ? Failed_c ; // to Invalid
to 15 : when true , 0 ? Exited_c ; // to Ended
to 16 : when true , 0 ? NotCompleted_c ; // to Invalid

state 12 :  // EndedCanceled
to 12 : when true , 1 ! Canceled_p ; // to EndedCanceled
to 23 : when true , 0 ? Cancel_c ; // to state23
to 30 : when true , 0 ? Complete_c ; // to state30
to 12 : when true , 0 ? Close_c ; // to EndedCanceled
to 12 : when true , 0 ? Compensate_c ; // to EndedCanceled
to 12 : when true , 0 ? Failed_c ; // to EndedCanceled
to 12 : when true , 0 ? Exited_c ; // to EndedCanceled
to 12 : when true , 0 ? NotCompleted_c ; // to EndedCanceled

state 4 :  // Closing
to 13 : when true , 1 ! Closed_p ; // to EndedClosed
to 4 : when true , 0 ? Cancel_c ; // to Closing
to 4 : when true , 0 ? Complete_c ; // to Closing
to 4 : when true , 0 ? Close_c ; // to Closing
to 16 : when true , 0 ? Compensate_c ; // to Invalid
to 16 : when true , 0 ? Failed_c ; // to Invalid
to 16 : when true , 0 ? Exited_c ; // to Invalid
to 16 : when true , 0 ? NotCompleted_c ; // to Invalid

state 1 :  // Canceling
to 7 : when true , 1 ! Fail_p ; // to FailingCanceling
to 12 : when true , 1 ! Canceled_p ; // to EndedCanceled
to 1 : when true , 0 ? Cancel_c ; // to Canceling
to 1 : when true , 0 ? Complete_c ; // to Canceling
to 16 : when true , 0 ? Close_c ; // to Invalid
to 16 : when true , 0 ? Compensate_c ; // to Invalid
to 16 : when true , 0 ? Failed_c ; // to Invalid
to 16 : when true , 0 ? Exited_c ; // to Invalid
to 16 : when true , 0 ? NotCompleted_c ; // to Invalid

state 22 :  // state22
to 11 : when true , 1 ! Exit_p ; // to Exiting

state 23 :  // state23
to 12 : when true , 1 ! Canceled_p ; // to EndedCanceled

state 20 :  // state20
to 8 : when true , 1 ! Fail_p ; // to FailingCompleting

state 21 :  // state21
to 10 : when true , 1 ! CannotComplete_p ; // to NotCompleting

state 26 :  // state26
to 7 : when true , 1 ! Fail_p ; // to FailingCanceling

state 8 :  // FailingCompleting
to 8 : when true , 1 ! Fail_p ; // to FailingCompleting
to 20 : when true , 0 ? Cancel_c ; // to state20
to 27 : when true , 0 ? Complete_c ; // to state27
to 16 : when true , 0 ? Close_c ; // to Invalid
to 16 : when true , 0 ? Compensate_c ; // to Invalid
to 15 : when true , 0 ? Failed_c ; // to Ended
to 16 : when true , 0 ? Exited_c ; // to Invalid
to 16 : when true , 0 ? NotCompleted_c ; // to Invalid

state 24 :  // state24
to 3 : when true , 1 ! Completed_p ; // to Completed

state 25 :  // state25
to 6 : when true , 1 ! Fail_p ; // to FailingActive

state 28 :  // state28
to 10 : when true , 1 ! CannotComplete_p ; // to NotCompleting

state 29 :  // state29
to 11 : when true , 1 ! Exit_p ; // to Exiting

state 10 :  // NotCompleting
to 10 : when true , 1 ! CannotComplete_p ; // to NotCompleting
to 21 : when true , 0 ? Cancel_c ; // to state21
to 28 : when true , 0 ? Complete_c ; // to state28
to 16 : when true , 0 ? Close_c ; // to Invalid
to 16 : when true , 0 ? Compensate_c ; // to Invalid
to 16 : when true , 0 ? Failed_c ; // to Invalid
to 16 : when true , 0 ? Exited_c ; // to Invalid
to 15 : when true , 0 ? NotCompleted_c ; // to Ended

state 13 :  // EndedClosed
to 13 : when true , 1 ! Closed_p ; // to EndedClosed
to 13 : when true , 0 ? Cancel_c ; // to EndedClosed
to 31 : when true , 0 ? Complete_c ; // to state31
to 33 : when true , 0 ? Close_c ; // to state33
to 13 : when true , 0 ? Compensate_c ; // to EndedClosed
to 13 : when true , 0 ? Failed_c ; // to EndedClosed
to 13 : when true , 0 ? Exited_c ; // to EndedClosed
to 13 : when true , 0 ? NotCompleted_c ; // to EndedClosed

state 16 : // Invalid


automaton COORDINATOR :

initial : 0 // Active


state 13 :  // EndedFailed
to 13 : when true , 0 ! Failed_c ; // to EndedFailed
to 13 : when true , 1 ? Exit_p ; // to EndedFailed
to 13 : when true , 1 ? Completed_p ; // to EndedFailed
to 21 : when true , 1 ? Fail_p ; // to state21
to 13 : when true , 1 ? CannotComplete_p ; // to EndedFailed
to 13 : when true , 1 ? Canceled_p ; // to EndedFailed
to 13 : when true , 1 ? Closed_p ; // to EndedFailed
to 13 : when true , 1 ? Compensated_p ; // to EndedFailed

state 2 :  // CancelingCompleting
to 2 : when true , 0 ! Cancel_c ; // to CancelingCompleting
to 12 : when true , 1 ? Exit_p ; // to Exiting
to 4 : when true , 1 ? Completed_p ; // to Completed
to 8 : when true , 1 ? Fail_p ; // to FailingCanceling
to 11 : when true , 1 ? CannotComplete_p ; // to NotCompleting
to 16 : when true , 1 ? Canceled_p ; // to Ended
to 17 : when true , 1 ? Closed_p ; // to Invalid
to 17 : when true , 1 ? Compensated_p ; // to Invalid

state 10 :  // FailingCompensating
to 13 : when true , 0 ! Failed_c ; // to EndedFailed
to 17 : when true , 1 ? Exit_p ; // to Invalid
to 10 : when true , 1 ? Completed_p ; // to FailingCompensating
to 10 : when true , 1 ? Fail_p ; // to FailingCompensating
to 17 : when true , 1 ? CannotComplete_p ; // to Invalid
to 17 : when true , 1 ? Canceled_p ; // to Invalid
to 17 : when true , 1 ? Closed_p ; // to Invalid
to 17 : when true , 1 ? Compensated_p ; // to Invalid

state 6 :  // Compensating
to 6 : when true , 0 ! Compensate_c ; // to Compensating
to 17 : when true , 1 ? Exit_p ; // to Invalid
to 20 : when true , 1 ? Completed_p ; // to state20
to 10 : when true , 1 ? Fail_p ; // to FailingCompensating
to 17 : when true , 1 ? CannotComplete_p ; // to Invalid
to 17 : when true , 1 ? Canceled_p ; // to Invalid
to 17 : when true , 1 ? Closed_p ; // to Invalid
to 16 : when true , 1 ? Compensated_p ; // to Ended

state 1 :  // CancelingActive
to 1 : when true , 0 ! Cancel_c ; // to CancelingActive
to 12 : when true , 1 ? Exit_p ; // to Exiting
to 17 : when true , 1 ? Completed_p ; // to Invalid
to 8 : when true , 1 ? Fail_p ; // to FailingCanceling
to 11 : when true , 1 ? CannotComplete_p ; // to NotCompleting
to 16 : when true , 1 ? Canceled_p ; // to Ended
to 17 : when true , 1 ? Closed_p ; // to Invalid
to 17 : when true , 1 ? Compensated_p ; // to Invalid

state 7 :  // FailingActive
to 13 : when true , 0 ! Failed_c ; // to EndedFailed
to 17 : when true , 1 ? Exit_p ; // to Invalid
to 17 : when true , 1 ? Completed_p ; // to Invalid
to 7 : when true , 1 ? Fail_p ; // to FailingActive
to 17 : when true , 1 ? CannotComplete_p ; // to Invalid
to 17 : when true , 1 ? Canceled_p ; // to Invalid
to 17 : when true , 1 ? Closed_p ; // to Invalid
to 17 : when true , 1 ? Compensated_p ; // to Invalid

state 4 :  // Completed
to 5 : when true , 0 ! Close_c ; // to Closing
to 6 : when true , 0 ! Compensate_c ; // to Compensating
to 17 : when true , 1 ? Exit_p ; // to Invalid
to 4 : when true , 1 ? Completed_p ; // to Completed
to 17 : when true , 1 ? Fail_p ; // to Invalid
to 17 : when true , 1 ? CannotComplete_p ; // to Invalid
to 17 : when true , 1 ? Canceled_p ; // to Invalid
to 17 : when true , 1 ? Closed_p ; // to Invalid
to 17 : when true , 1 ? Compensated_p ; // to Invalid

state 15 :  // EndedNotCompleted
to 15 : when true , 0 ! NotCompleted_c ; // to EndedNotCompleted
to 15 : when true , 1 ? Exit_p ; // to EndedNotCompleted
to 15 : when true , 1 ? Completed_p ; // to EndedNotCompleted
to 15 : when true , 1 ? Fail_p ; // to EndedNotCompleted
to 22 : when true , 1 ? CannotComplete_p ; // to state22
to 15 : when true , 1 ? Canceled_p ; // to EndedNotCompleted
to 15 : when true , 1 ? Closed_p ; // to EndedNotCompleted
to 15 : when true , 1 ? Compensated_p ; // to EndedNotCompleted

state 14 :  // EndedExited
to 14 : when true , 0 ! Exited_c ; // to EndedExited
to 18 : when true , 1 ? Exit_p ; // to state18
to 14 : when true , 1 ? Completed_p ; // to EndedExited
to 14 : when true , 1 ? Fail_p ; // to EndedExited
to 14 : when true , 1 ? CannotComplete_p ; // to EndedExited
to 14 : when true , 1 ? Canceled_p ; // to EndedExited
to 14 : when true , 1 ? Closed_p ; // to EndedExited
to 14 : when true , 1 ? Compensated_p ; // to EndedExited

state 0 :  // Active
to 1 : when true , 0 ! Cancel_c ; // to CancelingActive
to 3 : when true , 0 ! Complete_c ; // to Completing
to 12 : when true , 1 ? Exit_p ; // to Exiting
to 17 : when true , 1 ? Completed_p ; // to Invalid
to 7 : when true , 1 ? Fail_p ; // to FailingActive
to 11 : when true , 1 ? CannotComplete_p ; // to NotCompleting
to 17 : when true , 1 ? Canceled_p ; // to Invalid
to 17 : when true , 1 ? Closed_p ; // to Invalid
to 17 : when true , 1 ? Compensated_p ; // to Invalid

state 8 :  // FailingCanceling
to 13 : when true , 0 ! Failed_c ; // to EndedFailed
to 17 : when true , 1 ? Exit_p ; // to Invalid
to 17 : when true , 1 ? Completed_p ; // to Invalid
to 8 : when true , 1 ? Fail_p ; // to FailingCanceling
to 17 : when true , 1 ? CannotComplete_p ; // to Invalid
to 17 : when true , 1 ? Canceled_p ; // to Invalid
to 17 : when true , 1 ? Closed_p ; // to Invalid
to 17 : when true , 1 ? Compensated_p ; // to Invalid

state 19 :  // state19
to 5 : when true , 0 ! Close_c ; // to Closing

state 18 :  // state18
to 14 : when true , 0 ! Exited_c ; // to EndedExited

state 3 :  // Completing
to 2 : when true , 0 ! Cancel_c ; // to CancelingCompleting
to 3 : when true , 0 ! Complete_c ; // to Completing
to 12 : when true , 1 ? Exit_p ; // to Exiting
to 4 : when true , 1 ? Completed_p ; // to Completed
to 9 : when true , 1 ? Fail_p ; // to FailingCompleting
to 11 : when true , 1 ? CannotComplete_p ; // to NotCompleting
to 17 : when true , 1 ? Canceled_p ; // to Invalid
to 17 : when true , 1 ? Closed_p ; // to Invalid
to 17 : when true , 1 ? Compensated_p ; // to Invalid

state 12 :  // Exiting
to 14 : when true , 0 ! Exited_c ; // to EndedExited
to 12 : when true , 1 ? Exit_p ; // to Exiting
to 17 : when true , 1 ? Completed_p ; // to Invalid
to 17 : when true , 1 ? Fail_p ; // to Invalid
to 17 : when true , 1 ? CannotComplete_p ; // to Invalid
to 17 : when true , 1 ? Canceled_p ; // to Invalid
to 17 : when true , 1 ? Closed_p ; // to Invalid
to 17 : when true , 1 ? Compensated_p ; // to Invalid

state 5 :  // Closing
to 5 : when true , 0 ! Close_c ; // to Closing
to 17 : when true , 1 ? Exit_p ; // to Invalid
to 19 : when true , 1 ? Completed_p ; // to state19
to 17 : when true , 1 ? Fail_p ; // to Invalid
to 17 : when true , 1 ? CannotComplete_p ; // to Invalid
to 17 : when true , 1 ? Canceled_p ; // to Invalid
to 16 : when true , 1 ? Closed_p ; // to Ended
to 17 : when true , 1 ? Compensated_p ; // to Invalid

state 22 :  // state22
to 15 : when true , 0 ! NotCompleted_c ; // to EndedNotCompleted

state 16 :  // Ended
to 16 : when true , 1 ? Exit_p ; // to Ended
to 16 : when true , 1 ? Completed_p ; // to Ended
to 16 : when true , 1 ? Fail_p ; // to Ended
to 16 : when true , 1 ? CannotComplete_p ; // to Ended
to 16 : when true , 1 ? Canceled_p ; // to Ended
to 16 : when true , 1 ? Closed_p ; // to Ended
to 16 : when true , 1 ? Compensated_p ; // to Ended

state 20 :  // state20
to 6 : when true , 0 ! Compensate_c ; // to Compensating

state 21 :  // state21
to 13 : when true , 0 ! Failed_c ; // to EndedFailed

state 9 :  // FailingCompleting
to 13 : when true , 0 ! Failed_c ; // to EndedFailed
to 17 : when true , 1 ? Exit_p ; // to Invalid
to 17 : when true , 1 ? Completed_p ; // to Invalid
to 9 : when true , 1 ? Fail_p ; // to FailingCompleting
to 17 : when true , 1 ? CannotComplete_p ; // to Invalid
to 17 : when true , 1 ? Canceled_p ; // to Invalid
to 17 : when true , 1 ? Closed_p ; // to Invalid
to 17 : when true , 1 ? Compensated_p ; // to Invalid

state 11 :  // NotCompleting
to 15 : when true , 0 ! NotCompleted_c ; // to EndedNotCompleted
to 17 : when true , 1 ? Exit_p ; // to Invalid
to 17 : when true , 1 ? Completed_p ; // to Invalid
to 17 : when true , 1 ? Fail_p ; // to Invalid
to 11 : when true , 1 ? CannotComplete_p ; // to NotCompleting
to 17 : when true , 1 ? Canceled_p ; // to Invalid
to 17 : when true , 1 ? Closed_p ; // to Invalid
to 17 : when true , 1 ? Compensated_p ; // to Invalid

state 17 : // Invalid


bad_states :
(automaton PARTICIPANT : in 16 : true)
(automaton COORDINATOR : in 17 : true)

