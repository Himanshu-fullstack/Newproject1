trigger OpportunityDate on opportunity (before update) {

    
    for(opportunity opp:trigger.new){
      if(trigger.oldmap.get(opp.stage)!='Closed won' && opp.stage='Closed won')
      {
       opp.CloseDate=date.today();
       opp.type='New Customer';
      }
    }

}