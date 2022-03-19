import { LightningElement } from "lwc";

export default class ChildComponentTest extends LightningElement {
  finalsum;
  sum;
  num1;
  num2;

  inputHandler(event) {
    if (event.target.name === "fir") {
      this.num1 = parseInt(event.target.value);
    } else if (event.target.name === "sec") {
      this.num2 = parseInt(event.target.value);
    }
    this.sum = `Sum of two Numbers is ${this.num1 + this.num2}`;
  }

  buttonHandler() {
    const event = new CustomEvent("customeventlatest", {
      detail: { finalsum: this.sum }
    });
    this.dispatchEvent(event);
  }
}
// //   @api msg1 = "Hello this msg is from child comp";

// //   buttonHandler() {
// //     const event = new CustomEvent("customeventfromchild", {
// //       detail: { msg1: this.msg1 }
// //     });
// //     this.dispatchEvent(event);
//   }
// }