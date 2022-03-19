public  class ActiveContactTry2TriggerHandler {
    public static void beforeInsertHandler(List<contact> con1){
        Set<ID> accountids = new set<ID>();
        for(contact con:con1){
            if(String.isnotblank(con.accountid)){
                String accountidss=con.accountid;
                accountids.add(accountidss);
            }
        }
        List<AggregateResult> newrecords=[SELECT AccountID, count(ID) totalc FROM Contact
                                         where active__c=true 
                                         and accountid in: accountIDS
                                         group by AccountId];
          List<Account> accnew1=new List<Account>();
         for(AggregateResult result:newrecords) {
               String accid=String.valueof(result.get('AccountID'));
               Integer acc=Integer.valueof(result.get('total'));
               Account accnew=new Account(ID=accid, Active_Contacts__c=acc);
               accnew1.add(accnew);
         }
         update accnew1;
        }
    }
         
      