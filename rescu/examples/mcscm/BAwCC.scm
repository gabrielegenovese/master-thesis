/* -----------------------------------------------------
   Business Agreement with Coordinator Completion
   
   as formalized by A.P. Ravn, J. Srba, and S. Vighio
   in their TACAS 2011 paper "Modelling and Verification
   of Web Services Business Activity Protocols"

   automatically generated from their XML file
   ---------------------------------------------------- */


scm BAwCC :

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




automaton COORDINATOR :

initial : 0 // Active


state 2 :  // CancelingCompleting
to 2 : when true , 0 ! Cancel_c ; // to CancelingCompleting
to 12 : when true , 1 ? Exit_p ; // to Exiting
to 4 : when true , 1 ? Completed_p ; // to Completed
to 8 : when true , 1 ? Fail_p ; // to FailingCanceling
to 11 : when true , 1 ? CannotComplete_p ; // to NotCompleting
to 13 : when true , 1 ? Canceled_p ; // to Ended
to 14 : when true , 1 ? Closed_p ; // to Invalid
to 14 : when true , 1 ? Compensated_p ; // to Invalid

state 19 :  // state19
to 13 : when true , 0 ! NotCompleted_c ; // to Ended

state 18 :  // state18
to 13 : when true , 0 ! Failed_c ; // to Ended

state 13 :  // Ended
to 13 : when true , 0 ! Failed_c ; // to Ended
to 13 : when true , 0 ! Exited_c ; // to Ended
to 13 : when true , 0 ! NotCompleted_c ; // to Ended
to 15 : when true , 1 ? Exit_p ; // to state15
to 13 : when true , 1 ? Completed_p ; // to Ended
to 18 : when true , 1 ? Fail_p ; // to state18
to 19 : when true , 1 ? CannotComplete_p ; // to state19
to 13 : when true , 1 ? Canceled_p ; // to Ended
to 13 : when true , 1 ? Closed_p ; // to Ended
to 13 : when true , 1 ? Compensated_p ; // to Ended

state 3 :  // Completing
to 2 : when true , 0 ! Cancel_c ; // to CancelingCompleting
to 3 : when true , 0 ! Complete_c ; // to Completing
to 12 : when true , 1 ? Exit_p ; // to Exiting
to 4 : when true , 1 ? Completed_p ; // to Completed
to 9 : when true , 1 ? Fail_p ; // to FailingCompleting
to 11 : when true , 1 ? CannotComplete_p ; // to NotCompleting
to 13 : when true , 1 ? Canceled_p ; // to Ended
to 14 : when true , 1 ? Closed_p ; // to Invalid
to 14 : when true , 1 ? Compensated_p ; // to Invalid

state 10 :  // FailingCompensating
to 13 : when true , 0 ! Failed_c ; // to Ended
to 14 : when true , 1 ? Exit_p ; // to Invalid
to 10 : when true , 1 ? Completed_p ; // to FailingCompensating
to 10 : when true , 1 ? Fail_p ; // to FailingCompensating
to 14 : when true , 1 ? CannotComplete_p ; // to Invalid
to 14 : when true , 1 ? Canceled_p ; // to Invalid
to 14 : when true , 1 ? Closed_p ; // to Invalid
to 14 : when true , 1 ? Compensated_p ; // to Invalid

state 17 :  // state17
to 6 : when true , 0 ! Compensate_c ; // to Compensating

state 11 :  // NotCompleting
to 13 : when true , 0 ! NotCompleted_c ; // to Ended
to 14 : when true , 1 ? Exit_p ; // to Invalid
to 14 : when true , 1 ? Completed_p ; // to Invalid
to 14 : when true , 1 ? Fail_p ; // to Invalid
to 11 : when true , 1 ? CannotComplete_p ; // to NotCompleting
to 14 : when true , 1 ? Canceled_p ; // to Invalid
to 14 : when true , 1 ? Closed_p ; // to Invalid
to 14 : when true , 1 ? Compensated_p ; // to Invalid

state 15 :  // state15
to 13 : when true , 0 ! Exited_c ; // to Ended

state 1 :  // CancelingActive
to 1 : when true , 0 ! Cancel_c ; // to CancelingActive
to 12 : when true , 1 ? Exit_p ; // to Exiting
to 14 : when true , 1 ? Completed_p ; // to Invalid
to 8 : when true , 1 ? Fail_p ; // to FailingCanceling
to 11 : when true , 1 ? CannotComplete_p ; // to NotCompleting
to 13 : when true , 1 ? Canceled_p ; // to Ended
to 14 : when true , 1 ? Closed_p ; // to Invalid
to 14 : when true , 1 ? Compensated_p ; // to Invalid

state 16 :  // state16
to 5 : when true , 0 ! Close_c ; // to Closing

state 6 :  // Compensating
to 6 : when true , 0 ! Compensate_c ; // to Compensating
to 14 : when true , 1 ? Exit_p ; // to Invalid
to 17 : when true , 1 ? Completed_p ; // to state17
to 10 : when true , 1 ? Fail_p ; // to FailingCompensating
to 14 : when true , 1 ? CannotComplete_p ; // to Invalid
to 14 : when true , 1 ? Canceled_p ; // to Invalid
to 14 : when true , 1 ? Closed_p ; // to Invalid
to 13 : when true , 1 ? Compensated_p ; // to Ended

state 9 :  // FailingCompleting
to 13 : when true , 0 ! Failed_c ; // to Ended
to 14 : when true , 1 ? Exit_p ; // to Invalid
to 14 : when true , 1 ? Completed_p ; // to Invalid
to 9 : when true , 1 ? Fail_p ; // to FailingCompleting
to 14 : when true , 1 ? CannotComplete_p ; // to Invalid
to 14 : when true , 1 ? Canceled_p ; // to Invalid
to 14 : when true , 1 ? Closed_p ; // to Invalid
to 14 : when true , 1 ? Compensated_p ; // to Invalid

state 0 :  // Active
to 1 : when true , 0 ! Cancel_c ; // to CancelingActive
to 3 : when true , 0 ! Complete_c ; // to Completing
to 12 : when true , 1 ? Exit_p ; // to Exiting
to 14 : when true , 1 ? Completed_p ; // to Invalid
to 7 : when true , 1 ? Fail_p ; // to FailingActive
to 11 : when true , 1 ? CannotComplete_p ; // to NotCompleting
to 14 : when true , 1 ? Canceled_p ; // to Invalid
to 14 : when true , 1 ? Closed_p ; // to Invalid
to 14 : when true , 1 ? Compensated_p ; // to Invalid

state 5 :  // Closing
to 5 : when true , 0 ! Close_c ; // to Closing
to 14 : when true , 1 ? Exit_p ; // to Invalid
to 16 : when true , 1 ? Completed_p ; // to state16
to 14 : when true , 1 ? Fail_p ; // to Invalid
to 14 : when true , 1 ? CannotComplete_p ; // to Invalid
to 14 : when true , 1 ? Canceled_p ; // to Invalid
to 13 : when true , 1 ? Closed_p ; // to Ended

state 12 :  // Exiting
to 13 : when true , 0 ! Exited_c ; // to Ended
to 12 : when true , 1 ? Exit_p ; // to Exiting
to 14 : when true , 1 ? Completed_p ; // to Invalid
to 14 : when true , 1 ? Fail_p ; // to Invalid
to 14 : when true , 1 ? CannotComplete_p ; // to Invalid
to 14 : when true , 1 ? Canceled_p ; // to Invalid
to 14 : when true , 1 ? Closed_p ; // to Invalid
to 14 : when true , 1 ? Compensated_p ; // to Invalid

state 4 :  // Completed
to 5 : when true , 0 ! Close_c ; // to Closing
to 6 : when true , 0 ! Compensate_c ; // to Compensating
to 14 : when true , 1 ? Exit_p ; // to Invalid
to 4 : when true , 1 ? Completed_p ; // to Completed
to 14 : when true , 1 ? Fail_p ; // to Invalid
to 14 : when true , 1 ? CannotComplete_p ; // to Invalid
to 14 : when true , 1 ? Canceled_p ; // to Invalid
to 14 : when true , 1 ? Closed_p ; // to Invalid
to 14 : when true , 1 ? Compensated_p ; // to Invalid

state 8 :  // FailingCanceling
to 13 : when true , 0 ! Failed_c ; // to Ended
to 14 : when true , 1 ? Exit_p ; // to Invalid
to 14 : when true , 1 ? Completed_p ; // to Invalid
to 8 : when true , 1 ? Fail_p ; // to FailingCanceling
to 14 : when true , 1 ? CannotComplete_p ; // to Invalid
to 14 : when true , 1 ? Canceled_p ; // to Invalid
to 14 : when true , 1 ? Closed_p ; // to Invalid
to 14 : when true , 1 ? Compensated_p ; // to Invalid

state 7 :  // FailingActive
to 13 : when true , 0 ! Failed_c ; // to Ended
to 14 : when true , 1 ? Exit_p ; // to Invalid
to 14 : when true , 1 ? Completed_p ; // to Invalid
to 7 : when true , 1 ? Fail_p ; // to FailingActive
to 14 : when true , 1 ? CannotComplete_p ; // to Invalid
to 14 : when true , 1 ? Canceled_p ; // to Invalid
to 14 : when true , 1 ? Closed_p ; // to Invalid
to 14 : when true , 1 ? Compensated_p ; // to Invalid

state 14 : // Invalid


automaton PARTICIPANT :

initial : 0 // Active


state 9 :  // FailingCompensating
to 9 : when true , 1 ! Fail_p ; // to FailingCompensating
to 9 : when true , 0 ? Cancel_c ; // to FailingCompensating
to 9 : when true , 0 ? Complete_c ; // to FailingCompensating
to 13 : when true , 0 ? Close_c ; // to Invalid
to 29 : when true , 0 ? Compensate_c ; // to state29
to 12 : when true , 0 ? Failed_c ; // to Ended
to 13 : when true , 0 ? Exited_c ; // to Invalid
to 13 : when true , 0 ? NotCompleted_c ; // to Invalid

state 5 :  // Compensating
to 9 : when true , 1 ! Fail_p ; // to FailingCompensating
to 12 : when true , 1 ! Compensated_p ; // to Ended
to 5 : when true , 0 ? Cancel_c ; // to Compensating
to 5 : when true , 0 ? Complete_c ; // to Compensating
to 13 : when true , 0 ? Close_c ; // to Invalid
to 5 : when true , 0 ? Compensate_c ; // to Compensating
to 13 : when true , 0 ? Failed_c ; // to Invalid
to 13 : when true , 0 ? Exited_c ; // to Invalid
to 13 : when true , 0 ? NotCompleted_c ; // to Invalid

state 6 :  // FailingActive
to 6 : when true , 1 ! Fail_p ; // to FailingActive
to 15 : when true , 0 ? Cancel_c ; // to state15
to 22 : when true , 0 ? Complete_c ; // to state22
to 13 : when true , 0 ? Close_c ; // to Invalid
to 13 : when true , 0 ? Compensate_c ; // to Invalid
to 12 : when true , 0 ? Failed_c ; // to Ended
to 13 : when true , 0 ? Exited_c ; // to Invalid
to 13 : when true , 0 ? NotCompleted_c ; // to Invalid

state 23 :  // state23
to 7 : when true , 1 ! Fail_p ; // to FailingCanceling

state 3 :  // Completed
to 3 : when true , 1 ! Completed_p ; // to Completed
to 14 : when true , 0 ? Cancel_c ; // to state14
to 21 : when true , 0 ? Complete_c ; // to state21
to 4 : when true , 0 ? Close_c ; // to Closing
to 5 : when true , 0 ? Compensate_c ; // to Compensating
to 13 : when true , 0 ? Failed_c ; // to Invalid
to 13 : when true , 0 ? Exited_c ; // to Invalid
to 13 : when true , 0 ? NotCompleted_c ; // to Invalid

state 30 :  // state30
to 12 : when true , 1 ! Compensated_p ; // to Ended

state 0 :  // Active
to 11 : when true , 1 ! Exit_p ; // to Exiting
to 6 : when true , 1 ! Fail_p ; // to FailingActive
to 10 : when true , 1 ! CannotComplete_p ; // to NotCompleting
to 1 : when true , 0 ? Cancel_c ; // to Canceling
to 2 : when true , 0 ? Complete_c ; // to Completing
to 13 : when true , 0 ? Close_c ; // to Invalid
to 13 : when true , 0 ? Compensate_c ; // to Invalid
to 13 : when true , 0 ? Failed_c ; // to Invalid
to 13 : when true , 0 ? Exited_c ; // to Invalid
to 13 : when true , 0 ? NotCompleted_c ; // to Invalid

state 7 :  // FailingCanceling
to 7 : when true , 1 ! Fail_p ; // to FailingCanceling
to 16 : when true , 0 ? Cancel_c ; // to state16
to 23 : when true , 0 ? Complete_c ; // to state23
to 13 : when true , 0 ? Close_c ; // to Invalid
to 13 : when true , 0 ? Compensate_c ; // to Invalid
to 12 : when true , 0 ? Failed_c ; // to Ended
to 13 : when true , 0 ? Exited_c ; // to Invalid
to 13 : when true , 0 ? NotCompleted_c ; // to Invalid

state 27 :  // state27
to 12 : when true , 1 ! Fail_p ; // to Ended

state 19 :  // state19
to 11 : when true , 1 ! Exit_p ; // to Exiting

state 18 :  // state18
to 10 : when true , 1 ! CannotComplete_p ; // to NotCompleting

state 2 :  // Completing
to 11 : when true , 1 ! Exit_p ; // to Exiting
to 3 : when true , 1 ! Completed_p ; // to Completed
to 8 : when true , 1 ! Fail_p ; // to FailingCompleting
to 10 : when true , 1 ! CannotComplete_p ; // to NotCompleting
to 1 : when true , 0 ? Cancel_c ; // to Canceling
to 2 : when true , 0 ? Complete_c ; // to Completing
to 13 : when true , 0 ? Close_c ; // to Invalid
to 13 : when true , 0 ? Compensate_c ; // to Invalid
to 13 : when true , 0 ? Failed_c ; // to Invalid
to 13 : when true , 0 ? Exited_c ; // to Invalid
to 13 : when true , 0 ? NotCompleted_c ; // to Invalid

state 17 :  // state17
to 8 : when true , 1 ! Fail_p ; // to FailingCompleting

state 16 :  // state16
to 7 : when true , 1 ! Fail_p ; // to FailingCanceling

state 15 :  // state15
to 6 : when true , 1 ! Fail_p ; // to FailingActive

state 11 :  // Exiting
to 11 : when true , 1 ! Exit_p ; // to Exiting
to 19 : when true , 0 ? Cancel_c ; // to state19
to 26 : when true , 0 ? Complete_c ; // to state26
to 13 : when true , 0 ? Close_c ; // to Invalid
to 13 : when true , 0 ? Compensate_c ; // to Invalid
to 13 : when true , 0 ? Failed_c ; // to Invalid
to 12 : when true , 0 ? Exited_c ; // to Ended
to 13 : when true , 0 ? NotCompleted_c ; // to Invalid

state 4 :  // Closing
to 12 : when true , 1 ! Closed_p ; // to Ended
to 4 : when true , 0 ? Cancel_c ; // to Closing
to 4 : when true , 0 ? Complete_c ; // to Closing
to 4 : when true , 0 ? Close_c ; // to Closing
to 13 : when true , 0 ? Compensate_c ; // to Invalid
to 13 : when true , 0 ? Failed_c ; // to Invalid
to 13 : when true , 0 ? Exited_c ; // to Invalid
to 13 : when true , 0 ? NotCompleted_c ; // to Invalid

state 14 :  // state14
to 3 : when true , 1 ! Completed_p ; // to Completed

state 1 :  // Canceling
to 7 : when true , 1 ! Fail_p ; // to FailingCanceling
to 12 : when true , 1 ! Canceled_p ; // to Ended
to 1 : when true , 0 ? Cancel_c ; // to Canceling
to 1 : when true , 0 ? Complete_c ; // to Canceling
to 13 : when true , 0 ? Close_c ; // to Invalid
to 13 : when true , 0 ? Compensate_c ; // to Invalid
to 13 : when true , 0 ? Failed_c ; // to Invalid
to 13 : when true , 0 ? Exited_c ; // to Invalid
to 13 : when true , 0 ? NotCompleted_c ; // to Invalid

state 22 :  // state22
to 6 : when true , 1 ! Fail_p ; // to FailingActive

state 12 :  // Ended
to 12 : when true , 1 ! Canceled_p ; // to Ended
to 12 : when true , 1 ! Closed_p ; // to Ended
to 12 : when true , 1 ! Compensated_p ; // to Ended
to 20 : when true , 0 ? Cancel_c ; // to state20
to 27 : when true , 0 ? Complete_c ; // to state27
to 28 : when true , 0 ? Close_c ; // to state28
to 30 : when true , 0 ? Compensate_c ; // to state30
to 12 : when true , 0 ? Failed_c ; // to Ended
to 12 : when true , 0 ? Exited_c ; // to Ended
to 12 : when true , 0 ? NotCompleted_c ; // to Ended

state 20 :  // state20
to 12 : when true , 1 ! Canceled_p ; // to Ended

state 21 :  // state21
to 3 : when true , 1 ! Completed_p ; // to Completed

state 26 :  // state26
to 11 : when true , 1 ! Exit_p ; // to Exiting

state 8 :  // FailingCompleting
to 8 : when true , 1 ! Fail_p ; // to FailingCompleting
to 17 : when true , 0 ? Cancel_c ; // to state17
to 24 : when true , 0 ? Complete_c ; // to state24
to 13 : when true , 0 ? Close_c ; // to Invalid
to 13 : when true , 0 ? Compensate_c ; // to Invalid
to 12 : when true , 0 ? Failed_c ; // to Ended
to 13 : when true , 0 ? Exited_c ; // to Invalid
to 13 : when true , 0 ? NotCompleted_c ; // to Invalid

state 24 :  // state24
to 8 : when true , 1 ! Fail_p ; // to FailingCompleting

state 25 :  // state25
to 10 : when true , 1 ! CannotComplete_p ; // to NotCompleting

state 28 :  // state28
to 12 : when true , 1 ! Closed_p ; // to Ended

state 29 :  // state29
to 9 : when true , 1 ! Fail_p ; // to FailingCompensating

state 10 :  // NotCompleting
to 10 : when true , 1 ! CannotComplete_p ; // to NotCompleting
to 18 : when true , 0 ? Cancel_c ; // to state18
to 25 : when true , 0 ? Complete_c ; // to state25
to 13 : when true , 0 ? Close_c ; // to Invalid
to 13 : when true , 0 ? Compensate_c ; // to Invalid
to 13 : when true , 0 ? Failed_c ; // to Invalid
to 13 : when true , 0 ? Exited_c ; // to Invalid
to 12 : when true , 0 ? NotCompleted_c ; // to Ended

state 13 : // Invalid


bad_states :
(automaton COORDINATOR : in 14 : true)
(automaton PARTICIPANT : in 13 : true)

