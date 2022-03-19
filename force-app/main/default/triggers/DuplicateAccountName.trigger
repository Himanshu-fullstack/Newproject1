    trigger DuplicateAccountName on Account (before insert, before update) {
        for(Account a:Trigger.new)
        {
        list<account> acc=[Select ID from account where name=:a.name and rating=:a.rating];
        
        if(acc.size()>0){
            a.adderror('Duplicate records');
    }
} 
}
