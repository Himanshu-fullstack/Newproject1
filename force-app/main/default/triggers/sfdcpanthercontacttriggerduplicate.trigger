trigger sfdcpanthercontacttriggerduplicate on contact (before insert) {
    
    //create a list for having contact email and phone.

    List<Contact> con=[Select email,phone from contact where email != null AND phone != null];
    for(contact con1:trigger.new){
        
        for(contact con2:con){
                
            IF((con2.email == con1.email) || (con2.phone == con1.phone)){ //this will check whether con list value have any matching email or phone or not
                con1.addError('Duplicate Values found');//to throw an error when duplicate values found.
            }
        }
    }
}
