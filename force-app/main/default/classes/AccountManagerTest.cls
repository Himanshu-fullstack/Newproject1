@istest
private class AccountManagerTest {
    @isTest static void testGetAccount() {
        Account a= new Account(Name='TestAccount');
        insert a;
        Contact c= new Contact(AccountID=a.ID, FirstName='Test',Lastname='Test');
        insert c;
           Restrequest request  = new RestRequest();
           request.requestUri  ='https://yourInstance.salesforce.com/services/apexrest//Accounts/'+a.id+'/contacts';
             request.httpMethod = 'Get';
           RestContext.request = request;
           Account myAcct= AccountManager.getAccount();

           System.assert(myAcct != null);
           System.assertEquals('TestAccount', myAcct.Name);
    }


}