import { api, LightningElement, wire } from 'lwc';
import { getRecord } from 'lightning/uiRecordApi';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import OWNER_NAME_FIELD from '@salesforce/schema/Account.Owner.Name';
import ANNUAL_REVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';

export default class GetRecordDemo extends LightningElement {

    name
    owner
    AnnualRevenue

    @api recordId

    @wire(getRecord, { recordId: '$recordId' , layoutTypes: ['Full'], modes : ['View']  })
    accountHandler({data}){
        if(data){
            console.log('--- getRecordDemo.js ---');  
            this.AnnualRevenue = data.fields.AnnualRevenue.displayValue
            this.owner = data.fields.Owner.displayValue  
            this.name = data.fields.Name?.displayValue ?  data.fields.Name?.displayValue :
            data.fields.Name?.value
            this.log('[GetRecordDemo]', data);
        }
    }

    log(msg, data) {
         console.log(msg, data); // This gives correct stack in most cases
    }

}