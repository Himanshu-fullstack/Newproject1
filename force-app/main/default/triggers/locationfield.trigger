trigger locationfield on Opportunity (Before insert) {
for(Opportunity opp:trigger.new){
    if(opp.stagename=='Closed Won'){
        opp.CloseDate=date.today();
        opp.type='New Customer';
    }
}
}