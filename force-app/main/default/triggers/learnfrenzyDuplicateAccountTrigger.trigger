trigger learnfrenzyDuplicateAccountTrigger on account (before insert) {
   List<account> acc=[SELECT name FROM Account];
   for(account acc1:trigger.new){
     for (account acc2 : acc) {
         if (acc2.name==acc1.name) {
            acc1.adderror('Bhaag BoseDK');
         }
     }
   }
}