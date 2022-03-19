trigger leadstatusclass on lead (before insert,before update) {
    for(lead l:trigger.new){
        if(trigger.isUpdate && (l.status =='Closed - Converted' || l.status=='Closed - Not Converted')&& trigger.oldmap.get(l.id).status=='Open - Not Contacted') {
           l.status.adderror('Cannot be directly closed from open status');        
    }

}
}