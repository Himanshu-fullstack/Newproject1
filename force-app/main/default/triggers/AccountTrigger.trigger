trigger AccountTrigger on Account (Before insert,Before Update) {
    List <contact> cons=new list<contact>();
    for(account acc: trigger.new){
        if(acc.Industry=='Banking'){
            Contact c=new contact();
            c.Lastname=acc.Name;
            c.phone=acc.Phone;
            c.AccountID=acc.ID;
            cons.add(c);
        }}
        insert cons;
    }

