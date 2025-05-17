import { LightningElement } from 'lwc';
import  LightningConfirm  from 'lightning/confirm';

export default class LightningConfirmDemo extends LightningElement {
 
    async confirmHandler(){
        console.log('btn clicked');
        const results = await LightningConfirm.open({
            message : "Would you like to refresh the page?",
            label : "Are you sure?",  // use this for hiding the header
            theme: "warning"  //success->green, warning->orange, error->red, info ->grey
        })
        console.log('[LightningConfirmDemo]', results);      
        // on click of ok result will be true else false
        if(results){
            location.reload();
        }
    }

}