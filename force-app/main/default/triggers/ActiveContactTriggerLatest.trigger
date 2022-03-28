trigger ActiveContactTriggerLatest on contact(after insert) {
  ActiveContactTriggersLatest.AfterInsertMethod(Trigger.new);

}
