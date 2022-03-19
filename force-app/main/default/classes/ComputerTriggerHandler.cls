public with sharing class ComputerTriggerHandler {
    public static void ComputerTriggerHandlerMethod(List<Computer__c> comp) {
        for(Computer__c comp1:comp){
            if(comp1.RAM__c <1 && comp1.Processor__c <2 && comp1.Hdisk__c <50){
                comp1.Capacity__c='Low Power';
            }
        }

    }
}