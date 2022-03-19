import { LightningElement } from "lwc";

import { ShowToastEvent } from "lightning/platformShowToastEvent";
export default class GuestEntryFormComponent extends LightningElement {
  fName;
  lName;
  phone;
  email;
  numOfAdults;
  numOfChild;
  checkIn;
  checkOut;
  cityOfHotel;
  hoteltype;
  display = true;

  get options1() {
    return [
      { label: "3 Star", value: "3 star" },
      { label: "4 Star", value: "4 star" },
      { label: "5 Star", value: "5 star" }
    ];
  }

  comboHandler(event) {
    this.hoteltype = event.target.value;
  }
  // get options() {
  //   return [
  //     { label: "India", value: "INR" },
  //     { label: "USA", value: "USD" },
  //     { label: "EURO", value: "EUR" },
  //     { label: "ARAB DINAR", value: "AED" }
  //   ];
  // }

  buttonHandler() {
    this.display = false;

    const toastEvent = new ShowToastEvent({
      title: "Success !",
      message: "List of Matching hotels",
      variant: "success",
      mode: "dismissible"
    });
    this.dispatchEvent(toastEvent);
  }

  inputHandler(event) {
    let eventname = event.target.name;
    if (eventname === "Fname") {
      this.fName = event.target.value;
    } else if (eventname === "lname") {
      this.lName = event.target.value;
    } else if (eventname === "phone") {
      this.phone = event.target.value;
    } else if (eventname === "email") {
      this.email = event.target.value;
    } else if (eventname === "numberOfAdults") {
      this.numOfAdults = event.target.value;
    } else if (eventname === "numOfChild") {
      this.numOfChild = event.target.value;
    } else if (eventname === "checkin") {
      this.checkIn = event.target.value;
    } else if (eventname === "checkout") {
      this.checkOut = event.target.value;
    } else if (eventname === "cityOfHotel") {
      this.cityOfHotel = event.target.value;
    }
  }
}