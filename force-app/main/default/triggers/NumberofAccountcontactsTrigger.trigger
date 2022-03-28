trigger NumberofAccountcontactsTrigger on Account(after insert, after update) {
  switch on Trigger.operationType {
    when AFTER_INSERT {
      NumberofAccountcontactsTriggerHandler.afterInsertMethod(Trigger.new);
    }
    when AFTER_UPDATE {
      NumberofAccountcontactsTriggerHandler.afterUpdateMethod(
        Trigger.newMap,
        Trigger.oldMap
      );
    }
  }
}
