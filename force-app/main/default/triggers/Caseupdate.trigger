trigger Caseupdate on case (After insert) {
    List<case> csc = new List<case>();
    for(case cs:trigger.new){
    if(cs.Origin=='Email'){
        case abc= new case(ID=cs.id,status='New',Priority='High');
        
        csc.add(abc);        
    }}
    insert csc;
}

