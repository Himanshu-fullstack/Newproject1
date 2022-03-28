global class UpdateRecords implements Database.Batchable<sObject> {
  global Database.QueryLocator start(Database.BatchableContext BC) {
    return Database.getQueryLocator('Select ID,description from account');
  }

  global void execute(Database.BatchableContext BC, List<account> acc) {
    for (Account accnew : acc) {
        accnew.description = 'Kindly update the desciption';
      }
    
    update acc;
  }

  global void finish(Database.BatchableContext BC) {
    System.debug('UpdateRecords is Done');
  }
}