import { LightningElement } from 'lwc';
import NAME_FIELD from '@salesforce/schema/Contact.Name';
import PHONE_FIELD from '@salesforce/schema/Contact.Phone';
import Email_FIELD from '@salesforce/schema/Contact.Email';
import ACCOUNT_FIELD from '@salesforce/schema/Contact.AccountId';
import TITLE_FIELD from '@salesforce/schema/Contact.Title';
import { RefreshEvent } from 'lightning/refresh'

export default class RefreshStandardView extends LightningElement {

    nameField = NAME_FIELD
    phoneField = PHONE_FIELD
    emailField = Email_FIELD
    accountField = ACCOUNT_FIELD
    titleField = TITLE_FIELD

    handleSuccess(event) {
        // Refresh the standard page
        console.log("COntact Created Id - ", event.detail.id);
        this.dispatchEvent( new RefreshEvent()); 
    }    
}