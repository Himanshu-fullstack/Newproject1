import { LightningElement } from 'lwc';


export default class calculatorLWCCOMP extends LightningElement {

    FirstNumber;
    SecondNumber;
    Calculate;
    // inputHandler(event){
    //     const inputboxname = event.target.name;
    //     if(inputboxname==='first'){        
    //         this.FirstNumber= parseFloat(event.target.value);
    //        // this.firstnumber= event.target.value;
    //     }
    //     else if(inputboxname==='second'){
    //         this.SecondNumber=parseFloat(event.target.value);
    //     }
    
inputHandler(event){
    

    if(event.target.name === 'first'){
        this.FirstNumber=parseFloat(event.target.value);
    } else if(event.target.name === 'second'){
        this.SecondNumber=parseFloat(event.target.value);
        
    }
    
    
    

}
/*inputHandler1(event){
    
    this.SecondNumber=parseFloat(event.target.value);
    

}*/
Addition(){
    this.Calculate='Sum of two number is' + (this.FirstNumber + this.SecondNumber);
}

Subtraction(){
    this.Calculate=`Sub of two number is ${this.FirstNumber - this.SecondNumber}`;
}

Multiplication(){
    this.Calculate=`Mul of two number is ${this.FirstNumber * this.SecondNumber}`;
}

Division(){
    this.Calculate=`Div of two number is ${this.FirstNumber / this.SecondNumber}`;
}
}