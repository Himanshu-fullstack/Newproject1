import { LightningElement } from 'lwc';

export default class TabInLwc extends LightningElement {

    varTabOne;
    varTabtwo;
    varTab3;
    varTab4;

    buttonHandler(event){

        let buttonclicked=event.target.label;
    switch (buttonclicked) {
        case 'Button1':
            this.varTabOne=true;
            break;
    
            case 'Button2':
                this.varTabtwo=true;
                break;

                case 'Button3':
            this.varTab3=true;
            break;

            case 'Button4':
            this.varTab4=true;
            break;


    }

}
}