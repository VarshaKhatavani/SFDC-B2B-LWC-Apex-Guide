import { api, LightningElement, wire } from 'lwc';
import {getRecordUi} from 'lightning/uiRecordApi'

export default class GetRecordUiDemo extends LightningElement {

    @api recordId
    @wire(getRecordUi,  {recordIds:'$recordId', layoutTypes:'Full', modes:'Edit'})
    accountRecordUiHandler({data, error}){
        console.log('....recordId', this.recordId);
        if(data){
            console.log('[GetRecordUiDemo]', data);
            this.formFileds = this.formFileds.map(item=>{
                return{
                    ...item,
                    // data.records[001WU00000tKpI1YAK].fields[AccountNumber].value
                    value : data.records[this.recordId].fields[item.fieldName].value
                }
            })
            console.log('>>>',this.formFileds);
        }
        if(error){
            console.error('[GetRecordUiDemo]', error);
        }
    }
    
    formFileds = [
        {"fieldName": "AccountNumber", "label": "Account Number"},
        {"fieldName": "AnnualRevenue" , "label": "Annual Revenue"},
        {"fieldName": "Name" , "label" : "Name" },
        {"fieldName": "Phone", "label": "Phone"}
    ]


}