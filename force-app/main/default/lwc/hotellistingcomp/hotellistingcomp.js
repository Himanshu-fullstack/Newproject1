import { LightningElement, api } from "lwc";

import hotelData from "@salesforce/apex/GuestEntryFormHandler.hotelData";
//import hotelData from "@salesforce/apex/GuestEntryFormHandler.hotelData";
export default class Hotellistingcomp extends LightningElement {
  @api city;
  @api type;
  hotelrecord;
  abc;
  lab;

  columns = [
    {
      label: "Hotel Name",
      fieldName: "Hotel_Name__c",
      type: "text",
      sortable: true
    },
    {
      label: "Star Category",
      fieldName: "Hotel_Type__c",
      type: "picklist",
      sortable: true
    },
    {
      label: "Per day Cost",
      fieldName: "Per_Day_Cost__c",
      type: "Currency",
      sortable: true
    },
    {
      label: "Wifi availability",
      fieldName: "Wifi_Availability__c",
      type: "checkbox",
      sortable: true
    }
  ];

  get listHotel() {
    hotelData({ city: this.city, type: this.type }).then((data) => {
      this.hotelrecord = data;
    });
    return this.hotelrecord;
  }
}
//   get countlist() {
//     guestEntryMethodCount({ city: this.city, type: this.type }).then((data) => {
//       this.abc = JSON.parse(JSON.stringify(data));
//       this.lab = `${this.city}:${this.abc} results found`;
//       console.log(this.abc);
//     });
//     return this.lab;
//   }
// }

//   @wire(guestEntryMethod, { city: "$city", type: "$type" })
//   wiredAccounts({ data }) {
//     if (data) {
//       this.hotelrecord = data;
//       console.log(this.hotelrecord);
//     }
//   }
// }

//   @wire(guestEntryMethodCount, { city: "$city", type: "$type" })
//   wiredAccountss({ data }) {
//     if (data) {
//       this.tit = data;
//       this.lab = `${this.city}: ${this.tit} Hotels found`;
//       console.log(this.lab);
//     }
//   }
// }

// //   buttonHander() {
// //     guestEntryMethod({ city: this.city, type: this.type }).then((data) => {
// //       this.hotelrecord = data;
//     });