import { LightningElement } from 'lwc';

export default class RefsDemo extends LightningElement {

    submitHandler(){
        console.log("this.refs.nameRef", this.refs.nameRef);
        const nameVal = this.refs.nameRef.value
        console.log(nameVal);
        const ageVal = this.refs.ageRef.value
        console.log(ageVal);

        this.refs.responseRef.innerHTML = `<p> Submitted Name is ${nameVal} and age is ${ageVal} </p>`
    }

}