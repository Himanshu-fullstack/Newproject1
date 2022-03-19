trigger StudentTrigger on Student_Test__c (Before Insert) {
    if(Trigger.isInsert == true && Trigger.isBefore == true){
        StudentTriggerHandler.StudentTriggerHandlerMethod(trigger.new);
    }

}