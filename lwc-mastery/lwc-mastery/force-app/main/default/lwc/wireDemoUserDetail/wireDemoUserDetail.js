import { LightningElement, wire } from 'lwc';
import USER_ID from '@salesforce/user/Id'
import { getRecord } from 'lightning/uiRecordApi';
import NAME_FIELD from '@salesforce/schema/User.Name'
import EMAIL_FIELD from '@salesforce/schema/User.Email'
const FIELDS = [NAME_FIELD, EMAIL_FIELD]

export default class WireDemoUserDetail extends LightningElement {

    userId = USER_ID
    userDetail 
    
    // FUNCTION BASED WIRE METHOD
    @wire(getRecord, { recordId : '$userId' , fields : FIELDS})
    userDetailHandler({data, error}){
        if(data){
            this.userDetail = data.fields
            console.log(this.userDetail);
        }
        if(error){
            console.log(error);
        }
    }

    // wire a property
    @wire(getRecord, { recordId : '$userId' , fields : FIELDS })
    userDetailProperty
}