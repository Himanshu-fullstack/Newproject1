trigger LocationTrigger on account (after insert, after update) {
    list<contact> con=new list<contact>();
    for(account acc:trigger.new){
        if(acc.Number_of_Locations__c !=null && acc.Number_of_Locations__c>0){
            for(integer i=0;i<acc.Number_of_Locations__c;i++){
                contact con1=new contact(accountid=acc.ID, Lastname='Test'+i);
                con.add(con1);
            }
    }
}
    insert con;
}