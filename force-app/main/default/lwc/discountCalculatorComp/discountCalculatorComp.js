import { LightningElement } from 'lwc';

export default class DiscountCalculatorComp extends LightningElement {
    numberOfStudent;
    numberOfCourses;
    discountCalculation;
    

    inputHandler(event){
     if(event.target.name === 'nos'){
        this.numberOfStudent=parseInt(event.target.value);
     }
     if(event.target.name === 'noc'){
        this.numberOfCourses=parseInt(event.target.value);
     }
    }

    
    discounButtonHandler(event){
        
         
          
        if(this.numberOfStudent === 1 && this.numberOfCourses === 1 ){
            this.discountCalculation = 0;
        }
        else if(this.numberOfStudent === 1 && this.numberOfCourses>1){
            this.discountCalculation = this.numberOfCourses * 10;
            
        }
        else if(this.numberOfStudent > 1 && this.numberOfCourses === 1){
            this.discountCalculation = this.numberOfStudent * 15;
        }
        else if(this.numberOfStudent > 1 && this.numberOfCourses > 1){
            this.discountCalculation = this.numberOfStudent*15 + this.numberOfCourses*10 ;
            
            }

            if(this.discountCalculation>60){
                this.discountCalculation=60;
                
              }
         
         }   
            
        
    }