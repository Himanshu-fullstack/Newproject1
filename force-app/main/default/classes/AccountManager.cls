@RestResource(urlMapping='/Account/*/contacts')
global with sharing  class AccountManager {

    @HttpGet
    global static Account  getAccount() {
    RestRequest request= RestContext.request;
    String accountid =request.requestURI.substringBetween('Accounts/','/contacts');
    Account result=[Select ID,Name,(Select ID, firstname, LASTNAME from Contacts) from Account where ID= :accountId];
return result;    
}
}