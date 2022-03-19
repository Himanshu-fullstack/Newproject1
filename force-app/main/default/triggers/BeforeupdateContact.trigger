trigger BeforeupdateContact on Account (before insert) {

    List<account> aacnew=new list<account>();
    List<contact> connew=new list<contact>();
    for(contact con:trigger.new){
     if(con.accountID != null){
         
     }

        


    }

}