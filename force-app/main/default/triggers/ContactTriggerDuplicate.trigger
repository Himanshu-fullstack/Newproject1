trigger ContactTriggerDuplicate on Contact(before insert, before update) {
  if (Trigger.isInsert && Trigger.isBefore) {
    ContactTriggerDuplicatelatest.beforeInsertMethod(Trigger.new);
  }
  if (Trigger.isUpdate && Trigger.isBefore) {
    ContactTriggerDuplicatelatest.beforeUpdateMethod(
      Trigger.newMap,
      Trigger.oldmap
    );
  }

}
