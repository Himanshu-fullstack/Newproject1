/*Write a trigger on Account when Account is update check all opportunity inside the account. Update all Opportunities Stage
    to close lost if an opportunity created date is greater than 30 days from today and stage not equal to close won.*/

trigger SFDCPantherAccountTrigger on account (After update) {

    Switch on trigger.operationtype {
        when After_Update{
            SFDCPantherAccountTriggerhandlerclass.SFDCPantherAccountTriggerhandlerclassmethod(trigger.new);
        }
    }
}

 
    /*List<opportunity> opp=[Select accountid from opportunity where accountid != null];
for(account acc:trigger.new)
{
        for(Opportunity opp1:opp){
            if(opp1.AccountID==acc.ID){
                if((opp1.StageName!='Closed Won'))
            {
                opp1.stagename='CLosed Lost';
            }
        }
            opp.add(opp1);
            }
        }
        update opp;
        }



trigger SFDCPantherAccountTrigger on account (After update) {
       trigger SFDCpantherAccountTrigger on Account (after update) {
           List<Opportunity> opp3 = new List<Opportunity>();
          for (Account acc : trigger.new) {
               List<Opportunity> opp = [SELECT StageName ,Accountid FROM Opportunity WHERE Accountid =: acc.id AND stagename!='Closed Won'];
               for (Opportunity opp1 : opp) {
                    Opportunity opp4= new Opportunity(Id=opp1.Id,StageName='Closed Lost');
                    opp3.add(opp4);
               }           
         }
         update opp3;
         */



        
    
