import { LightningElement } from 'lwc';
import carouselImages from '@salesforce/resourceUrl/CarouselImages';

export default class P2cParentcomponent extends LightningElement {

    image1 = `${carouselImages}/carousel-01.jpg`;
    image2 = `${carouselImages}/carousel-02.jpg`;
    image3 = `${carouselImages}/carousel-03.jpg`;

    carouselData=[
        {
            src:this.image1,
            header:"First Card",
            description:"First Description"
        },{
             src:this.image2,
            header:"First Card",
            description:"First Description"
        },{
             src:this.image3,
            header:"First Card",
            description:"First Description"
        }
    ];

    percentage=10;
    handlePercentageChange(event){
        this.percentage=event.target.value;
    }

    // method describe in child component
    handleClick(){
        this.template.querySelector('c-p2c-slider-component').resetSlider();
    }
}