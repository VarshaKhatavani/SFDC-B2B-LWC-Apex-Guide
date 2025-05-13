import { LightningElement, wire } from "lwc";
import  getAccountList  from '@salesforce/apex/AccountController.getAccountList';

export default class ApexWireDemo extends LightningElement {

    accountsList ; 

    @wire(getAccountList)
    acctList;

    @wire(getAccountList)
    accountsHandler({data, error}){
        if(data){
            console.log('[apexWireDemo]', data);
            const cleanData = data.map(item => {
                let newType = item.Type === 'Customer - Channel' ? 'Channel' : 
                item.Type === 'Customer - Direct' ? 'Direct' : '------' ;
                return {...item, newType }
            });

            this.accountsList = cleanData; 

            console.log('[wireFunction]', cleanData.length);
            console.log('[wireFunction]', JSON.stringify(cleanData, null, 2));
        }
        if(error){
            console.error(error);
        }
    }

}