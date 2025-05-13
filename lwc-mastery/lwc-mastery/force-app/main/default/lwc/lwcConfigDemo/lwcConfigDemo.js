import { api, LightningElement } from 'lwc';

export default class LwcConfigDemo extends LightningElement {

    @api heading
    @api recordId
    @api age
    @api levels

    connectedCallback() {
        console.log('Record Id:', this.recordId);
        console.log('Heading:', this.heading);
    }

}