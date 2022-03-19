public with sharing class emailTriggerClassHandler {
    
    public static void emailTriggerMethod(){

        Messaging.SingleEmailMessage email= new Messaging.SingleEmailMessage();

        string ashuEmail='ashutoshsfdcsingh@gmail.com';

        

        String[] to= new string[]{'himanshuinlko@gmail.com',ashuEmail};

        email.setToAddresses(to);
        //email.setBccAddresses(param0);
        //email.setCcAddresses(param0);

        email.setSubject('First Mail sent through code');

        email.setPlainTextBody('This is email body');

       // email.setHtmlBody('Dear user'<br>);

       Messaging.sendEmail(new messaging.SingleEmailMessage[]{email});
       system.debug('aaa');
    }

    }