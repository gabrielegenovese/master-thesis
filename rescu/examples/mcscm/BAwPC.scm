/* -----------------------------------------------------
   Business Agreement with Participant Completion
   
   as formalized by A.P. Ravn, J. Srba, and S. Vighio
   in their TACAS 2011 paper "Modelling and Verification
   of Web Services Business Activity Protocols"

   automatically generated from their XML file
   ---------------------------------------------------- */


scm BAwPC :

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




automaton PARTICIPANT :

initial : 0 // Active


state 19 :  // state19
to 7 : when true , 1 ! Fail_p ; // to FailingCompensating

state 7 :  // FailingCompensating
to 7 : when true , 1 ! Fail_p ; // to FailingCompensating
to 7 : when true , 0 ? Cancel_c ; // to FailingCompensating
to 11 : when true , 0 ? Close_c ; // to Invalid
to 19 : when true , 0 ? Compensate_c ; // to state19
to 10 : when true , 0 ? Failed_c ; // to Ended
to 11 : when true , 0 ? Exited_c ; // to Invalid
to 11 : when true , 0 ? NotCompleted_c ; // to Invalid

state 10 :  // Ended
to 10 : when true , 1 ! Canceled_p ; // to Ended
to 10 : when true , 1 ! Closed_p ; // to Ended
to 10 : when true , 1 ! Compensated_p ; // to Ended
to 17 : when true , 0 ? Cancel_c ; // to state17
to 18 : when true , 0 ? Close_c ; // to state18
to 20 : when true , 0 ? Compensate_c ; // to state20
to 10 : when true , 0 ? Failed_c ; // to Ended
to 10 : when true , 0 ? Exited_c ; // to Ended
to 10 : when true , 0 ? NotCompleted_c ; // to Ended

state 13 :  // state13
to 5 : when true , 1 ! Fail_p ; // to FailingActive

state 12 :  // state12
to 2 : when true , 1 ! Completed_p ; // to Completed

state 2 :  // Completed
to 2 : when true , 1 ! Completed_p ; // to Completed
to 12 : when true , 0 ? Cancel_c ; // to state12
to 3 : when true , 0 ? Close_c ; // to Closing
to 4 : when true , 0 ? Compensate_c ; // to Compensating
to 11 : when true , 0 ? Failed_c ; // to Invalid
to 11 : when true , 0 ? Exited_c ; // to Invalid
to 11 : when true , 0 ? NotCompleted_c ; // to Invalid

state 1 :  // Canceling
to 6 : when true , 1 ! Fail_p ; // to FailingCanceling
to 10 : when true , 1 ! Canceled_p ; // to Ended
to 1 : when true , 0 ? Cancel_c ; // to Canceling
to 11 : when true , 0 ? Close_c ; // to Invalid
to 11 : when true , 0 ? Compensate_c ; // to Invalid
to 11 : when true , 0 ? Failed_c ; // to Invalid
to 11 : when true , 0 ? Exited_c ; // to Invalid
to 11 : when true , 0 ? NotCompleted_c ; // to Invalid

state 17 :  // state17
to 10 : when true , 1 ! Canceled_p ; // to Ended

state 16 :  // state16
to 9 : when true , 1 ! Exit_p ; // to Exiting

state 15 :  // state15
to 8 : when true , 1 ! CannotComplete_p ; // to NotCompleting

state 9 :  // Exiting
to 9 : when true , 1 ! Exit_p ; // to Exiting
to 16 : when true , 0 ? Cancel_c ; // to state16
to 11 : when true , 0 ? Close_c ; // to Invalid
to 11 : when true , 0 ? Compensate_c ; // to Invalid
to 11 : when true , 0 ? Failed_c ; // to Invalid
to 10 : when true , 0 ? Exited_c ; // to Ended
to 11 : when true , 0 ? NotCompleted_c ; // to Invalid

state 4 :  // Compensating
to 7 : when true , 1 ! Fail_p ; // to FailingCompensating
to 10 : when true , 1 ! Compensated_p ; // to Ended
to 4 : when true , 0 ? Cancel_c ; // to Compensating
to 11 : when true , 0 ? Close_c ; // to Invalid
to 4 : when true , 0 ? Compensate_c ; // to Compensating
to 11 : when true , 0 ? Failed_c ; // to Invalid
to 11 : when true , 0 ? Exited_c ; // to Invalid
to 11 : when true , 0 ? NotCompleted_c ; // to Invalid

state 20 :  // state20
to 10 : when true , 1 ! Compensated_p ; // to Ended

state 18 :  // state18
to 10 : when true , 1 ! Closed_p ; // to Ended

state 8 :  // NotCompleting
to 8 : when true , 1 ! CannotComplete_p ; // to NotCompleting
to 15 : when true , 0 ? Cancel_c ; // to state15
to 11 : when true , 0 ? Close_c ; // to Invalid
to 11 : when true , 0 ? Compensate_c ; // to Invalid
to 11 : when true , 0 ? Failed_c ; // to Invalid
to 11 : when true , 0 ? Exited_c ; // to Invalid
to 10 : when true , 0 ? NotCompleted_c ; // to Ended

state 0 :  // Active
to 9 : when true , 1 ! Exit_p ; // to Exiting
to 2 : when true , 1 ! Completed_p ; // to Completed
to 5 : when true , 1 ! Fail_p ; // to FailingActive
to 8 : when true , 1 ! CannotComplete_p ; // to NotCompleting
to 1 : when true , 0 ? Cancel_c ; // to Canceling
to 11 : when true , 0 ? Close_c ; // to Invalid
to 11 : when true , 0 ? Compensate_c ; // to Invalid
to 11 : when true , 0 ? Failed_c ; // to Invalid
to 11 : when true , 0 ? Exited_c ; // to Invalid
to 11 : when true , 0 ? NotCompleted_c ; // to Invalid

state 3 :  // Closing
to 10 : when true , 1 ! Closed_p ; // to Ended
to 3 : when true , 0 ? Cancel_c ; // to Closing
to 3 : when true , 0 ? Close_c ; // to Closing
to 11 : when true , 0 ? Compensate_c ; // to Invalid
to 11 : when true , 0 ? Failed_c ; // to Invalid
to 11 : when true , 0 ? Exited_c ; // to Invalid
to 11 : when true , 0 ? NotCompleted_c ; // to Invalid

state 14 :  // state14
to 6 : when true , 1 ! Fail_p ; // to FailingCanceling

state 6 :  // FailingCanceling
to 6 : when true , 1 ! Fail_p ; // to FailingCanceling
to 14 : when true , 0 ? Cancel_c ; // to state14
to 11 : when true , 0 ? Close_c ; // to Invalid
to 11 : when true , 0 ? Compensate_c ; // to Invalid
to 10 : when true , 0 ? Failed_c ; // to Ended
to 11 : when true , 0 ? Exited_c ; // to Invalid
to 11 : when true , 0 ? NotCompleted_c ; // to Invalid

state 5 :  // FailingActive
to 5 : when true , 1 ! Fail_p ; // to FailingActive
to 13 : when true , 0 ? Cancel_c ; // to state13
to 11 : when true , 0 ? Close_c ; // to Invalid
to 11 : when true , 0 ? Compensate_c ; // to Invalid
to 10 : when true , 0 ? Failed_c ; // to Ended
to 11 : when true , 0 ? Exited_c ; // to Invalid
to 11 : when true , 0 ? NotCompleted_c ; // to Invalid

state 11 : // Invalid


automaton COORDINATOR :

initial : 0 // Active


state 7 :  // FailingCompensating
to 10 : when true , 0 ! Failed_c ; // to Ended
to 11 : when true , 1 ? Exit_p ; // to Invalid
to 7 : when true , 1 ? Completed_p ; // to FailingCompensating
to 7 : when true , 1 ? Fail_p ; // to FailingCompensating
to 11 : when true , 1 ? CannotComplete_p ; // to Invalid
to 11 : when true , 1 ? Canceled_p ; // to Invalid
to 11 : when true , 1 ? Closed_p ; // to Invalid
to 11 : when true , 1 ? Compensated_p ; // to Invalid

state 10 :  // Ended
to 10 : when true , 0 ! Failed_c ; // to Ended
to 10 : when true , 0 ! Exited_c ; // to Ended
to 10 : when true , 0 ! NotCompleted_c ; // to Ended
to 12 : when true , 1 ? Exit_p ; // to state12
to 10 : when true , 1 ? Completed_p ; // to Ended
to 15 : when true , 1 ? Fail_p ; // to state15
to 16 : when true , 1 ? CannotComplete_p ; // to state16
to 10 : when true , 1 ? Canceled_p ; // to Ended
to 10 : when true , 1 ? Closed_p ; // to Ended
to 10 : when true , 1 ? Compensated_p ; // to Ended

state 13 :  // state13
to 3 : when true , 0 ! Close_c ; // to Closing

state 12 :  // state12
to 10 : when true , 0 ! Exited_c ; // to Ended

state 2 :  // Completed
to 3 : when true , 0 ! Close_c ; // to Closing
to 4 : when true , 0 ! Compensate_c ; // to Compensating
to 11 : when true , 1 ? Exit_p ; // to Invalid
to 2 : when true , 1 ? Completed_p ; // to Completed
to 11 : when true , 1 ? Fail_p ; // to Invalid
to 11 : when true , 1 ? CannotComplete_p ; // to Invalid
to 11 : when true , 1 ? Canceled_p ; // to Invalid
to 11 : when true , 1 ? Closed_p ; // to Invalid
to 11 : when true , 1 ? Compensated_p ; // to Invalid

state 1 :  // Canceling
to 1 : when true , 0 ! Cancel_c ; // to Canceling
to 9 : when true , 1 ? Exit_p ; // to Exiting
to 2 : when true , 1 ? Completed_p ; // to Completed
to 6 : when true , 1 ? Fail_p ; // to FailingCanceling
to 8 : when true , 1 ? CannotComplete_p ; // to NotCompleting
to 10 : when true , 1 ? Canceled_p ; // to Ended
to 11 : when true , 1 ? Closed_p ; // to Invalid
to 11 : when true , 1 ? Compensated_p ; // to Invalid

state 16 :  // state16
to 10 : when true , 0 ! NotCompleted_c ; // to Ended

state 15 :  // state15
to 10 : when true , 0 ! Failed_c ; // to Ended

state 9 :  // Exiting
to 10 : when true , 0 ! Exited_c ; // to Ended
to 9 : when true , 1 ? Exit_p ; // to Exiting
to 11 : when true , 1 ? Completed_p ; // to Invalid
to 11 : when true , 1 ? Fail_p ; // to Invalid
to 11 : when true , 1 ? CannotComplete_p ; // to Invalid
to 11 : when true , 1 ? Canceled_p ; // to Invalid
to 11 : when true , 1 ? Closed_p ; // to Invalid
to 11 : when true , 1 ? Compensated_p ; // to Invalid

state 4 :  // Compensating
to 4 : when true , 0 ! Compensate_c ; // to Compensating
to 11 : when true , 1 ? Exit_p ; // to Invalid
to 14 : when true , 1 ? Completed_p ; // to state14
to 7 : when true , 1 ? Fail_p ; // to FailingCompensating
to 11 : when true , 1 ? CannotComplete_p ; // to Invalid
to 11 : when true , 1 ? Canceled_p ; // to Invalid
to 11 : when true , 1 ? Closed_p ; // to Invalid
to 10 : when true , 1 ? Compensated_p ; // to Ended

state 8 :  // NotCompleting
to 10 : when true , 0 ! NotCompleted_c ; // to Ended
to 11 : when true , 1 ? Exit_p ; // to Invalid
to 11 : when true , 1 ? Completed_p ; // to Invalid
to 11 : when true , 1 ? Fail_p ; // to Invalid
to 8 : when true , 1 ? CannotComplete_p ; // to NotCompleting
to 11 : when true , 1 ? Canceled_p ; // to Invalid
to 11 : when true , 1 ? Closed_p ; // to Invalid
to 11 : when true , 1 ? Compensated_p ; // to Invalid

state 0 :  // Active
to 1 : when true , 0 ! Cancel_c ; // to Canceling
to 9 : when true , 1 ? Exit_p ; // to Exiting
to 2 : when true , 1 ? Completed_p ; // to Completed
to 5 : when true , 1 ? Fail_p ; // to FailingActive
to 8 : when true , 1 ? CannotComplete_p ; // to NotCompleting
to 11 : when true , 1 ? Canceled_p ; // to Invalid
to 11 : when true , 1 ? Closed_p ; // to Invalid
to 11 : when true , 1 ? Compensated_p ; // to Invalid

state 3 :  // Closing
to 3 : when true , 0 ! Close_c ; // to Closing
to 11 : when true , 1 ? Exit_p ; // to Invalid
to 13 : when true , 1 ? Completed_p ; // to state13
to 11 : when true , 1 ? Fail_p ; // to Invalid
to 11 : when true , 1 ? CannotComplete_p ; // to Invalid
to 11 : when true , 1 ? Canceled_p ; // to Invalid
to 10 : when true , 1 ? Closed_p ; // to Ended
to 11 : when true , 1 ? Compensated_p ; // to Invalid

state 14 :  // state14
to 4 : when true , 0 ! Compensate_c ; // to Compensating

state 6 :  // FailingCanceling
to 10 : when true , 0 ! Failed_c ; // to Ended
to 11 : when true , 1 ? Exit_p ; // to Invalid
to 11 : when true , 1 ? Completed_p ; // to Invalid
to 6 : when true , 1 ? Fail_p ; // to FailingCanceling
to 11 : when true , 1 ? CannotComplete_p ; // to Invalid
to 11 : when true , 1 ? Canceled_p ; // to Invalid
to 11 : when true , 1 ? Closed_p ; // to Invalid
to 11 : when true , 1 ? Compensated_p ; // to Invalid

state 5 :  // FailingActive
to 10 : when true , 0 ! Failed_c ; // to Ended
to 11 : when true , 1 ? Exit_p ; // to Invalid
to 11 : when true , 1 ? Completed_p ; // to Invalid
to 5 : when true , 1 ? Fail_p ; // to FailingActive
to 11 : when true , 1 ? CannotComplete_p ; // to Invalid
to 11 : when true , 1 ? Canceled_p ; // to Invalid
to 11 : when true , 1 ? Closed_p ; // to Invalid
to 11 : when true , 1 ? Compensated_p ; // to Invalid

state 11 : // Invalid


bad_states :
(automaton PARTICIPANT : in 11 : true)
(automaton COORDINATOR : in 11 : true)

