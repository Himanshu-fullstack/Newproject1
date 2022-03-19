trigger SFDCPantheropportunityproducttrigger on Opportunity (After insert) {

   /* List<OpportunityLineItem> opp=new List<OpportunityLineItem>();
    For(Opportunity opp=trigger.new){
        opportunitylineitem opp2= new Opportunitylineitem(OpportunityId=opp.ID)
    }



}*/


list<opportunityLineItem> olilist= new list<OpportunityLineItem>();
    List<PriceBookEntry> priceBookList = [SELECT Id, Product2Id, Product2.Id, Product2.Name FROM PriceBookEntry WHERE Product2Id = <RequiredProductId> AND PriceBook2.isStandard=true LIMIT 1];
    for(opportunity op:Trigger.New){
        OpportunityLineItem oli= New OpportunityLineItem();
        oli.OpportunityId = op.ID;
        oli.PricebookEntryId = priceBookList[0].Id;
        olilist.add(oli);
    }
    if(olilist!=null&&olilist.size()>0)
        insert olilist;