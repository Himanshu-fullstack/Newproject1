public with sharing class blackListedTriggerHandlerClass {
    
    public static void blackListedTriggerHandlerMethod (List<Student__c> stu){
        List<Student__c> stu1=new List<Student__c>();
        List<Black_Listed_Candidate__c> bcc10=new List<Black_Listed_Candidate__c>();
        List<Black_Listed_Candidate__c> bcc=[Select ID,NAME,PAN__c,Phone__c from Black_Listed_Candidate__c];
        for(Student__c stu2:stu){
          for(Black_Listed_Candidate__c bcc1:bcc){
              if(bcc1.PAN__c == stu2.PanCard__c){
                Black_Listed_Candidate__c bcc11=new Black_Listed_Candidate__c(Phone__c=stu2.Phone__c,ID=bcc1.ID);

                bcc10.add(bcc11);

                  //stu2.Background_Check_Status__c='Blacklisted PAN Found';
                  
              }
              update bcc10;
              
              

              }
          }
        }
        public static void blackListedTriggerHandlerMethod1 (List<Student__c> stu){
            List<Student__c> stu1=new List<Student__c>();
            List<Black_Listed_Candidate__c> bcc10=new List<Black_Listed_Candidate__c>();
            List<Black_Listed_Candidate__c> bcc=[Select ID,NAME,PAN__c,Phone__c from Black_Listed_Candidate__c];
            for(Student__c stu2:stu){
              for(Black_Listed_Candidate__c bcc1:bcc){
                  if(bcc1.PAN__c == stu2.PanCard__c){
                    
                    stu2.Background_Check_Status__c='Blacklisted Candidate found';
                    
                    
                  
                  
    
                  }
              }
            }
    }
}