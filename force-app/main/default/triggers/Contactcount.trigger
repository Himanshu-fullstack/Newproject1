trigger Contactcount on Account (After insert) {
    Contactcounthandler.ContactcounthandlerMethod(trigger.new);

}