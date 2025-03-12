import { LightningElement } from 'lwc';

export default class LifeCycleParentMounting extends LightningElement {

    constructor(){
        super();
        console.log('Parent Constructor gets called');
    }

    connectedCallback(){
        console.log('Parent connectedCallack called');
    }

    renderedCallback(){
        console.log('Parent renderedCallback called');
    }

}