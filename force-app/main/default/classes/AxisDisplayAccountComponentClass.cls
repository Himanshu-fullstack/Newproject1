public with sharing class AxisDisplayAccountComponentClass {
    @AuraEnabled
    public static List<Account> displayRecords(){
       
            List<Account> accList=new List<Account>();
            accList=[Select ID,Name,type,Phone from Account where Type !=null LIMIT 100];
            return accList;

        } 
    }