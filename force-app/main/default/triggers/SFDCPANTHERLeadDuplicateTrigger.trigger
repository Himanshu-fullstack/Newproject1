trigger SFDCPANTHERLeadDuplicateTrigger on Lead (Before insert) {
    List<Lead> lll=new list<lead>();
    Integer c=3;
    If(c>2){
    for(lead l:trigger.new){
        
        lead ll=new lead(LastName=l.LastName,FirstName=l.FirstName,Company=l.Company,Status=l.Status);
        lll.add(ll);
        c--;
        break;
    }}
insert lll;

}