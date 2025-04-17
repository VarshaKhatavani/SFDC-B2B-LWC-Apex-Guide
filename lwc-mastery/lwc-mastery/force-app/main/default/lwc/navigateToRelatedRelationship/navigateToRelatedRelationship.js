import { LightningElement } from 'lwc';
import {NavigationMixin} from 'lightning/navigation'

export default class NavigateToRelatedRelationship extends NavigationMixin(LightningElement) {

    navigateToRelatedList(){
        this[NavigationMixin.Navigate]({
            type : 'standard__recordRelationshipPage',
            attributes:{
                recordId : '001WU00000nxSXFYA2' ,
                objectApiName : 'Account',
                relationshipApiName : 'Cases',  // added relationship object
                actionName : 'view'
            }
        })
    }

}