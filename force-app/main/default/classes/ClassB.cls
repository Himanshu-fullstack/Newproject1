public with sharing class ClassB {
    @future
    public static void functionB() {
        
        for(integer i=1;i<=103;i++){
            List<Account> acc=[SELECT Name, Id FROM Account];
            system.debug(acc);
        }

    }
}