trigger ContactTrigger on contact (After insert, After Update, After Delete, After Undelete) {
    switch on trigger.operationtype {
        when  AFTER_INSERT {

            for(contact con: Trigger.new)
            {
       
            }

            
        }
        when else {
            
        }
    }


}