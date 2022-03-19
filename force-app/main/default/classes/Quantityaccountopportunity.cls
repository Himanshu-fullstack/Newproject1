public  class Quantityaccountopportunity {
    public static integer getTotalQuantity(String abc){
        List<AggregateResult> opp=[Select count(TotalOpportunityQuantity) total,ID from opportunity
                                   where account.Working_in__c=:abc group by id];
                 integer abc1=Integer.valueof(count(TotalOpportunityQuantity));
                            return abc1;


    }
}
