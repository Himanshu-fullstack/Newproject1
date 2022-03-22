public without sharing class SecurityDemoOpportunity {
  @AuraEnabled
  public static List<Opportunity> getOppRecords(String accName) {
    List<Opportunity> oppRecords = [
      SELECT ID, name, StageName, Credit_Card_Number__c, Name_on_Credit_Card__c
      FROM Opportunity
      WHERE account.name = :accName
    ];

    return oppRecords;
  }
}
