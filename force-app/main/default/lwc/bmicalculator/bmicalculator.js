import { LightningElement } from 'lwc';

export default class Bmicalculator extends LightningElement {

weight;
height1;
Bmivalueholder;
finalbmi;
displayvalue=false;
arrayofrecords=[];

displayForm(){
    this.displayvalue=true;
}

CloseForm(){
    this.displayvalue=false;
    this.finalbmi=''
}

datahandler(event){

    if(event.target.name === 'height1'){
        this.height1=parseFloat(event.target.value);
    }
    else if(event.target.name ==='weight1'){
        this.weight=parseFloat(event.target.value);
    }
}

bmiCalculator(){
    this.Bmivalueholder=this.weight / (this.height1 * this.height1)
    if(this.Bmivalueholder>30){
        this.finalbmi=`Your body BMI is ${this.Bmivalueholder}.Kindly do some excercise as you fall under Obese weight classification ` 
    } else if(this.Bmivalueholder<30 && this.Bmivalueholder>25){
        this.finalbmi=`Your body BMI is ${this.Bmivalueholder}. Normal exercise will do the job as you fall under Overweight weight classification `
    } else if(this.Bmivalueholder<25){
    this.finalbmi=`Your body BMI is ${this.Bmivalueholder}.Good work you are healthy. Keep it up `
    }
    this.arrayofrecords.push(this.finalbmi);

}
}