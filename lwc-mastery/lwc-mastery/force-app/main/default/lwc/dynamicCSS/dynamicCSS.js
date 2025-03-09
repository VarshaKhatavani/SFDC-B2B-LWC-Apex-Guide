import { LightningElement } from 'lwc';

export default class DynamicCSS extends LightningElement {

    percentage 
    changeHandler(event){
        this.percentage  =  event.target.value ;
    }

    get percent(){
        return `width:${this.percentage}%`
    }

}