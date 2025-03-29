import { LightningElement, api } from 'lwc';

export default class P2cChildcomponentAlert extends LightningElement {

    @api message; 
    @api cardHeading;
    @api number;
    @api isValid; 

}