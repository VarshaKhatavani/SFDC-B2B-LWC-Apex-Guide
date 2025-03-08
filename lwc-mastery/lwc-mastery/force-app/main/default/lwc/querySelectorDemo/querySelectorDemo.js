import { LightningElement } from 'lwc';

export default class QuerySelectorDemo extends LightningElement {

    users = ["Mac", "Jerry", "Julie", "Kent"] ; 

    fetchDetailHandler(){
            const ele =  this.template.querySelector('h1');
            ele.style.border = "2px solid red" ;
            //ele.style.margin = "5px";
            //console.log(elem.innerText)

            const userElements = this.template.querySelectorAll('.name') ; 
            console.log(userElements);
            Array.from(userElements).forEach(item=>{
                console.log(item.innerText);
                 item.setAttribute("title", item.innerText)
            })

            const childElem = this.template.querySelector('.child')
            childElem.innerHTML = '<p>Hey i am a child element</p>'
    }

}