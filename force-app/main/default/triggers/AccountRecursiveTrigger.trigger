trigger AccountRecursiveTrigger on account(after insert) {
  List<account> acclist = new List<account>();

  //if (AccountRecursiveTriggerHandler.isFirstTime == true) {
  for (account acc : Trigger.new) {
    account acc1 = new account(Name = 'Hello1');
    acclist.add(acc1);
    //AccountRecursiveTriggerHandler.isFirstTime = false;
  }
  insert acclist;
  // }
}