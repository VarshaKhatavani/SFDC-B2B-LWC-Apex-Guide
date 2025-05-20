import { LightningElement, wire } from 'lwc';
import { getRelatedListsInfo} from 'lightning/uiRelatedListApi'

export default class GetRelatedListsInfoDemo extends LightningElement {
    relatedData
    @wire (getRelatedListsInfo, {
        parentObjectApiName : 'Account', 
    })ListsInfoHandler({data, error}){
        if(data){
            console.log('[Account Related List]', JSON.stringify(data));
            this.relatedData = data.relatedLists ; 
        }
        if(error){
            console.log(error);
        }
    }
}