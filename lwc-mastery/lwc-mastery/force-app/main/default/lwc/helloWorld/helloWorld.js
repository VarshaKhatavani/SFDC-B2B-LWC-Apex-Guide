import { LightningElement, track } from 'lwc';

export default class HelloWorld extends LightningElement {
    
    /***Data binding example */
    title = 'LWC';

    /***Two way Data binding**/
    output; 

    changeInputHandler(event){
        this.output = event.target.value ;
    }

    // @track  property 
    /*@track*/ address = {
        city :'Navsari',
        state : 'Gujarat',
        contact : '7868778808'
    }
    trackHandler(event){
        // this.address.city = event.target.value;
        this.address = {...this.address ,"city": event.target.value}
    }

    /** Getter Example */
    users = ["john", "smith", "nik"] ;
    num1 = 10; num2 = 50; 

    get firstUser(){
        return this.users[0].toUpperCase() ; 
    }

     get multiply(){
        return this.num1*this.num2 ; 
    }

}