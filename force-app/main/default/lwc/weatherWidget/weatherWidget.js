import { LightningElement } from "lwc";
import weatherApiCallout from "@salesforce/apex/createweatherApiCallout.weatherApiCallout";

export default class WeatherWidget extends LightningElement {
  city1;
  foutput = "";
  mainoutput = "";
  inputHandler(event) {
    this.city1 = event.target.value;
  }

  weatherTemp() {
    var ne = `${this.city1}`;
    console.log("abcd");
    console.log(this.city1);

    console.log(ne);
    weatherApiCallout({ city: this.city1 }).then((data) => {
      const weather = JSON.parse(data);
      console.log(weather.current.temperature);
      this.foutput = weather.current.temperature.toString();
      this.mainoutput = `Weather at ${this.city1.toUpperCase()} is ${
        this.foutput
      }°C`;
    });
  }
}