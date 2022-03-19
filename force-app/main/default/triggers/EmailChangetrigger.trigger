trigger EmailChangetrigger on Kuchloo_Object__c(before update) {
  if (Trigger.isUpdate && Trigger.isBefore) {
    EmailChangeTriggerHandler.emailChangeMethod(Trigger.new, Trigger.oldMap);
  }
}