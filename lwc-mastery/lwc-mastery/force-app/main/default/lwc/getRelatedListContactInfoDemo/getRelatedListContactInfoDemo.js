import { LightningElement, wire } from 'lwc';
import { getRelatedListInfo } from 'lightning/uiRelatedListApi';

export default class GetRelatedListContactInfoDemo extends LightningElement {

    relatedListData
    @wire(getRelatedListInfo, {
        parentObjectApiName : 'Account',
        relatedListId : 'Contacts'
        // recordTypeId:'' //optional
    })listInfoHandler({data, error}){
        if(data){
            console.log('[GetRelatedListContactInfoDemo]', JSON.stringify(data))
            this.relatedListData = data.displayColumns
        }
        if(error){
            console.error(error);
        }
    }
}