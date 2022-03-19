@isTest
public with sharing class MobileDiscountTestClass {
    @isTest
     static void MobileDiscountTestClass() {
        Mobile__c abc=new Mobile__C();
        abc.price__c=400;
        abc.Brand__c='Samsung';
        abc.name='ABCD';
        insert abc;
        Mobile__c abc1=[Select price__C from mobile__c where ID =: abc.ID];
        System.assertEquals(360, abc1.price__c);
        }
        @istest
        static void MobileDiscountTestClass1() {
            Mobile__c abc=new Mobile__C();
            abc.price__c=400;
            abc.Brand__c='Apple';
            abc.name='ABCD2';
            insert abc;
            Mobile__c abc1=[Select price__C from mobile__c where ID =: abc.ID];
            System.assertEquals(320, abc1.price__c);
            }
            
            @istest
            static void MobileDiscountTestClass3(){
                Mobile__c abc=new Mobile__C();
                abc.price__c=400;
                abc.Brand__c='Samsung';
                abc.name='ABCD';
                insert abc;
                Mobile__c abc1=[Select price__C from mobile__c where ID =: abc.ID];
                abc1.price__c=200;
                abc1.Brand__c='Samsung';
                update abc1;
                System.assertEquals(190, abc1.price__c);
        }
        @istest
        static void MobileDiscountTestClass4(){
            Mobile__c abc=new Mobile__c();
            abc.price__c=300;
            abc.name='ABCNDND';
            abc.brand__c='Apple';
            insert abc;
            Mobile__c abc1=[Select price__C from mobile__C where ID =: abc.ID];
            abc1.price__c=400;
            update abc1;
            System.debug(abc.price__c);
            System.assertEquals(400,abc.price__c );

            
    }
    }