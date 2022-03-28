@isTest
public with sharing class LeadCreateCheckHandlerClassTest {
  private static testMethod void leadCreateCheckTestMethod() {
    Profile pro = [SELECT ID FROM profile WHERE name = 'Standard User'];

    User u = new user();
    u.LastName = 'Test Code';
    u.Email = 'ppark11@gmail.com';
    u.Alias = 'Tcoaa';
    u.Username = 'test1234444@test.com';
    u.CommunityNickname = 'test12';
    u.LocaleSidKey = 'en_US';
    u.TimeZoneSidKey = 'GMT';
    u.ProfileID = 'pro.id';
    u.LanguageLocaleKey = 'en_US';
    u.EmailEncodingKey = 'UTF-8';
    insert u;

    System.runAs(u) {
      Lead varL = new lead();
      varL.lastname = 'Chaurasia';
      varL.FirstName = 'Himansh';
      varL.company = 'IBM';
      insert varL;

      system.assertNotequals(varL.id, null);
    }
  }
}