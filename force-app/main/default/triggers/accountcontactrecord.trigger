trigger accountcontactrecord on account (After insert) {
    List<contact> css=new List<contact>();
    for(account acc:trigger.new){
        contact con= new contact(AccountId=acc.ID,lastname=acc.name);
       css.add(con);

    }
    insert css;
}