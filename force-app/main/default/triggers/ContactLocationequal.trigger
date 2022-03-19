trigger ContactLocationequal on Account (after insert,after update) {
    list<contact> listContact = new list<contact>();
    map<id,decimal> mapAcc = new map<id,decimal>();
      for(Account acc:trigger.new){
          mapAcc.put(acc.id,acc.Number_of_Locations__c);
         }
         System.debug(mapAcc);
         System.debug(mapAcc.keyset());
         System.debug(mapAcc.values());
        }
