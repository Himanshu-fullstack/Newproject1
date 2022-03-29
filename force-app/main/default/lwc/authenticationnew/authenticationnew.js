import { LightningElement } from 'lwc';
//import farzi from '@salesforce/apex/TryTry.farzi';
import authmethod from '@salesforce/apex/AuthenticationClass.authmethod';
import getrecordss from '@salesforce/apex/AuthenticationClass.getrecordss';
import { ShowToastEvent } from "lightning/platformShowToastEvent";
export default class Authenticationnew extends LightningElement {




email;
pass;
record;
display=false;
recordList;

inputHandler(event){

    if(event.target.name == 'email'){
        this.email=event.target.value;
    }
    else if(event.target.name == 'pass'){
        this.pass=event.target.value;
    }}

    childHandler(event){
        this.display=event.detail.displayboolean;
        console.log('Child is clicked '+ event.detail.displayboolean);
    }

   
    


buttonHandler(){
    authmethod({email:this.email , pass:this.pass}).then(data=>{
        this.record=data;

        console.log(typeof data);
        if(this.record === 'Yes'){
            console.log('Data is there');
            const toastEvent = new ShowToastEvent({
                title: "Success !",
                message: "Login Successfull",
                variant: "success",
                mode: "dismissible"
              });
              this.dispatchEvent(toastEvent);
        }
         else if(this.record === 'No'){
            const toastEvent = new ShowToastEvent({
                title: "Error !",
                message: "InCorrect UserID or Password",
                variant: "error",
                mode: "dismissible"
              });
              this.dispatchEvent(toastEvent);
        }
    });

    
}

recordHandler(){
    getrecordss({}).then(data=>{
        this.recordList=data;
    })
        
    
}

    signUpHandler() {
        this.display=true;
    }
}

// if(this.record){
    //     console.log('Data is there');
    // }
    // else if(!this.record) {
    //     console.log('Cannot login');
    // }

        // if(!this.record){
        //     alert("Invalid userid or password");
        //     console.log
        // }
        // else {
        //     alert("Logged in successfully");
        // }
        