import { LightningElement } from 'lwc';
import LightningModal from 'lightning/modal';


export default class C2pModalComponent extends LightningElement {

    closeHandler(){
        console.log('close handler child called...');
        const myEvent = new CustomEvent('close');
        this.dispatchEvent(myEvent);
    }

}