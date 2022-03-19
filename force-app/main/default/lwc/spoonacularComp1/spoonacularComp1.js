import { LightningElement } from "lwc";

import getRandomRecipe from "@salesforce/apex/SpoonacularHandler.getRandomRecipe";
import { ShowToastEvent } from "lightning/platformShowToastEvent";
export default class SpoonacularComp1 extends LightningElement {
  exchangeRateValue;
  curren;
  tocurren;
  inputValue;
  display = false;
  display1 = false;
  finalValueAfterConversion = "";
  inputHandler(event) {
    this.inputValue = event.target.value;
  }
  get options() {
    return [
      { label: "India", value: "INR" },
      { label: "USA", value: "USD" },
      { label: "EURO", value: "EUR" },
      { label: "ARAB DINAR", value: "AED" }
    ];
  }

  get options1() {
    return [
      { label: "India", value: "INR" },
      { label: "USA", value: "USD" },
      { label: "EURO", value: "EUR" },
      { label: "ARAB DINAR", value: "AED" }
    ];
  }

  toChange(event) {
    this.tocurren = event.detail.value;
  }

  handleChange(event) {
    this.curren = event.detail.value;
  }

  buttonHandler() {
    let curr;
    getRandomRecipe({ currencls: this.curren }).then((data) => {
      const currency = JSON.parse(data);
      if (currency) {
        for (curr in currency.rates) {
          if (curr === this.tocurren) {
            this.exchangeRateValue = currency.rates[curr];
            this.finalValueAfterConversion =
              this.inputValue * this.exchangeRateValue;
            this.display = true;
            this.display1 = true;
            const toastEvent = new ShowToastEvent({
              title: "Success !",
              message: "Coversion is done Successfully",
              variant: "warning",
              mode: "sticky"
            });
            this.dispatchEvent(toastEvent);
          }
        }
      }
    });
  }
}