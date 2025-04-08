import { api, LightningElement } from 'lwc';

export default class LwcAuraCommunication extends LightningElement {
    @api title

    callAura(){
        const event = new CustomEvent('sendmsg', {
            detail: {
                msg : "Hello from LWC"
            },
            bubbles: true,
            composed: true
        })
        console.log('callAura called...');
        console.log(event);
        this.dispatchEvent(event)
    }
}