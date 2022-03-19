trigger Industry on account (After insert) {
List<Contact> con=new list<contact>();
for(account acc:trigger.new){
    if(acc.Industry=='Banking'){
        contact con1=new contact(accountid=acc.id,lastname=acc.name,phone=acc.phone);
        con.add(con1);
    }
        }
        insert con;
    }
    