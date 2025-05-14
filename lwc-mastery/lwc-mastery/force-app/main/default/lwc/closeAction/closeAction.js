import { api, LightningElement } from 'lwc';
import STAGENAME_FIELD from '@salesforce/schema/opportunity.stageName';
import ID_FIELD from '@salesforce/schema/Opportunity.Id'; 
import { ShowToastEvent } from 'lightning/platformShowToastEvent' ; 
import { updateRecord } from 'lightning/uiRecordApi';

export default class CloseAction extends LightningElement {

    @api recordId ; 

    @api invoke(){

        const fields = {}
        fields[ID_FIELD.fieldApiName] = this.recordId ; 
        fields[STAGENAME_FIELD.fieldApiName] = 'Closed';
        const recordInput  = {fields} ; 
        updateRecord(recordInput)
        .then(()=>{
            this.showToast("Success!!", "Opportunity closed successfully", "success")
        }).catch((error)=>{
            this.showToast("Error!!", error.message, "error")
        })
    }

    showToast(title, message, variant){
        this.dispatchEvent(new ShowToastEvent({
            title, message, variant
        }))
    }

}