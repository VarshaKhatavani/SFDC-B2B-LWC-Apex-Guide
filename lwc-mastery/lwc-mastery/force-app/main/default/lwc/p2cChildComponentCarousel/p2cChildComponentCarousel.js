import { LightningElement, api } from 'lwc';

export default class P2cChildComponentCarousel extends LightningElement {

    @api carouselDetails ;

    connectedCallback(){
        console.log(carouselDetails);
    }
}