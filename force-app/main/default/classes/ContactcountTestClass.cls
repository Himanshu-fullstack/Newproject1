@istest
public  class ContactcountTestClass {
    @istest
    public static void ContactcountTestClassMEthod1() {
        Account acc=new Account(name='ABCD');
        insert acc;
        contact con=new contact(accountid=acc.id,Lastname=acc.name);
        insert con;
   System.assertequals('ABCD',con.lastname);

    }
@istest
    public static void ContactcountTestClassMEthod2() {
        Account acc=new Account(name='ABCD');
        insert acc;
        contact con=new contact(accountid=acc.id,Lastname=acc.name);
            
        insert con;
   System.assertequals(con.LastName,acc.Name);

}
}