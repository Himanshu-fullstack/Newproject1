trigger leadTrigger on lead (before insert, before update) {
    for(lead le:trigger.new)
    {
        if(le.leadsource=='Web'){
        le.rating='Cold';
    }
    else {
        le.rating='hot';
    }
}
}