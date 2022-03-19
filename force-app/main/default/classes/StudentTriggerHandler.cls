public  class StudentTriggerHandler {
    public Static void StudentTriggerHandlerMethod(List<Student_Test__c> stu) {
        for(Student_Test__c stu1:stu){
            if(stu1.Age__c <30 && stu1.Experience__c>8){
                stu1.Status__c='Selected';
            }
        }

    }
}