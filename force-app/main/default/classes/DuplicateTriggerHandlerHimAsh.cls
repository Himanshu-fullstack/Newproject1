public with sharing class DuplicateTriggerHandlerHimAsh {
  public static void beforeInsertMethod(List<Contact> contactListRecord) {
    List<CONTACT> toBeChecked = new List<Contact>();

    for (contact each : contactListRecord) {
      if (each.LastName != null && each.email != null) {
        toBeChecked.add(each);
      }
    }

    if(!toBeChecked.isEmpty()){
      duplicateMethod(toBeChecked);
    }
  }

  public static void  duplicateMethod(List<Contact> newList){

    List<Contact> AlreadyPresent = [
      SELECT ID, email, Lastname
      FROM contact
      WHERE email != NULL AND lastname != NULL
    ];

    SET<String> emailALreadyPresent = new Set<String>();
    SET<String> lastNameAlreadyPresent = new Set<String>();

    for (contact each : AlreadyPresent) {
      emailALreadyPresent.add(each.Email);
      lastNameAlreadyPresent.add(each.LastName);
    }
    for (contact each : newList) {
      if (
        emailALreadyPresent.contains(each.email) &&
        lastNameAlreadyPresent.contains(each.Lastname)
      ) {
        each.adderror('Duplicate Not Allowed here');
      } else {
        emailALreadyPresent.add(each.email);
        lastNameAlreadyPresent.add(each.Lastname);
      }
    }
  }

  public static void beforeUpdatemethod(Map<ID, contact> newMap,Map<ID, contact> oldMap) {
    SET<STRING> emailnew=new SET<String>();
    SET<STRING> lastNamenew = new SET<String>();

    SET<ID> tobechecked=new Set<ID>();
    for(Contact each:newMap.values()){
      if(each.email !=oldMap.get(each.id).email || each.Lastname !=oldMap.get(each.id).lastName){
        tobechecked.add(each.ID);
        emailnew.add(each.email);
        lastNamenew.add(each.email);
      }
    }
    SET<STRING> emailnew=new SET<String>();
    SET<STRING> lastNamenew = new SET<String>();
    

      List<Contact> finalContactList = [Select ID,name,Lastname from contact where ID in :tobechecked
                                        ];
      
    }
  }
}