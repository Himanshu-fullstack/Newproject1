trigger ComputerTrigger on Computer__c (before insert, before update) {
    if(trigger.isInsert && trigger.isBefore){
        ComputerTriggerHandler.ComputerTriggerHandlerMethod(trigger.new);

    }
    if(trigger.isUpdate && trigger.isBefore){
        ComputerTriggerHandler.ComputerTriggerHandlerMethod(trigger.new);

    }

}