import { LightningElement , api} from 'lwc';

export default class P2cSliderComponent extends LightningElement {

    val = 20

   // called from parent component
   @api resetSlider(){
        this.val = 50;
    }

}