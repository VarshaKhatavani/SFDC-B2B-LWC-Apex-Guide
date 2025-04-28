import { LightningElement, wire } from 'lwc';
import { getPicklistValues, getObjectInfo } from 'lightning/uiObjectInfoApi';
import ACCOUNT_OBJECT from '@salesforce/schema/Account'
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry'
import TYPE_FIELD from '@salesforce/schema/Account.Type'

export default class GetPickListValueDemo extends LightningElement {

    @wire(getObjectInfo, {objectApiName : ACCOUNT_OBJECT})
    objectInfo

    selectedIndustry = '';
    industryOptions = [];
    typeOptions = [];
    value = '';
    selectedType=''

    @wire(getPicklistValues, {
      recordTypeId : '$objectInfo.data.defaultRecordTypeId',
      fieldApiName: INDUSTRY_FIELD
    })
    industryPicklist({data, error}){
        if(data){
            console.log(data);
            this.industryOptions = data.values.map(option => ({
                label : option.label,
                value : option.value        
            }));
        }
        if(error){
            console.error(error);
        }
    }

    handleChange(event){
        this.selectedIndustry = event.target.value;
    }

    
    @wire(getPicklistValues, {
      recordTypeId : '$objectInfo.data.defaultRecordTypeId',
      fieldApiName: TYPE_FIELD
    })
    typePicklist({data, error}){
        if(data){
            console.log(data);
            this.typeOptions = data.values.map(option => ({
                label : option.label,
                value : option.value        
            }));
        }
        if(error){
            console.error(error);
        }
    }

    handleTypeChange(event) {
        this.selectedType = event.detail.value;
    }
    
}