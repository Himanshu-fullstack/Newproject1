public with sharing class SecurityDemoOpportunity {
  @AuraEnabled
  public static List<Opportunity> getOppRecords(String accName) {
    List<Opportunity> oppRecords = [
      SELECT ID, name, StageName, Credit_Card_Number__c
      FROM Opportunity
      WHERE account.name = :accName
      WITH SECURITY_ENFORCED
    ];

    return oppRecords;

    // String Soql = 'Select ID,name,Stagename';
    // if (
    //   Schema.sObjectType.Opportunity.fields.Credit_Card_Number__c.isAccessible()
    // ) {
    //   soql = soql + ',Credit_Card_Number__c';
    // }
    // soql += ' FROM Opportunity';
    // soql += ' WHERE account.name = :accName';
    // System.debug(Database.Query(soql));
    // return Database.Query(soql);
  }
}
