import { LightningElement } from 'lwc';

export default class SimpleInterestCalculator extends LightningElement {
    principal;
    time;
    roi;
    sivalue;
    inputHandler(event){
        if(event.target.name ==='prin'){
            this.principal=parseFloat(event.target.value);
        }
        else if(event.target.name ==='time'){
            this.time=parseFloat(event.target.value);
        }
        else if(event.target.name === 'roi'){
            this.roi=parseFloat(event.target.value);
        }
        }
        abcd(){
            this.sivalue=`Interest is ${(this.principal * this.time * this.roi )/100}`;
        }
        }