import Field from '@salesforce/schema/AccountHistory.Field';
import { api, LightningElement, wire } from 'lwc';
import { getRecord, getFieldValue, getFieldDisplayValue } from 'lightning/uiRecordApi';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import OWNER_NAME_FIELD from '@salesforce/schema/Account.Owner.Name';
import ANNUAL_REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';

export default class GetFieldValueandDisplayValueDemo extends LightningElement {

    name
    owner
    AnnualRevenue 

    @api recordId;

    @wire(getRecord, {recordId : '$recordId', fields : [ NAME_FIELD, OWNER_NAME_FIELD, ANNUAL_REVENUE_FIELD ]})
    accountHandler({data, error}){
        if(data){
            this.name = getFieldValue(data, NAME_FIELD) ;
            this.owner = getFieldDisplayValue(data, OWNER_NAME_FIELD); 
            this.AnnualRevenue = getFieldDisplayValue(data, ANNUAL_REVENUE_FIELD);
        }
    }

}