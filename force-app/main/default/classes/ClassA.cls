public with sharing class ClassA {
    public static void functionA() {
        List<Account> accList=[SELECT Name FROM Account];
        List<account> accnew=new List<Account>();
        for(account acc:accList){
            acc.Name=acc.name+' Himanshu Chaurasia without update';
        }
    }
}