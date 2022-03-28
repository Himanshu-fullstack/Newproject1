public with sharing class NumberofAccountcontactsTriggerHandler {
  public static void afterInsertMethod(List<Account> accountRecordNew) {
    List<contact> connew = new List<Contact>();

    for (Account accnew : accountRecordNew) {
      if (accnew.Numberofcontacts__c != null) {
        Integer acc = Integer.valueof(accnew.Numberofcontacts__c);
        for (Integer i = 1; i <= acc; i++) {
          contact con = new contact(
            LastName = accnew.name + i,
            accountid = accnew.id
          );
          connew.add(con);
        }
      }
      insert connew;
    }
  }

  public static void afterUpdateMethod(
    Map<ID, Account> newMap,
    Map<ID, Account> oldMap
  ) {
    Set<Id> needToBeChecked = new Set<Id>();
    Map<Id, Integer> mapofdiffernceGreater = new Map<Id, Integer>();
    Map<Id, Integer> mapofdiffernceLess = new Map<Id, Integer>();
    for (Account accrecordNew : newMap.values()) {
      if (
        accrecordNew.Numberofcontacts__c != null &&
        accrecordNew.Numberofcontacts__c !=
        oldMap.get(accrecordNew.ID).Numberofcontacts__c
      ) {
        needToBeChecked.add(accrecordNew.Id);
        if (
          accrecordNew.Numberofcontacts__c -
          oldMap.get(accrecordNew.ID).Numberofcontacts__c > 0
        ) {
          mapofdiffernceGreater.put(
            accrecordNew.Id,
            Integer.valueof(
              accrecordNew.Numberofcontacts__c -
              oldMap.get(accrecordNew.ID).Numberofcontacts__c
            )
          );
        } else {
          mapofdiffernceLess.put(
            accrecordNew.Id,
            Integer.valueof(
              oldMap.get(accrecordNew.ID).Numberofcontacts__c -
              accrecordNew.Numberofcontacts__c
            )
          );
        }
      }
    }

    List<Account> accNewList = [
      SELECT
        ID,
        Name,
        Numberofcontacts__c,
        (SELECT Id, AccountId, Lastname FROM Contacts)
      FROM Account
      WHERE ID IN :needToBeChecked
    ];

    List<Contact> contactToBeDeleted = new List<Contact>();
    List<Contact> contactToBeInserted = new List<Contact>();

    for (Id each : mapofdiffernceGreater.keySet()) {
      for (integer i = 0; i < mapofdiffernceGreater.get(each); i++) {
        contact condel = new contact(accountid = each, LastName = 'Con' + i);
        contactToBeInserted.add(condel);
      }
    }

    for (Account each : accNewList) {
      if (mapofdiffernceLess.containsKey(each.id)) {
        Integer i = 0;
        for (Contact eachCon : each.Contacts) {
          if (i < mapofdiffernceLess.get(each.id)) {
            contactToBeDeleted.add(eachcon);
          } else {
            break;
          }
          i++;
        }
      }
    }

    insert contactToBeInserted;

    delete contactToBeDeleted;
  }
}
