public with sharing class SecurityDemoOpportunity {
  @AuraEnabled
  public static Opportunity getOppRecords(String accName) {
    List<Opportunity> oppRecords = [
      SELECT ID, name, StageName, Credit_Card_Number__c
      FROM Opportunity
      WHERE account.name = :accName
      LIMIT 2
    ];
    SobjectAccessDecision securityDecision = Security.stripInaccessible(
      AccessType.READABLE,
      oppRecords
    );
    Opportunity op = (Opportunity) securityDecision.getRecords()[0];

    return op;

    //   String Soql = 'Select ID,name,Stagename';
    //   if (
    //     Schema.sObjectType.Opportunity.fields.Credit_Card_Number__c.isAccessible()
    //   ) {
    //     soql = soql + ',Credit_Card_Number__c';
    //   }
    //   soql += ' FROM Opportunity';
    //   soql += ' WHERE account.name = :accName';

    //   return Database.query(soql);
    // }
  }
}