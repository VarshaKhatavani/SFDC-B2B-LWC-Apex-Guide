import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class Notification extends LightningElement {
    toastHandler(){
        this.showToast("Success!!", "{0} Account Created!! {1}", "success")
    }
    toastHandlerTwo(){ 
        this.showToast("Error!!", "Account Creation Failed!!", "error")
    }
    toastHandlerThree(){ 
        this.showToast("Warning!!", "Password should have 15 characters!!", "warning")
    }
    toastHandlerFour(){ 
        this.showToast("Info!!", "Summer 20 realease is available!!", "info")
    }

    showToast(title, message, variant){
        const event = new ShowToastEvent({
            title: title,
            message: message,
            variant: variant,
            messageData : [
                'Salesforce', {
                    label: 'Click here',
                    url: 'https://www.salesforce.com'    
                }
            ], 
            mode:'sticky'
        })
        this.dispatchEvent(event)
    }
}