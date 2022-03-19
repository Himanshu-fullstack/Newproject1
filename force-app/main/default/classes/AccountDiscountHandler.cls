public with sharing class AccountDiscountHandler {
    public static void discount(List<Account> abc) {
        for(Account acc:abc){
            if(acc.Amount__c>5000){
                acc.Amount__c=(acc.Amount__c-(.01*acc.Amount__c));

            }
        }

    }
}