global class  EmailToClaimHandler implements Messaging.InboundEmailHandler{
  
    global Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email, Messaging.InboundEnvelope envelope){
        Messaging.InboundEmailResult result = new Messaging.InboundEmailResult();
        try {
            // get the "From header metadata

            String senderEmail = email.FromAddress;
            String sendername = email.FromName;

            // get email subject and body

            String emailSubject = email.subject;
            String emailBody = email.plainTextBody;

            //process data here......
        }
        catch(Exception e){
            result.success = false;
            SYstem.debug('An error occurred' + e.getMessage());
        }
        return result;
        }
        }