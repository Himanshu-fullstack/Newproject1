public with sharing class UpdateClosedWonhandler {
    public static void afterUpdateHandle(Map<ID,Opportunity> newMap){



       // List<Opportunity> idsInClosedWon = new List<Opportunity>();
        SET<STRING> IDSOFNEWRECORDS = new SET<STRING>();
        SET<STRING> ACCOUNTIDSOFNEWRECORD = new SET<STRING>();
        for(opportunity each : newMap.values()){
        if(each.StageName == 'Closed Won'){
            IDSOFNEWRECORDS.add(each.ID);
            ACCOUNTIDSOFNEWRECORD.add(each.AccountID);
        
        // idsInClosedWon.add(each);
        }
        
        List<Opportunity> finalUpdate=new List<Opportunity>();
        List<Opportunity> toBeUpdate = [Select ID,name,AccountID from opportunity 
                                        where ID not in  :IDSOFNEWRECORDS and 
                                          Account.ID in :ACCOUNTIDSOFNEWRECORD
                                        ];
        
        for(Opportunity each1:toBeUpdate){
        each1.StageName='Closed Lost';
        finalUpdate.add(each1);
        }
        update finalUpdate;
        }
        }
    }