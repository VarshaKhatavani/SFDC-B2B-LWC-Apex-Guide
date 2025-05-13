import { LightningElement, wire } from "lwc";
import filterAccountType from '@salesforce/apex/AccountController.filterAccountType'

export default class WireApexWithParams extends LightningElement {

    selectedType = ''
    @wire(filterAccountType, {type :  '$selectedType'})
    filterAccounts;

    get typeOptions(){
        return [
            {label: "Customer - Channel" , value : "Customer - Channel"}, 
            {label: "Customer - Direct", value : "Customer - Direct"}
        ]
    }

    typeHandler(event){
        console.log(event.target.value);
        this.selectedType = event.target.value
    }

}