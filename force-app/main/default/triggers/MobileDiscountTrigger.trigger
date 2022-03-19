trigger MobileDiscountTrigger on Mobile__c (before insert, before update) {
    if(trigger.isInsert == true && trigger.isBefore == true){
    MobileDIscount.MobileDIscountMethoda(Trigger.new);
    }
    if(trigger.Isupdate == true && trigger.isbefore ==true){
        MobileDIscount.MobileDIscountMethodaUpdate(Trigger.new);
    }

}