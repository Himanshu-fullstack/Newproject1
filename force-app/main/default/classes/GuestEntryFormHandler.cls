public with sharing class GuestEntryFormHandler {
  @AuraEnabled(cacheable=true)
  public static list<Hotel_Master__c> hotelData(String city, String type) {
    return [
      SELECT
        Id,
        // Name,
        Hotel_City__c,
        Hotel_Type__c,
        Per_Day_Cost__c,
        Wifi_Availability__c,
        Hotel_Name__c
      FROM Hotel_Master__c
      WHERE Hotel_City__c = :city AND Hotel_Type__c = :type
    ];
  }

  // @AuraEnabled
  // public static Guest_Master__c guestEntryMethod(
  //   String cityOfHotel,
  //   String fName,
  //   String lName,
  //   String phone,
  //   String email,
  //   String hoteltype,
  //   String comboBoxValue
  // ) {
  //   Guest_Master__c gmc = new Guest_Master__c(
  //     Guest_First_Name__c = fName,
  //     Guest_Email__c = email,
  //     Guest_Last_Name__c = lName,
  //     Phone__c = phone
  //   );
  //   insert gmc;
  //   return [SELECT Id ,Guest_Email__c,Guest_First_Name__c,Guest_Last_Name__c FROM Guest_Master__c WHERE id=: gmc.Id];
  // }

  // @AuraEnabled(cacheable=true)
  // public static list<Hotel_Master__c> hotelData(String cityofhotel ,
  //  String comboboxvalue ){

  //   return [SELECT Id,
  //            Name, Hotel_City__c,
  //            Hotel_Type__c, Per_Day_Cost__c, Wifi_Availability__c,
  //            Cancellation_Availability__c,
  //            Cash_Pay_Availability__c, Hotel_Name__c
  //            FROM Hotel_Master__c
  //            WHERE Hotel_City__c=: cityofhotel AND
  //            Hotel_Type__c=:comboboxvalue];
  // }

  @AuraEnabled
  public static Payment_Master__c paymentCreationMethod(
    String cardNumber,
    String expiryMonth,
    String expiryYear,
    String cvv
  ) {
    //Querying Last entered Record
    Guest_Master__c gm = [
      SELECT Id, Guest_First_Name__c, Guest_Last_Name__c
      FROM Guest_Master__c
      ORDER BY CreatedDate DESC
      LIMIT 1
    ];
    //Inserting Record in Payment Master object
    Payment_Master__c pm = new Payment_Master__c(
      Payer_Details__c = gm.id,
      Card_Number__c = Decimal.valueOf(cardNumber),
      Expiry_Year__c = Decimal.valueOf(expiryYear),
      Expiry__c = Decimal.valueOf(expiryMonth),
      CVV__c = Decimal.valueOf(cvv)
    );
    insert pm;

    return [SELECT Id FROM Payment_Master__c WHERE id = :pm.Id];
  }
}

//   @AuraEnabled
//   public static void guestHotelMethod(List<Hotel_Master__c> hotelrecordid,Guest_Master__c guestrecordid){

//     for(Hotel_Master__c hr:hotelrecordid){

//     Guest_Master__c gm2= new Guest_Master__c(Id=guestrecordid.Id, Selected_Hotel__c=hr.Id);
//     update gm2;
//     }
//   }
//   @AuraEnabled
//   public static void emailSend(List<Hotel_Master__c> hotelrecordid,Guest_Master__c guestrecordid){

//     Hotel_Master__c hmReturn;
//     for(Hotel_Master__c hr :hotelrecordid){

//     String[] to= new String[]{guestrecordid.Guest_Email__c};

//     Messaging.singleEmailMessage email= new messaging.singleEmailMessage();

//     email.setToAddresses(to);

//     email.setSubject('HOTEL Booked (auto-generated)');

//     email.setHTMLBody('<h1 style="color: blue;">Ram Bharose Hotel Service</h1><br> Dear <b>'+guestrecordid.Guest_First_Name__c+
//     '</b>  <b>'+guestrecordid.Guest_Last_Name__c
//     +'</b> <br> HOTEL named  <b>'+hr.Hotel_Name__c+'</b> has been booked');
//     try {
//         messaging.sendEmail(new messaging.SingleEmailMessage[]{email});
//     } catch (Exception e) {
//         System.debug(e);
//     }
//   }
// }
// }