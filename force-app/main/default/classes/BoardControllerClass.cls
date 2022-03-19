
public with sharing class BoardControllerClass {
    @AuraEnabled
    public static string addResult(String result, String mode){
        Word_Shuffle__c gameResult = new Word_Shuffle__c(Game_Result__c = result, Mode__c = mode);
        insert gameResult;
        return 'success';
    }
}
        
