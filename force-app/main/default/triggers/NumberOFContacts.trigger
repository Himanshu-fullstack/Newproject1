trigger NumberOFContacts on Account (after insert,after update) {

    Switch on trigger.OperationType {

        when AFTER_INSERT {
        
        NumberOFContactsHandler.afterInsertMethod(Trigger.New);
        }
        
        when AFTER_UPDATE {

            NumberOFContactsHandler.afterUpdateMethod(Trigger.NewMap,Trigger.oldMap);
            
            }
            
            }
            }
