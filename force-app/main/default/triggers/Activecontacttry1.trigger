trigger Activecontacttry1 on contact (after insert,after update,after delete,after undelete) {
    Switch on trigger.operationtype{
            when AFTER_INSERT{
                SET<ID> accountids=new Set<ID>();
                for(contact con:trigger.new){
                    if(String.isnotblank(con.AccountID)){
                       accountids.add(con.AccountID);
            List<AggregateResult> Results=[Select AccountID, COUNT(ID) totalcontacts from contact 
                                           where active__c=true and AccountID in :accountids 
                                           group by accountid];

            List<account> AccountstoUpdate =new list<account>();
            for(AggregateResult result: Results){
                String accid=String.valueof(result.get('AccountID'));
                Integer totalcontacts=Integer.valueof(result.get('totalcontacts'));
                Account acc=new Account(ID=accid,Active_Contacts__c=totalcontacts);
                
                AccountstoUpdate.add(acc);
            }
            update AccountstoUpdate;
        }
    }
}
When AFTER_UPDATE{
    SET<ID> accountids=new Set<ID>();
                for(contact con:trigger.new){
                    if(String.isnotblank(con.AccountID) && trigger.oldmap.get(con.ID).active__c !=con.Active__c){
                       accountids.add(con.AccountID);
                    }
                    else if(trigger.oldmap.get(con.ID).AccountID !=con.AccountID){
                        accountids.add(con.AccountID);
                        accountids.add(trigger.oldmap.get(con.ID).AccountID);

                    }
                    
            List<AggregateResult> Results=[Select AccountID, COUNT(ID) totalcontacts from contact 
                                           where active__c=true and AccountID in :accountids 
                                           group by accountid];

            List<account> AccountstoUpdate =new list<account>();
            for(AggregateResult result: Results){
                String accid=String.valueof(result.get('AccountID'));
                Integer totalcontacts=Integer.valueof(result.get('totalcontacts'));
                Account acc=new Account(ID=accid,Active_Contacts__c=totalcontacts);
                
                AccountstoUpdate.add(acc);
            }
            update AccountstoUpdate;
        }

}
    

   When AFTER_DELETE {
    SET<ID> accountids=new Set<ID>();
    for(contact con:trigger.old){
        if(String.isnotblank(con.AccountID)){
           accountids.add(con.AccountID);
List<AggregateResult> Results=[Select AccountID, COUNT(ID) totalcontacts from contact 
                               where active__c=true and AccountID in :accountids 
                               group by accountid];

List<account> AccountstoUpdate =new list<account>();
for(AggregateResult result: Results){
    String accid=String.valueof(result.get('AccountID'));
    Integer totalcontacts=Integer.valueof(result.get('totalcontacts'));
    Account acc=new Account(ID=accid,Active_Contacts__c=totalcontacts);
    
    AccountstoUpdate.add(acc);
}
update AccountstoUpdate;
}
   }
    }

    when AFTER_UNDELETE{
            SET<ID> accountids=new Set<ID>();
            for(contact con:trigger.new){
                if(String.isnotblank(con.AccountID)){
                   accountids.add(con.AccountID);
        List<AggregateResult> Results=[Select AccountID, COUNT(ID) totalcontacts from contact 
                                       where active__c=true and AccountID in :accountids 
                                       group by accountid];
        
        List<account> AccountstoUpdate =new list<account>();
        for(AggregateResult result: Results){
            String accid=String.valueof(result.get('AccountID'));
            Integer totalcontacts=Integer.valueof(result.get('totalcontacts'));
            Account acc=new Account(ID=accid,Active_Contacts__c=totalcontacts);
            
            AccountstoUpdate.add(acc);
        }
        update AccountstoUpdate;
        }

    }
}
    }
}                   


    