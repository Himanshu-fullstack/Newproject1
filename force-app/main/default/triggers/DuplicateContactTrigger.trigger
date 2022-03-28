trigger DuplicateContactTrigger on Contact(before insert,before Update) {
  switch on Trigger.operationType {
    when BEFORE_INSERT {
      DuplicateTriggerHandlerHimAsh.beforeInsertMethod(Trigger.new);
    }
    when BEFORE_UPDATE {
      DuplicateTriggerHandlerHimAsh.beforeUpdatemethod(Trigger.newMap,Trigger.oldMap);
    }
  }
}
// ) {
//   if (Trigger.isInsert && Trigger.isBefore) {
//     EmailChangeTriggerHandler.emailChangeMethod(Trigger.new);
//   }
//   if (Trigger.isUpdate && Trigger.isBefore) {
//     EmailChangeTriggerHandler.emailUpdateMethod(Trigger.new, Trigger.oldMap);
//   }
//   if (Trigger.isUndelete && Trigger.isAfter) {
//     EmailChangeTriggerHandler.undeletemethod(Trigger.new);
//   }

// }
