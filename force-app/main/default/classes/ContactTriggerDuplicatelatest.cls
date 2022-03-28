public with sharing class ContactTriggerDuplicatelatest {
  public static void beforeInsertMethod(List<Contact> contactRecordNew) {
    List<contact> Needstobechecked = new List<contact>();

    for (contact each : contactRecordNew) {
      if (each.Email != null && each.LastName != null) {
        Needstobechecked.add(each);
      }

      if (!Needstobechecked.isEmpty()) {
        DuplicateMethod(Needstobechecked);
      }
    }
  }

  public static void DuplicateMethod(List<Contact> duplicateContact) {
    Set<String> LastNameSet = new Set<String>();
    Set<String> EmailSeT = new Set<String>();

    for (Contact con : duplicateContact) {
      LastNameSet.add(con.LastName);
      EmailSeT.add(con.Email);
    }

    List<Contact> contactListfinal = [
      SELECT id, LastName, Email
      FROM Contact
      WHERE Lastname IN :LastNameSet AND Email IN :EmailSeT
    ];

    for (Contact con : duplicateContact) {
      if (
        LastNameSet.contains(con.LastName) && (EmailSeT.contains(con.Email))
      ) {
        con.addError('Duplicate Record Already Exists');
      } else {
        LastNameSet.add(con.LastName);
        EmailSeT.add(con.Email);
      }
    }
  }

  public static void beforeUpdateMethod(
    Map<ID, Contact> NewMap,
    Map<ID, Contact> OldMap
  ) {
    for (Contact each : NewMap.values()) {
      if (
        each.Email == OldMap.get(each.ID).Email &&
        each.LastName == OldMap.get(each.ID).LastName
      ) {
        each.adderror('Cannot Update record');
      }
    }
  }
}
