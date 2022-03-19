trigger casetrigger on case (before insert,before update) {
    for(case ca:trigger.new){
        if(ca.Origin=='Email'){
            ca.Status='Working';
            ca.Priority='High';
        }
    }

}