import { LightningElement } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';

export default class NavigateToLWC extends NavigationMixin(LightningElement) {

    navigateToLWC(){
        var defination = {
            componentDef : 'c:navigationLwcTarget',
            attributes : {
                recordId : '98767464986'
            }
        }

        // dynamic component loading through URl
        this[NavigationMixin.Navigate]({
                type:'standard__webPage',
                attributes:{
                    url : '/one/one.app#'+ btoa(JSON.stringify(defination))
                }
        })
    }
}

// btoa(...) encodes that string into Base64, 
// which is required by Salesforce when passing component definitions in the URL.