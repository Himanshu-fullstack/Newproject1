public with sharing class acnasc {
  public static void change11() {
    List<Account> acc2 = new List<Account>();
    for (Account acc : [SELECT ID, Name FROM Account]) {
      acc.industry = 'Banking';
      acc2.add(acc);
    }
    update acc2;
  }
}