trigger Leadupdate on lead (before insert) {
    for(lead l:trigger.new)
    {
        if(l.LeadSource =='Web'){
            l.rating='Cold';
        }
            else {
                l.rating='Hot';
            
        }
    }
}