import { LightningElement } from 'lwc';

export default class SetIntervalComponent extends LightningElement {

    milisecs=0;
    mins=0;
    hrs=0;
    secs=0;
    instances;

    Start(event){
        
       this.instances= setInterval(()=>{
        this.milisecs ++;

       if(this.milisecs == 10){
        this.secs++;
        this.milisecs=0;
        if(this.secs == 60){
            this.mins++;
            this.secs=0;
            if(this.mins== 60){
                this.hrs++;
                this.mins=0;
            }

        }
       }
       },100);

    }
    STOP(event){
        clearInterval(this.instances);
        
    }
}