public with sharing class TrainingMasterDealComponentClass {
    @AuraEnabled      
    public static List<Training_Deals__c> rec(){
        List<Training_Deals__c> tdc=new  List<Training_Deals__c>();
        tdc=[Select ID,Name,Course__c,Trainer_Appointed__r.First_Name__c from Training_Deals__c];
        return tdc;
    }

    }