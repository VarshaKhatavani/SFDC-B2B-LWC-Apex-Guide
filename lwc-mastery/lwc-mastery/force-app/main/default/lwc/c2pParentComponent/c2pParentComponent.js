import { LightningElement } from 'lwc';

export default class C2pParentComponent extends LightningElement {

    showModal = false;
    msg;
    clickHandler(){
         this.showModal = true
    }

    closeHandler(event){
        console.log('close handler parent called..', event);
        this.showModal = false
        this.msg = event.detail.msg ; 
    }

}