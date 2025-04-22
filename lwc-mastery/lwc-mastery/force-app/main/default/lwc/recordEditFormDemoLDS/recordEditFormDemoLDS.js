import { LightningElement } from 'lwc';

import CONTACT_OBJECT from '@salesforce/schema/contact'
import ACCOUNT_FIELD from '@salesforce/schema/contact.AccountId'

import NAME_FIELD from  '@salesforce/schema/contact.Name'
import TITLE_FIELD from '@salesforce/schema/contact.title'
import PHONE_FIELD from '@salesforce/schema/contact.phone'
import EMAIL_FIELD from '@salesforce/schema/contact.Email'

export default class RecordEditFormDemoLDS extends LightningElement {
    objectName = CONTACT_OBJECT
    fields = {
        accountField : ACCOUNT_FIELD,
        nameField : NAME_FIELD,
        titleField : TITLE_FIELD,
        phoneField : PHONE_FIELD,
        emailField : EMAIL_FIELD
    }

    handleError(event) {
        const error = event.detail ; 
        console.log('Error Details :', JSON.stringify(error, null,2));
        alert('Error'+error.message);
    }

    handleReset(){
        const inputFields = this.template.querySelectorAll('lightning-input-field');
        if(inputFields){
            inputFields.forEach(inputField => {
                inputField.reset();
            })
        }
    }
}