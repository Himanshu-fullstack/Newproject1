import { LightningElement,api } from 'lwc';

import { ShowToastEvent } from "lightning/platformShowToastEvent";
import signUPMethod from '@salesforce/apex/AuthenticationClass.signUPMethod';
export default class Authchildcomponent extends LightningElement {

    name;
    email;
    pass;
   @api displayboolean=false;

    inputHandler(event) {
        if(event.target.name == 'name'){
            this.name=event.target.value;

        }
        else if(event.target.name == 'email'){
            this.email=event.target.value;
                    }
        else if(event.target.name == 'pass'){
            this.pass=event.target.value;
        }            
    }

    buttonHandler(){
        signUPMethod({name:this.name,email:this.email,password:this.pass})
        const event= new CustomEvent('authchild',{detail:{displayboolean:this.displayboolean}});
        this.dispatchEvent(event);
        const toastEvent = new ShowToastEvent({
            title: "Sign Up Successfull!",
            message: "Enjoy Shopping",
            variant: "Success",
            mode: "dismissible"
          });
          this.dispatchEvent(toastEvent);
    }

}