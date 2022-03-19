public class Contactcounthandler {
    public static void ContactcounthandlerMethod(List<Account> acc) {
        List<contact> con1=new List<contact>();
        for(account acc1:acc){
                COntact con=new contact();
                con.AccountId=acc1.id;
                con.LastName=acc1.name;
                con1.add(con);
            

        }
        insert con1;
    }
}