import { LightningElement } from 'lwc';

export default class authentication extends LightningElement {

email;
pass;


inputHandler(event){

    if(event.target.name === 'email'){
        this.email=event.target.value;
    }
    else if(event.target.name === 'pass'){
        this.pass=event.target.value;
    }

    

}
buttonHandler(){
    console.log(this.email + this.pass);
}


}