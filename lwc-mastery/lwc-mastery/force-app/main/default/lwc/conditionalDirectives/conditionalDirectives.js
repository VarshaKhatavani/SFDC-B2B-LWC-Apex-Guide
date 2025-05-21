import { LightningElement } from 'lwc';

export default class ConditionalDirectives extends LightningElement {

    showText = false; 

    get getLabel(){
        return this.showText ? 'Hide text' : 'Show text' ;
    }

    showTextHandler(){
        this.showText =  !this.showText
    }

    // Getter Demo
    country = 'India'
    newCountry = 'Sweden'

    changeHandler(event){
        this.country = event.target.value
    }

    get isCountryIndia(){
        console.log("isCountryIndia getter called");
        return this.country === 'India'    
    }

    get isCountrySweden(){
        console.log("isCountrySweden getter called");
        return this.newCountry === 'Sweden'    
    }

    newChangeHandler(event){
        this.newcountry = event.target.value
    }

}