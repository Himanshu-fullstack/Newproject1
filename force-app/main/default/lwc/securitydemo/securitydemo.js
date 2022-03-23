import { LightningElement } from "lwc";

import getOppRecords from "@salesforce/apex/SecurityDemoOpportunity.getOppRecords";
export default class securityDemoOpportunityComponent extends LightningElement {
  accountname;
  display;
  listOfRecords;

  inputHandler(event) {
    this.accountname = event.target.value;
  }

  buttonHandler() {
    getOppRecords({ accName: this.accountname }).then((data) => {
      this.listOfRecords = data;
    });
    console.log(this.listOfRecords);
  }
}
