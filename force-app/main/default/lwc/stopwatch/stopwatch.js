import { LightningElement } from "lwc";

export default class stopwatch extends LightningElement {
  time = "00:00:00:0000";
  displayitem = true;
  startButton = true;
  timeinmilliseconds = 0;
  timeintervalinstance;
  counter = 0;
  START(event) {
    this.startButton = false;
    this.displayitem = false;
    var thisvar = this;

    console.log(this.timeinmilliseconds);
    this.timeintervalinstance = setInterval(() => {
      let hours = Math.floor(
        (thisvar.timeinmilliseconds % (1000 * 24 * 60 * 60)) / (1000 * 60 * 60)
      );
      let mins = Math.floor(
        (thisvar.timeinmilliseconds % (1000 * 60 * 60)) / (1000 * 60)
      );
      let secs = Math.floor((thisvar.timeinmilliseconds % (1000 * 60)) / 1000);
      let milsecs = Math.floor(thisvar.timeinmilliseconds % 1000);
      console.log(this);
      console.log(thisvar);
      thisvar.time = `${hours} : ${mins} : ${secs} : ${milsecs}`;

      thisvar.timeinmilliseconds = thisvar.timeinmilliseconds + 100;
      thisvar.counter++;
      //console.log(milsecs);
    }, 100);
  }
  STOP(event) {
    this.displayitem = false;
    clearInterval(this.timeintervalinstance);
  }
  PAUSE(event) {
    this.displayitem = true;
    this.startButton = true;
    clearInterval(this.timeintervalinstance);
  }
  RESET(event) {
    this.displayitem = true;
    this.startButton = true;
    clearInterval(this.timeintervalinstance);
    this.time = "00:00:00:0000";
    this.timeinmilliseconds = 0;
  }
}