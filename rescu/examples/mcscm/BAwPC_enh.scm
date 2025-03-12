/* -----------------------------------------------------
   Business Agreement with Participant Completion
   (enhanced version)
   
   as formalized by A.P. Ravn, J. Srba, and S. Vighio
   in their TACAS 2011 paper "Modelling and Verification
   of Web Services Business Activity Protocols"

   automatically generated from their XML file
   ---------------------------------------------------- */


scm Enhanced_BAwPC :

nb_channels = 2 ;

parameters :
real Exited_c ;
real Cancel_c ;
real Close_c ;
real Canceled_p ;
real CannotComplete_p ;
real Compensated_p ;
real Compensate_c ;
real Closed_p ;
real Fail_p ;
real Completed_p ;
real Exit_p ;
real NotCompleted_c ;
real Failed_c ;




automaton COORDINATOR :

initial : 0 // Active


state 10 :  // EndedFailed
to 10 : when true , 0 ! Failed_c ; // to EndedFailed
to 10 : when true , 1 ? Exit_p ; // to EndedFailed
to 10 : when true , 1 ? Completed_p ; // to EndedFailed
to 18 : when true , 1 ? Fail_p ; // to state18
to 10 : when true , 1 ? CannotComplete_p ; // to EndedFailed
to 10 : when true , 1 ? Canceled_p ; // to EndedFailed
to 10 : when true , 1 ? Closed_p ; // to EndedFailed
to 10 : when true , 1 ? Compensated_p ; // to EndedFailed

state 19 :  // state19
to 12 : when true , 0 ! NotCompleted_c ; // to EndedNotCompleted

state 7 :  // FailingCompensating
to 13 : when true , 0 ! Failed_c ; // to Ended
to 14 : when true , 1 ? Exit_p ; // to Invalid
to 7 : when true , 1 ? Completed_p ; // to FailingCompensating
to 7 : when true , 1 ? Fail_p ; // to FailingCompensating
to 14 : when true , 1 ? CannotComplete_p ; // to Invalid
to 14 : when true , 1 ? Canceled_p ; // to Invalid
to 14 : when true , 1 ? Closed_p ; // to Invalid
to 14 : when true , 1 ? Compensated_p ; // to Invalid

state 13 :  // Ended
to 13 : when true , 1 ? Exit_p ; // to Ended
to 13 : when true , 1 ? Completed_p ; // to Ended
to 13 : when true , 1 ? Fail_p ; // to Ended
to 13 : when true , 1 ? CannotComplete_p ; // to Ended
to 13 : when true , 1 ? Canceled_p ; // to Ended
to 13 : when true , 1 ? Closed_p ; // to Ended
to 13 : when true , 1 ? Compensated_p ; // to Ended

state 2 :  // Completed
to 3 : when true , 0 ! Close_c ; // to Closing
to 4 : when true , 0 ! Compensate_c ; // to Compensating
to 14 : when true , 1 ? Exit_p ; // to Invalid
to 2 : when true , 1 ? Completed_p ; // to Completed
to 14 : when true , 1 ? Fail_p ; // to Invalid
to 14 : when true , 1 ? CannotComplete_p ; // to Invalid
to 14 : when true , 1 ? Canceled_p ; // to Invalid
to 14 : when true , 1 ? Closed_p ; // to Invalid
to 14 : when true , 1 ? Compensated_p ; // to Invalid

state 1 :  // Canceling
to 1 : when true , 0 ! Cancel_c ; // to Canceling
to 9 : when true , 1 ? Exit_p ; // to Exiting
to 2 : when true , 1 ? Completed_p ; // to Completed
to 6 : when true , 1 ? Fail_p ; // to FailingCanceling
to 8 : when true , 1 ? CannotComplete_p ; // to NotCompleting
to 13 : when true , 1 ? Canceled_p ; // to Ended
to 14 : when true , 1 ? Closed_p ; // to Invalid
to 14 : when true , 1 ? Compensated_p ; // to Invalid

state 17 :  // state17
to 4 : when true , 0 ! Compensate_c ; // to Compensating

state 16 :  // state16
to 3 : when true , 0 ! Close_c ; // to Closing

state 15 :  // state15
to 11 : when true , 0 ! Exited_c ; // to EndedExited

state 9 :  // Exiting
to 13 : when true , 0 ! Exited_c ; // to Ended
to 9 : when true , 1 ? Exit_p ; // to Exiting
to 14 : when true , 1 ? Completed_p ; // to Invalid
to 14 : when true , 1 ? Fail_p ; // to Invalid
to 14 : when true , 1 ? CannotComplete_p ; // to Invalid
to 14 : when true , 1 ? Canceled_p ; // to Invalid
to 14 : when true , 1 ? Closed_p ; // to Invalid
to 14 : when true , 1 ? Compensated_p ; // to Invalid

state 4 :  // Compensating
to 4 : when true , 0 ! Compensate_c ; // to Compensating
to 14 : when true , 1 ? Exit_p ; // to Invalid
to 17 : when true , 1 ? Completed_p ; // to state17
to 7 : when true , 1 ? Fail_p ; // to FailingCompensating
to 14 : when true , 1 ? CannotComplete_p ; // to Invalid
to 14 : when true , 1 ? Canceled_p ; // to Invalid
to 14 : when true , 1 ? Closed_p ; // to Invalid
to 13 : when true , 1 ? Compensated_p ; // to Ended

state 18 :  // state18
to 10 : when true , 0 ! Failed_c ; // to EndedFailed

state 11 :  // EndedExited
to 11 : when true , 0 ! Exited_c ; // to EndedExited
to 15 : when true , 1 ? Exit_p ; // to state15
to 11 : when true , 1 ? Completed_p ; // to EndedExited
to 11 : when true , 1 ? Fail_p ; // to EndedExited
to 11 : when true , 1 ? CannotComplete_p ; // to EndedExited
to 11 : when true , 1 ? Canceled_p ; // to EndedExited
to 11 : when true , 1 ? Closed_p ; // to EndedExited
to 11 : when true , 1 ? Compensated_p ; // to EndedExited

state 8 :  // NotCompleting
to 13 : when true , 0 ! NotCompleted_c ; // to Ended
to 14 : when true , 1 ? Exit_p ; // to Invalid
to 14 : when true , 1 ? Completed_p ; // to Invalid
to 14 : when true , 1 ? Fail_p ; // to Invalid
to 8 : when true , 1 ? CannotComplete_p ; // to NotCompleting
to 14 : when true , 1 ? Canceled_p ; // to Invalid
to 14 : when true , 1 ? Closed_p ; // to Invalid
to 14 : when true , 1 ? Compensated_p ; // to Invalid

state 0 :  // Active
to 1 : when true , 0 ! Cancel_c ; // to Canceling
to 9 : when true , 1 ? Exit_p ; // to Exiting
to 2 : when true , 1 ? Completed_p ; // to Completed
to 5 : when true , 1 ? Fail_p ; // to FailingActive
to 8 : when true , 1 ? CannotComplete_p ; // to NotCompleting
to 14 : when true , 1 ? Canceled_p ; // to Invalid
to 14 : when true , 1 ? Closed_p ; // to Invalid
to 14 : when true , 1 ? Compensated_p ; // to Invalid

state 3 :  // Closing
to 3 : when true , 0 ! Close_c ; // to Closing
to 14 : when true , 1 ? Exit_p ; // to Invalid
to 16 : when true , 1 ? Completed_p ; // to state16
to 14 : when true , 1 ? Fail_p ; // to Invalid
to 14 : when true , 1 ? CannotComplete_p ; // to Invalid
to 14 : when true , 1 ? Canceled_p ; // to Invalid
to 13 : when true , 1 ? Closed_p ; // to Ended
to 14 : when true , 1 ? Compensated_p ; // to Invalid

state 12 :  // EndedNotCompleted
to 12 : when true , 0 ! NotCompleted_c ; // to EndedNotCompleted
to 12 : when true , 1 ? Exit_p ; // to EndedNotCompleted
to 12 : when true , 1 ? Completed_p ; // to EndedNotCompleted
to 12 : when true , 1 ? Fail_p ; // to EndedNotCompleted
to 19 : when true , 1 ? CannotComplete_p ; // to state19
to 12 : when true , 1 ? Canceled_p ; // to EndedNotCompleted
to 12 : when true , 1 ? Closed_p ; // to EndedNotCompleted
to 12 : when true , 1 ? Compensated_p ; // to EndedNotCompleted

state 6 :  // FailingCanceling
to 13 : when true , 0 ! Failed_c ; // to Ended
to 14 : when true , 1 ? Exit_p ; // to Invalid
to 14 : when true , 1 ? Completed_p ; // to Invalid
to 6 : when true , 1 ? Fail_p ; // to FailingCanceling
to 14 : when true , 1 ? CannotComplete_p ; // to Invalid
to 14 : when true , 1 ? Canceled_p ; // to Invalid
to 14 : when true , 1 ? Closed_p ; // to Invalid
to 14 : when true , 1 ? Compensated_p ; // to Invalid

state 5 :  // FailingActive
to 13 : when true , 0 ! Failed_c ; // to Ended
to 14 : when true , 1 ? Exit_p ; // to Invalid
to 14 : when true , 1 ? Completed_p ; // to Invalid
to 5 : when true , 1 ? Fail_p ; // to FailingActive
to 14 : when true , 1 ? CannotComplete_p ; // to Invalid
to 14 : when true , 1 ? Canceled_p ; // to Invalid
to 14 : when true , 1 ? Closed_p ; // to Invalid
to 14 : when true , 1 ? Compensated_p ; // to Invalid

state 14 : // Invalid


automaton PARTICIPANT :

initial : 0 // Active


state 7 :  // FailingCompensating
to 7 : when true , 1 ! Fail_p ; // to FailingCompensating
to 7 : when true , 0 ? Cancel_c ; // to FailingCompensating
to 14 : when true , 0 ? Close_c ; // to Invalid
to 22 : when true , 0 ? Compensate_c ; // to state22
to 13 : when true , 0 ? Failed_c ; // to Ended
to 14 : when true , 0 ? Exited_c ; // to Invalid
to 14 : when true , 0 ? NotCompleted_c ; // to Invalid

state 12 :  // EndedCompensated
to 12 : when true , 1 ! Compensated_p ; // to EndedCompensated
to 12 : when true , 0 ? Cancel_c ; // to EndedCompensated
to 12 : when true , 0 ? Close_c ; // to EndedCompensated
to 23 : when true , 0 ? Compensate_c ; // to state23
to 12 : when true , 0 ? Failed_c ; // to EndedCompensated
to 12 : when true , 0 ? Exited_c ; // to EndedCompensated
to 12 : when true , 0 ? NotCompleted_c ; // to EndedCompensated

state 4 :  // Compensating
to 7 : when true , 1 ! Fail_p ; // to FailingCompensating
to 13 : when true , 1 ! Compensated_p ; // to Ended
to 4 : when true , 0 ? Cancel_c ; // to Compensating
to 14 : when true , 0 ? Close_c ; // to Invalid
to 4 : when true , 0 ? Compensate_c ; // to Compensating
to 14 : when true , 0 ? Failed_c ; // to Invalid
to 14 : when true , 0 ? Exited_c ; // to Invalid
to 14 : when true , 0 ? NotCompleted_c ; // to Invalid

state 5 :  // FailingActive
to 5 : when true , 1 ! Fail_p ; // to FailingActive
to 16 : when true , 0 ? Cancel_c ; // to state16
to 14 : when true , 0 ? Close_c ; // to Invalid
to 14 : when true , 0 ? Compensate_c ; // to Invalid
to 13 : when true , 0 ? Failed_c ; // to Ended
to 14 : when true , 0 ? Exited_c ; // to Invalid
to 14 : when true , 0 ? NotCompleted_c ; // to Invalid

state 23 :  // state23
to 12 : when true , 1 ! Compensated_p ; // to EndedCompensated

state 2 :  // Completed
to 2 : when true , 1 ! Completed_p ; // to Completed
to 15 : when true , 0 ? Cancel_c ; // to state15
to 3 : when true , 0 ? Close_c ; // to Closing
to 4 : when true , 0 ? Compensate_c ; // to Compensating
to 14 : when true , 0 ? Failed_c ; // to Invalid
to 14 : when true , 0 ? Exited_c ; // to Invalid
to 14 : when true , 0 ? NotCompleted_c ; // to Invalid

state 0 :  // Active
to 9 : when true , 1 ! Exit_p ; // to Exiting
to 2 : when true , 1 ! Completed_p ; // to Completed
to 5 : when true , 1 ! Fail_p ; // to FailingActive
to 8 : when true , 1 ! CannotComplete_p ; // to NotCompleting
to 1 : when true , 0 ? Cancel_c ; // to Canceling
to 14 : when true , 0 ? Close_c ; // to Invalid
to 14 : when true , 0 ? Compensate_c ; // to Invalid
to 14 : when true , 0 ? Failed_c ; // to Invalid
to 14 : when true , 0 ? Exited_c ; // to Invalid
to 14 : when true , 0 ? NotCompleted_c ; // to Invalid

state 19 :  // state19
to 9 : when true , 1 ! Exit_p ; // to Exiting

state 18 :  // state18
to 8 : when true , 1 ! CannotComplete_p ; // to NotCompleting

state 17 :  // state17
to 6 : when true , 1 ! Fail_p ; // to FailingCanceling

state 16 :  // state16
to 5 : when true , 1 ! Fail_p ; // to FailingActive

state 15 :  // state15
to 2 : when true , 1 ! Completed_p ; // to Completed

state 9 :  // Exiting
to 9 : when true , 1 ! Exit_p ; // to Exiting
to 19 : when true , 0 ? Cancel_c ; // to state19
to 14 : when true , 0 ? Close_c ; // to Invalid
to 14 : when true , 0 ? Compensate_c ; // to Invalid
to 14 : when true , 0 ? Failed_c ; // to Invalid
to 13 : when true , 0 ? Exited_c ; // to Ended
to 14 : when true , 0 ? NotCompleted_c ; // to Invalid

state 10 :  // EndedCanceled
to 10 : when true , 1 ! Canceled_p ; // to EndedCanceled
to 20 : when true , 0 ? Cancel_c ; // to state20
to 10 : when true , 0 ? Close_c ; // to EndedCanceled
to 10 : when true , 0 ? Compensate_c ; // to EndedCanceled
to 10 : when true , 0 ? Failed_c ; // to EndedCanceled
to 10 : when true , 0 ? Exited_c ; // to EndedCanceled
to 10 : when true , 0 ? NotCompleted_c ; // to EndedCanceled

state 3 :  // Closing
to 13 : when true , 1 ! Closed_p ; // to Ended
to 3 : when true , 0 ? Cancel_c ; // to Closing
to 3 : when true , 0 ? Close_c ; // to Closing
to 14 : when true , 0 ? Compensate_c ; // to Invalid
to 14 : when true , 0 ? Failed_c ; // to Invalid
to 14 : when true , 0 ? Exited_c ; // to Invalid
to 14 : when true , 0 ? NotCompleted_c ; // to Invalid

state 1 :  // Canceling
to 6 : when true , 1 ! Fail_p ; // to FailingCanceling
to 13 : when true , 1 ! Canceled_p ; // to Ended
to 1 : when true , 0 ? Cancel_c ; // to Canceling
to 14 : when true , 0 ? Close_c ; // to Invalid
to 14 : when true , 0 ? Compensate_c ; // to Invalid
to 14 : when true , 0 ? Failed_c ; // to Invalid
to 14 : when true , 0 ? Exited_c ; // to Invalid
to 14 : when true , 0 ? NotCompleted_c ; // to Invalid

state 22 :  // state22
to 7 : when true , 1 ! Fail_p ; // to FailingCompensating

state 13 :  // Ended
to 13 : when true , 0 ? Cancel_c ; // to Ended
to 13 : when true , 0 ? Close_c ; // to Ended
to 13 : when true , 0 ? Compensate_c ; // to Ended
to 13 : when true , 0 ? Failed_c ; // to Ended
to 13 : when true , 0 ? Exited_c ; // to Ended
to 13 : when true , 0 ? NotCompleted_c ; // to Ended

state 20 :  // state20
to 10 : when true , 1 ! Canceled_p ; // to EndedCanceled

state 21 :  // state21
to 11 : when true , 1 ! Closed_p ; // to EndedClosed

state 6 :  // FailingCanceling
to 6 : when true , 1 ! Fail_p ; // to FailingCanceling
to 17 : when true , 0 ? Cancel_c ; // to state17
to 14 : when true , 0 ? Close_c ; // to Invalid
to 14 : when true , 0 ? Compensate_c ; // to Invalid
to 13 : when true , 0 ? Failed_c ; // to Ended
to 14 : when true , 0 ? Exited_c ; // to Invalid
to 14 : when true , 0 ? NotCompleted_c ; // to Invalid

state 8 :  // NotCompleting
to 8 : when true , 1 ! CannotComplete_p ; // to NotCompleting
to 18 : when true , 0 ? Cancel_c ; // to state18
to 14 : when true , 0 ? Close_c ; // to Invalid
to 14 : when true , 0 ? Compensate_c ; // to Invalid
to 14 : when true , 0 ? Failed_c ; // to Invalid
to 14 : when true , 0 ? Exited_c ; // to Invalid
to 13 : when true , 0 ? NotCompleted_c ; // to Ended

state 11 :  // EndedClosed
to 11 : when true , 1 ! Closed_p ; // to EndedClosed
to 11 : when true , 0 ? Cancel_c ; // to EndedClosed
to 21 : when true , 0 ? Close_c ; // to state21
to 11 : when true , 0 ? Compensate_c ; // to EndedClosed
to 11 : when true , 0 ? Failed_c ; // to EndedClosed
to 11 : when true , 0 ? Exited_c ; // to EndedClosed
to 11 : when true , 0 ? NotCompleted_c ; // to EndedClosed

state 14 : // Invalid


bad_states :
(automaton COORDINATOR : in 14 : true)
(automaton PARTICIPANT : in 14 : true)

