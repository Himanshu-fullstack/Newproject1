trigger DuplicateContactTrigger on Contact(
  before insert,
  before update,
  after undelete
) {
  if (Trigger.isInsert && Trigger.isBefore) {
    EmailChangeTriggerHandler.emailChangeMethod(Trigger.new);
  }
  if (Trigger.isUpdate && Trigger.isBefore) {
    EmailChangeTriggerHandler.emailUpdateMethod(Trigger.new, Trigger.oldMap);
  }
  if (Trigger.isUndelete && Trigger.isAfter) {
    EmailChangeTriggerHandler.undeletemethod(Trigger.new);
  }

}