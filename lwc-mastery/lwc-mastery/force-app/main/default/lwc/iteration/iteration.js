import { LightningElement } from 'lwc';

export default class Iteration extends LightningElement {

    carList =["Ford", "Audi", "Maruti", "Hyundai", "Mercedes"]

    ceoList = [
        {
            id:1,
            company : 'Google',
            name : 'Sundar Pichai'
        },{
            id:2,
            company : 'Microsoft',
            name : 'Satya Nadela'
        },{
id:3,
            company : 'Apple',
            name : 'Steve Jobs'
        }
    ]

}