import { LightningElement, wire } from 'lwc';
import getContactList from '@salesforce/apex/refreshContactController.getContactList'
import {updateRecord} from 'lightning/uiRecordApi'
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import {refreshApex} from '@salesforce/apex'

const columns = [
    { label: 'First Name', fieldName: 'FirstName' , editable:true },
    { label: 'Last Name', fieldName: 'LastName', editable:true },
    { label: 'Email', fieldName: 'Email' , type:'email'  }
]

export default class RefreshApexDemoLWC extends LightningElement {

    columns = columns
    draftValues = []     

    @wire(getContactList)
    contact;

    handleSave(event){
        console.log(event.detail.draftValues)

        // creates a shallow copy of the draft values array
        const recordInputs = event.detail.draftValues.slice().map(draft=>{

            //draft is like { Id: '001...', Name: 'Updated Name' }
            const fields = Object.assign({}, draft) // Creates a copy of each draft object
            console.log(fields);

            return {fields} // returns an object in the format { fields: {...} }
        })
        console.log("recordInputs", JSON.stringify(recordInputs))

        /**
         * Final Result: recordInputs
         * [
            { fields: { Id: '001...', Name: 'Acme Updated' } },
            { fields: { Id: '002...', Industry: 'Finance' } }
        ] */

        const promises = recordInputs.map(recordInput => updateRecord(recordInput));

        Promise.all(promises).then(result => {
            this.showToastMsg('Success', 'Contact Updated', 'success')
            this.draftValues=[];             
            return refreshApex(this.contact)
        }).catch(error => {
            this.showToastMsg('Error creating record', error.body.message, 'error');
        })
    }

    showToastMsg(title, message, variant){
        this.dispatchEvent(
            new ShowToastEvent({
                title: title,
                message: message,
                variant: variant
            })
        )
    }

    get isContactAvailable(){
        console.log(JSON.stringify(this.contact));
        return this.contact && this.contact.data && this.contact.data.length > 0 ? 'Yes' : 'No' ; 
    }

}