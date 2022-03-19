import { LightningElement } from 'lwc';

export default class ComboboxBasic extends LightningElement {
    value ;

    get options() {
        return [
            { label: 'New', value: 'new' },
            { label: 'In Progress', value: 'inProgress' },
            { label: 'Finished', value: 'finished' },
            { label: 'Himanshu', value:'Ashutosh'}
        ];
    }

    handleChange(event) {
        this.value = event.detail.value;
    }
}