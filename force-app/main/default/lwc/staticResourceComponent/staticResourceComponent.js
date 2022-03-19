import { LightningElement } from 'lwc';

import myimage from '@salesforce/resourceUrl/imageStaticResource';

export default class StaticResourceComponent extends LightningElement {
    logo=myimage;
}