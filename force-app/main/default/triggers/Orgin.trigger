trigger origin on lead (before insert) {
    for(lead l:trigger.new){
        if(l.leadsource=='Web'){
            l.rating='Cold';}
            else{
             l.rating='Hot';
            }
        }
    }
        
l