import { LightningElement, api } from "lwc";

import paymentCreationMethod from "@salesforce/apex/GuestEntryFormHandler.paymentCreationMethod";
import { NavigationMixin } from "lightning/navigation";
export default class Paymentcomponent extends NavigationMixin(
  LightningElement
) {
  @api listtopayment;
  cardNumber;
  expiryMonth;
  expiryYear;
  cvv;
  paymentRecordId;

  inputHandler(event) {
    let eventname = event.target.name;
    if (eventname === "cn") {
      this.cardNumber = event.target.value;
    } else if (eventname === "em") {
      this.expiryMonth = event.target.value;
    } else if (eventname === "ey") {
      this.expiryYear = event.target.value;
    } else if (eventname === "cvv") {
      this.cvv = event.target.value;
    }
  }
  buttonHandler() {
    paymentCreationMethod({
      cardNumber: this.cardNumber,
      expiryMonth: this.expiryMonth,
      expiryYear: this.expiryYear,
      cvv: this.cvv
    }).then((data) => {
      this.paymentRecordId = data;
    });

    this[NavigationMixin.Navigate]({
      type: "standard__recordPage",
      attributes: {
        recordId: this.paymentRecordId.Id, //here you can old put recordId property
        objectApiName: "Payment_Master__c", // objectApiName is optional
        actionName: "view" //it can be in edit mode also
      }
    });
  }
}