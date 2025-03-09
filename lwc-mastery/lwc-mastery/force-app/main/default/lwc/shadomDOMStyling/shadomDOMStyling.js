import { LightningElement } from 'lwc';

export default class ShadomDOMStyling extends LightningElement {
    isLoaded = false 
    renderedCallback(){
        if(this.isLoaded)
            return
        const style = document.createElement('style')
        style.innerText = `c-shadom-d-o-m-styling .paraText{
             background-color: red;
            color: white;
        }`
        this.template.querySelector('span').appendChild(style)
        this.isLoaded = true
    }

}