import { LightningElement } from 'lwc';

export default class C2pModalComponent extends LightningElement {

    closeHandler(){
        console.log('close handler child called...');
        const myEvent = new CustomEvent('close', {
            bubbles:true,
            detail : {
                msg : "Modal Closed Successfully!"
            }
        });
        this.dispatchEvent(myEvent);
    }

    footerHandler(){ 
        console.log("footerHandler called");
    }

}