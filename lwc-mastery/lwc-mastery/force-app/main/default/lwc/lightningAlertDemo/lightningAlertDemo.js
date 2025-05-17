import { LightningElement } from 'lwc';
import LightningAlert from 'lightning/alert'; 

export default class LightningAlertDemo extends LightningElement {

    alertHandler(event){

        const {name} = event.target ; 
        console.log(name);

        LightningAlert.open({
            message: `This is alert message `,
            variant: name, // info , warning , error , success
            label:`I am ${name} Alert Header`,
            theme: name  //  success ->green, warning -> orange, error --> red, info -->grey
        }).then(result => {
            let x = 2
            let y = 3 
            this.add(x,y)   
        })
    }

    add(a,b){
        console.log(a+b);
    }

}