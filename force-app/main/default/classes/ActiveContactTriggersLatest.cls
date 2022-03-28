public with sharing class ActiveContactTriggersLatest {
  public static void AfterInsertMethod(List<Contact> Contacts) {
    Set<ID> setOfRecords = new Set<ID>();
    for (contact each : Contacts) {
      if (contact.accountID != null) {
        setOfRecords.add(each.ID);
      }
    }

    List<AggregateResult> result = [
      SELECT Count(Id) total, AccountId
      FROM Contact
      WHERE AccountId != NULL AND Active_Contact__c = TRUE
      GROUP BY AccountId
    ];

    List<Account> acc1 = new List<Account>();
    for (AggregateResult aggr1 : result) {
      String idaggr = String.valueOf(aggr1.get('AccountId'));
      Integer toaggr = Integer.valueOf(aggr1.get('total'));
      Account acc = new Account(id = idaggr, Active_Contact__c = toaggr);
      acc1.add(acc);
    }
    update acc1;
  }

  public static void AfterUpdateMethod(
    Map<ID, Contact> newMap,
    Map<ID, Contact> oldMap
  ) {
    List<contact> changedlist = new List<contact>();
    for (Contact record : newMap.values()) {
      if (record.Active__c != oldMap.get(record.id).Active__c) {
        changedlist.add(record);
      }
    }
  }
}
