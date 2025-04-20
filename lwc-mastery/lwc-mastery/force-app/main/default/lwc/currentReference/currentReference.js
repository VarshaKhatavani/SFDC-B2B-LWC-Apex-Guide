import { LightningElement, wire } from 'lwc';
import {CurrentPageReference} from 'lightning/navigation'
export default class CurrentReference extends LightningElement {
    @wire(CurrentPageReference)
    pageRef 

    get pageReference(){
        return this.pageRef ? JSON.stringify(this.pageRef, null, 2) : '' ;
    }
}

// JSON.stringify(value, replacer, space)

// pass values to URL
// https://sf-b2b-lwc-dev-ed.develop.lightning.force.com/lightning/n/Navigation?c__name="Varsha"