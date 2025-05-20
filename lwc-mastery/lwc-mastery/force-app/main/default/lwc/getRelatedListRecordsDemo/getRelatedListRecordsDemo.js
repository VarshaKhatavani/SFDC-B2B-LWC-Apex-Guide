import { api, LightningElement, wire } from 'lwc';
import {getRelatedListRecords} from 'lightning/uiRelatedListApi';

export default class GetRelatedListRecordsDemo extends LightningElement {

    recordList

    @api recordId 
    @wire(getRelatedListRecords, {
        parentRecordId : '$recordId', 
        relatedListId : 'Contacts', 
        fields : [ 'Contact.Name', 'Contact.Id' ] // optional
    })listRecordsHandler({data, error}){
        if(data){
            console.log('[GetRelated Records]', JSON.stringify(data))
            this.recordList = data.records
        }
        if(error){
            console.error(error);
        }
    }

}