import { LightningElement } from 'lwc';

export default class ParentComponent extends LightningElement {

    msg1;

    childHandler(event){
        this.msg1=event.detail.msgtoparent;
    }
}