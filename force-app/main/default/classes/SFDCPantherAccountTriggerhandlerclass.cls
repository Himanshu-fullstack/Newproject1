

public with sharing class SFDCPantherAccountTriggerhandlerclass {
    public static void SFDCPantherAccountTriggerhandlerclassmethod(List<Account> accs) {

        List<Opportunity> opp3 = new List<Opportunity>();
    
        SET<ID> ss=new set<ID>();       
         for (Account acc : accs) {
        ss.add(acc.id);
        
        }
    
            List<Opportunity> opp = [SELECT StageName ,Accountid,CreatedDate FROM Opportunity
               WHERE Accountid =: ss AND stagename!='Closed Won'];
    
             for (Opportunity opp1 : opp) {
                 if(opp1.CreatedDate>(Date.today()-30)){      
                     Opportunity opp4= new Opportunity(Id=opp1.Id,StageName='Closed Lost');
                   opp3.add(opp4);
                   }
              }           
        
        update opp3;
     }
    }
     


    

