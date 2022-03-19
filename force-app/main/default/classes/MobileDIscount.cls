public with sharing class MobileDIscount {
    public static void MobileDIscountMethoda(List<Mobile__c> Mob ) {
        for(Mobile__c Mob1: Mob ){
            if(Mob1.Brand__c =='Samsung'){
                Mob1.Price__c=.90*Mob1.Price__c;
                Mob1.Discount__c='You Have been given 10 percent discount';
            }
            else if(Mob1.Brand__c =='Apple'){
                Mob1.Price__c=.80*Mob1.Price__c;
                Mob1.Discount__c='You Have been given 20 percent discount';
            }
        }

    }

    public static void MobileDIscountMethodaUpdate(List<Mobile__c> Mob ) {
        for(Mobile__c Mob1: Mob ){
            if(Mob1.Brand__c =='Samsung'){
                Mob1.Price__c=.95*Mob1.Price__c;
                Mob1.Discount__c='You Have been given 5 percent discount';
            }
            else if(Mob1.Brand__c =='Apple'){
                Mob1.Price__c=1*Mob1.Price__c;
                Mob1.Discount__c='You Have been given no discount';
            }
}
    }
}