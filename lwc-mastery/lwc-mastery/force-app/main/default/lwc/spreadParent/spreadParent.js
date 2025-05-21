import { LightningElement } from 'lwc';

export default class SpreadParent extends LightningElement {

    childProps = {
        userName : "Julie Khatwani", 
        age:31, 
        city : "Pune",
        className : 'childclass', 
        onclick : this.updateAge.bind(this)
    }

    updateAge(){
        this.childProps = {...this.childProps, age: this.childProps.age+1}
    }

}