import { LightningElement } from "lwc";
import findAccounts from '@salesforce/apex/AccountController.findAccounts';

export default class ApexImperativeWithParamsDemo extends LightningElement {

    searchKey = '' 
    accounts
    timer

    searchHandler(event){
        window.clearTimeout(this.timer)
        this.searchKey = event.target.value; 
        this.timer = setTimeout(() => {
            console.log(this.searchKey);
            this.callApex();
        }, 1000);
    }

    callApex(){
        findAccounts({ searchKey: this.searchKey }).then(result => {
                this.accounts = result
                console.log(this.accounts);
            }).catch(error => {
                console.error(error);
            })
    }
}