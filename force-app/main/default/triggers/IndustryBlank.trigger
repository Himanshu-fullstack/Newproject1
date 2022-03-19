trigger IndustryBlank on lead (before insert,before update) {
    for(lead l:trigger.new){
        if(String.isblank(l.Industry) && trigger.isInsert){
            l.adderror('Industry cannot be blank');
        }


}
}