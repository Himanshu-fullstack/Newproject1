trigger LearnFrenzyOpportunityTrigger on Opportunity (before update) {

        for(Opportunity opp:trigger.new){
            if(opp.stagename=='Closed Won'){
                opp.CloseDate=date.today();
                opp.type='New Customer';
            }
        }
        }
