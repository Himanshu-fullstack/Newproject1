trigger blackListedTrigger on Student__c (After insert, Before Insert) {

    switch on Trigger.Operationtype{
        when After_Insert{
            blackListedTriggerHandlerClass.blackListedTriggerHandlerMethod(trigger.new);
        }
        when Before_Insert{
        blackListedTriggerHandlerClass.blackListedTriggerHandlerMethod1(trigger.new);
   

}
    }
}