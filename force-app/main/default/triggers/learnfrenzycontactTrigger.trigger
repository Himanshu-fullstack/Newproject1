trigger learnfrenzycontactTrigger on contact (Before insert) {
   /* 
    for(contact con:trigger.new)
    {
        if(String.isNotBlank(con.AccountId))
        {
        con.otherphone=[Select phone from account where id=: con.AccountId];

}
    }
}*/
for (contact con : trigger.new) {
        List<Account> acc =[SELECT Id, Phone FROM Account WHERE id=: con.AccountId];
        //if (String.isNotBlank(con.AccountId)) {
            for (account acc1 : acc) {
                con.Phone=acc1.Phone; 
            }
            
        //}
        
    }

}*/