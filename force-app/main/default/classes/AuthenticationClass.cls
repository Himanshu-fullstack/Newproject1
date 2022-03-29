public with sharing class AuthenticationClass {
    
    @AuraEnabled
    public static String authmethod (String email,String pass){
    
    String str='No';

    List<Oauth__c> record=[Select ID,name,Email__c,Password__c from Oauth__c where Email__c='himanshuinlko@gmail.com' and Password__c='Map.bit-06' limit 1];
    
    if(!record.isEmpty()){
        str='Yes';
    }
     System.debug(str);
    return str;
}

@auraenabled 
public static void signUPMethod(String name,String email,String password){

    Oauth__c newdata=new Oauth__c(Name=name,Password__c=password,Email__c=email);
    insert newdata;

}


@AuraEnabled
public static List<Oauth__c> getrecordss(){
    return [Select ID,name,Email__c,Password__c from Oauth__c];
}
}

    
    
    
    
    
    
    
    
        //     //List<Oauth__c> alreadyPresent=;
    //     String result;
    //     String query1='Select ID,name,Email__c,Password__c from Oauth__c where Email__c=:email and Password__c=:pass limit 1';
    //  system.debug(Database.Query(query1));
    //  return Database.Query(query1);
    
        //     if(Database.query(query1) != null){
    //           result='Yes';
    //     }
    //     else {
    //         result='No';
    //     }
    //     system.debug(result);
    //    return result;
          
    
//     }  
// }   
                     