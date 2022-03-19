public with sharing class EmailChangeTriggerHandler {
  public static void emailChangeMethod(List<Contact> con) {
    List<Contact> oldEmail = [
      SELECT id, email, name
      FROM contact
      WHERE email != NULL
    ];
    for (contact newcon : con) {
      for (contact conEmail : oldEmail) {
        if (conEmail.email == newcon.email) {
          system.debug(newcon.name);
          newcon.adderror(
            'Record with same email id already exists with name:' +
            conEmail.name
          );
        }
      }
    }
  }
  public static void emailUpdateMethod(
    List<Contact> con,
    Map<ID, Contact> oldRecordMap
  ) {
    List<Contact> oldEmail = [
      SELECT id, email
      FROM contact
      WHERE email != NULL
    ];
    for (Contact rec : con) {
      contact oldrec = oldRecordMap.get(rec.id);
      for (Contact old : oldEmail) {
        if (oldrec.email != rec.email && rec.email == old.email) {
          rec.adderror('Email cannot be changed once entered');
        }
      }
    }
  }

  public static void undeletemethod(List<Contact> con) {
    List<Contact> oldEmail = [
      SELECT id, email, name
      FROM contact
      WHERE email != NULL AND IsDeleted = FALSE
      ALL ROWS
    ];
    for (contact newcon : con) {
      for (contact conEmail : oldEmail) {
        if (conEmail.email == newcon.email) {
          system.debug(newcon.name);
          newcon.adderror(
            'Record with same email id already exists with name:'
          );
        }
      }
    }
  }
}