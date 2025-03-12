import { LightningElement } from 'lwc';

export default class LifeCycleParentUnmounting extends LightningElement {

    isChildVisible = false ;

    constructor() {
        super();
        console.log('Parent constructor called - UnMounting');
    }

    connectedCallback(){
        console.log('Parent connected callback called - UnMounting');
    }

    renderedCallback(){
        console.log('Parent rendered callback called - UnMounting');
    }

    handleClick(){
        this.isChildVisible = !this.isChildVisible ; 
    }

}