public  class IndustryBlankHandler {
    public IndustryBlankHandler(List<Lead> lead1) {
        for(lead l:lead1){
            if(String.isblank(l.Industry) && trigger.isInsert){
                l.adderror('Industry cannot be blank');
            }
        }

    }
}
