
    
    public with sharing class NumberOFContactsHandler {

        public static void afterInsertMethod(List<Account> newRecordsList){
        
        List<contact> toBeInserted=new List<Contact>();
        for(Account each:newRecordsList){
        for(integer i=0;i<each.Numberofcontacts__c;i++){
        contact con=new contact(Accountid=each.id,lastname='con'+i);
        toBeInserted.add(con);
        }
        }
        insert toBeInserted;
        }
        


        public static void afterUpdateMethod(Map<ID,Account> newMap,Map<ID,Account> oldMap) {

            SET<ID> newRecordsList=new SET<ID>();
            for(Account each:newMap.values()){
            if(each.Numberofcontacts__c!=null && each.Numberofcontacts__c!=oldMap.get(each.ID).Numberofcontacts__c){
            newRecordsList.add(each.ID);
            }
            }
            
            List<Contact> tobedeleted=new List<Contact>();
            List<Contact> tobeInserted=new List<Contact>();
            
            List<Account> filteredRecords=[Select ID,name,Numberofcontacts__c,(Select accountID,lastname,ID from contacts) con
                                            from account where ID in :newRecordsList];
            
            for(Account each1:filteredRecords){
            if(each1.Numberofcontacts__c>oldMap.get(each1.ID).Numberofcontacts__c){
            for(integer i=0;i<(each1.Numberofcontacts__c-oldMap.get(each1.ID).Numberofcontacts__c);i++){
            contact con1=new contact(AccountID=each1.ID,Lastname='con'+i);
            tobeInserted.add(con1);
            }
            }
            else if(each1.Numberofcontacts__c<oldMap.get(each1.ID).Numberofcontacts__c){
                //List cont var=[Select id from Contact Limit oldMap.get(each1.ID).Numberofcontacts__c-each1.Numberofcontacts__c]

             for(integer i=0;i<(oldMap.get(each1.ID).Numberofcontacts__c-each1.Numberofcontacts__c);i++){
                 
                
             tobedeleted.add();
             }
             }
            }
            insert tobeInserted;
            delete tobedeleted;
            
            }
        }
