import { LightningElement,api } from 'lwc';

export default class ChildComp extends LightningElement {

    @api messagefromparent;
    @api lastname;
}