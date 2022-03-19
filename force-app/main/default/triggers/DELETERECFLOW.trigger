trigger DELETERECFLOW on Energy_Audit__c(Before insert,Before update) {
    Switch on trigger.operationtype{
        when Before_Insert{
            for(Energy_Audit__c aud:trigger.new){
                if(aud.Vendor_Reputation__c =='Pathetic'){
                    aud.adderror('Pathetic Vendors are not welcomed');
                }
            }
        }
 
  }  
}}