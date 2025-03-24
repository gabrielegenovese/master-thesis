
/*---------------------------------------------------------------------
Example translated from a fsm file from kmc tool. Link to the original:
https://github.com/julien-lange/kmc/tree/main/tests/benchmarks/Logistic.txt
---------------------------------------------------------------------*/

scm Logistic :

nb_channels = 6 ;
parameters :
real FinalizedPOandDeliverySchedule ;
real AcceptPOandDeliverySchedule ;
real POandDeliveryScheduleMods ;
real UpdatePOandDeliverySchedule ;
real ConfirmationofDeliverySchedule ;
real ShippingDone ;
real DeliverItem ;
real ProvideItem ;
real DeliverCheckPointRequest ;
real OrderDeliveryVariations ;
real PlannedOrderVariations ;

automaton A3 :

initial : 0


state 1 :
to 0 : when true, 3 ! DeliverItem ;

state 0 :
to 2 : when true, 2 ? ShippingDone ;
to 1 : when true, 2 ? ProvideItem ;

state 2 :



automaton A2 :

initial : 0


state 1 :
to 0 : when true, 5 ! DeliverItem ;

state 0 :
to 2 : when true, 4 ? ConfirmationofDeliverySchedule ;
to 1 : when true, 4 ? ProvideItem ;

state 2 :



automaton A1 :

initial : 0


state 1 :
to 2 : when true, 1 ! OrderDeliveryVariations ;

state 0 :
to 1 : when true, 0 ? PlannedOrderVariations ;

state 4 :
to 5 : when true, 1 ! POandDeliveryScheduleMods ;

state 5 :
to 6 : when true, 1 ! AcceptPOandDeliverySchedule ;

state 3 :
to 4 : when true, 0 ? UpdatePOandDeliverySchedule ;

state 7 :

state 2 :
to 3 : when true, 1 ! DeliverCheckPointRequest ;

state 6 :
to 7 : when true, 0 ? FinalizedPOandDeliverySchedule ;



automaton A0 :

initial : 0


state 1 :
to 2 : when true, 1 ? OrderDeliveryVariations ;

state 10 :
to 11 : when true, 0 ! FinalizedPOandDeliverySchedule ;

state 0 :
to 1 : when true, 0 ! PlannedOrderVariations ;

state 11 :

state 9 :
to 10 : when true, 1 ? AcceptPOandDeliverySchedule ;

state 4 :
to 3 : when true, 3 ? DeliverItem ;

state 5 :
to 7 : when true, 4 ! ConfirmationofDeliverySchedule ;
to 6 : when true, 4 ! ProvideItem ;

state 3 :
to 5 : when true, 2 ! ShippingDone ;
to 4 : when true, 2 ! ProvideItem ;

state 7 :
to 8 : when true, 0 ! UpdatePOandDeliverySchedule ;

state 8 :
to 9 : when true, 1 ? POandDeliveryScheduleMods ;

state 2 :
to 3 : when true, 1 ? DeliverCheckPointRequest ;

state 6 :
to 5 : when true, 5 ? DeliverItem ;


