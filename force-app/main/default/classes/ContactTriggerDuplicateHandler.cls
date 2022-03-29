public with sharing class ContactTriggerDuplicateHandler {
  public static void BeforeInsert(List<Contact> contList) {
    List<Contact> needtoBeChecked = new List<Contact>();

    for (Contact each : contList) {
      if (each.LastName != null && each.Email != null) {
        needtoBeChecked.add(each);
      }
    }

    if (!needtoBeChecked.IsEmpty()) {
      contactDuplicateMethod(needtoBeChecked);
    }
  }

  public static void BeforeUpdate(
    Map<Id, Contact> NewMap,//Ashu,ashu@gmail.com---{Ashu,ashu@gmail.com}
    Map<Id, Contact> oldMap//himanshu,himanshuinlko@gmail.com
  ) {
    List<Contact> needtoBeChecked = new List<Contact>();//empty

    for (Contact each : NewMap.Values()) {
      if (
        each.LastName != null &&
        each.Email != null &&
        (each.LastName != oldMap.get(each.Id).LastName ||
        each.email != oldmap.get(each.id).email)
      ) {
        needtoBeChecked.add(each);//Ashu,ashu@gmail.com
      }
    }

    if (!needtoBeChecked.IsEmpty()) {
      contactDuplicateMethod(needtoBeChecked);
    }
  }

  public static void contactDuplicateMethod(List<Contact> contList) {//Ashu,ashu@gmail.com
    Set<String> setOfLastName = new Set<String>();
    Set<String> setOfEmail = new Set<String>();

    for (Contact each : contList) {
      setOfLastName.add(each.LastName);
      setOfEmail.add(each.Email);
    }
    List<contact> contListAlreadyInserted = [
      SELECT id, email, Lastname
      FROM contact
      WHERE lastName IN :setOfLastName AND email IN :setOfEmail//Ashu,ashu@gmail.com
    ];
    Set<String> setOfLastNameAndEmail = new Set<String>();

    for (contact con : contListAlreadyInserted) {
      setOfLastNameAndEmail.add(con.LastName + con.email);//Ashuashu@gmail.com
    }

    for (contact con : contList) {
      if (setOfLastNameAndEmail.contains(con.LastName + con.email)) {
        con.adderror(
          'Cannot insert a new record with same email id and lastname'
        );
      } else {
        setOfLastNameAndEmail.add(con.LastName + con.email);
      }
    }
  }
}