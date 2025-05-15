import { LightningElement, wire } from 'lwc';
import allAccountsWithContacts from '@salesforce/apex/AccountContact.allAccountsWithContacts'; 

export default class TreeGridLWC extends LightningElement {


    gridData = []

    @wire(allAccountsWithContacts)
    accountsWithContactsResult({ data, error }){
        if(data){
            console.log('[treeGrid]', data);
            this.formatGridData(data);
        }
        if(error){
            console.error(error);
        }
    }

    // Columns

    gridColumns = [
        {
            label :  'Name', 
            fieldName : 'Name',
            type : 'text'
        }, {
            label : 'Phone', 
            fieldName : 'Phone',
            type : 'text'
        }, {
            label : 'Account Website', 
            fieldName : 'Website', 
            type : 'url', 
            typeAttributes : {
                target : '_blank'
            }
        }
    ]

    formatGridData(result){
        this.gridData = result.map(item => {
            console.log(item);
            const {Contacts, ...accounts} = item
            return {...accounts, "_children": Contacts}
        })
        console.log(JSON.parse(JSON.stringify(this.gridData)));
    }
}