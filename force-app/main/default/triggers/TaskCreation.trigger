trigger TaskCreation on lead (AFter insert) {
    for(lead le:trigger.new){
        task app=new task(subject='Other',status='In Progress',WhoId=le.id);
        insert app;
    }

}