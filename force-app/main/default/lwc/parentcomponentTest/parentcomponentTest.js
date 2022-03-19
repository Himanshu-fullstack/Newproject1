import { LightningElement } from "lwc";

export default class ParentcomponentTest extends LightningElement {
  sum1;

  valueHandler(event) {
    this.sum1 = event.detail.finalsum;
  }
  // inputHandler(event){

  //     if(event.target.name === 'Fname'){
  //         this.n1=event.target.value;
  //     } else if(event.target.name === 'Lname'){
  //         this.n2=event.target.value;
  //     }
  //     this.fullname1=`${this.n1} ${this.n2}`;
  //}
}