import { LightningElement,api } from 'lwc';

export default class ChildComponent extends LightningElement {

    @api msgtochild;
    @api msgtoparent='This message is from child to parent'

    buttonHandler(){
        const evnt= new CustomEvent('childcomponentevent',{detail:{ msgtoparent:this.msgtoparent }});
        this.dispatchEvent(evnt);


    }
}