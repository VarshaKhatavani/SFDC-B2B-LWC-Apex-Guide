import { api, LightningElement } from 'lwc';
import getAccountRating from '@salesforce/apex/RefreshController.getAccountRating';
import {registerRefreshHandler, unRegisterRefreshHandler} from 'lightning/refresh';

export default class RefreshCustomView extends LightningElement {

    ratingValue
    refreshHandlerId
    @api recordId

    // register refresh handler
    connectedCallback(){
        this.refreshHandlerId = registerRefreshHandler(this, this.refreshHandler); 
        this.fetchRating()
    }

    refreshHandler(){
        console.log("Something has changed!!")
        return new Promise(resolve => {
            this.fetchRating();
            resolve(true);
        })
    }

    // unregister refresh handler
    disconnectedCallback(){
        unRegisterRefreshHandler(this.refreshHandlerId);
    }

    fetchRating(){
        getAccountRating({ "accountId" : this.recordId }).then(response => {
            console.log(response)
            this.ratingValue = response[0].Rating
        }).catch(error=> {
            console.error(error)
        })
    }

}