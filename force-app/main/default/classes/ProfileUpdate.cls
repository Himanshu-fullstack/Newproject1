public  class ProfileUpdate {
    public static void ProfileUpdatess() {
        List<opportunity> opp1= new list<opportunity>();
        List<opportunity> oppori=[Select ID,profile__C,amount from opportunity];
        for(opportunity opp :oppori){
            if(opp.amount <25000){
                opp.profile__C='Cold';
            }
            else if(opp.amount >50000){
                opp.profile__c='Hot';
            }
            else {
                opp.profile__c='Warm';
            }
        update oppori;
        }
    }