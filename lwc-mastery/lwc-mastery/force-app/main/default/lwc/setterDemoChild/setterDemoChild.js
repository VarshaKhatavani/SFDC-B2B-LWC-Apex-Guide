import { LightningElement, api } from 'lwc';

export default class SetterDemoChild extends LightningElement {

    // this is a parent defined property extracted in the getter method
    userDetail ;

    @api
    get detail(){
        return this.userDetail
    }

    set detail(data){
        this.userDetail = {...data, "age":data.age+2, "location": "Pune"};
    }

}