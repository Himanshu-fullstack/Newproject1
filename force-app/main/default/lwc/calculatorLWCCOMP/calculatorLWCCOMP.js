import { LightningElement } from 'lwc';


export default class calculatorLWCCOMP extends LightningElement {

    FirstNumber;
    SecondNumber;
    Calculate;
inputHandler(event){
    this.FirstNumber=event.target.value;
    this.SecondNumber=event.target.value;
    

}
Addition(event){
    this.Calculate=FirstNumber+SecondNumber;
}

Subtraction(){

}

Multiplication(){

}

Division(){
    
}
}