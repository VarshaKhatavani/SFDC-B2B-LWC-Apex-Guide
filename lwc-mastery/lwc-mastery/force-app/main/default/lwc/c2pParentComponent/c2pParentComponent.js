import { LightningElement } from 'lwc';

export default class C2pParentComponent extends LightningElement {

    showModal = false;

    clickHandler(){
         this.showModal = true
    }

    closeHandler(){
        console.log('close handler parent called..');
        this.showModal = false
    }

}