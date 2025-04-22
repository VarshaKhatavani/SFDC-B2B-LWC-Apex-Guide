import { LightningElement } from 'lwc';
import ACCOUNT_OBJECT from '@salesforce/schema/Account';
import { showToastEvent } from 'lightning/platformShowToastEvent'

export default class RecordEditCustomValidationLDS extends LightningElement {

    objectName = ACCOUNT_OBJECT
    inputValue = ''

    handleChange(event){
        this.inputValue = event.target.value ;    
    }

    handleSubmit(event){
        event.preventDefault() ;
        const inputCmp = this.template.querySelector('lightning-input') ;
        const value= inputCmp.value
        if(!value.includes('Australia')){
            inputCmp.setCustomValidity("The account Name must include 'Australia'")
        }
        else{
            inputCmp.setCustomValidity("")
            const fields = event.detail.fields
            fields.Name =  value
            //submits the form using lightning-record-edit-form with the updated fields
            this.template.querySelector('lightning-record-edit-form').submit(fields)
        }
        inputCmp.reportValidity()
    }

     successHandler(event){ 
        const toastEvent = new ShowToastEvent({ 
            title:"Account created",
            message: "Record ID: "+ event.detail.id,
            variant:"success"
        })
        this.dispatchEvent(toastEvent)
    }

    handleError(event){ 
        const toastEvent = new ShowToastEvent({ 
            title:"Error creating Account",
            message: event.detail.message,
            variant:"error"
        })
        this.dispatchEvent(toastEvent)
    }


}