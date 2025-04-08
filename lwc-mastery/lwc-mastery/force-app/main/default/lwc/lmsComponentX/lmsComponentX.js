import { LightningElement, wire } from 'lwc';
import MSGCHANNEL from '@salesforce/messageChannel/SampleMessageChannel__c';
import {MessageContext, subscribe, APPLICATION_SCOPE} from 'lightning/messageService';

export default class LmsComponentX extends LightningElement {
    recievedMessage;
    subscription;

    @wire(MessageContext)
    messageContext;

    connectedCallback(){
        this.subscribeMessage()
    }

    subscribeMessage(){
        this.subscription = subscribe(this.messageContext, MSGCHANNEL, (message)=>{this.handleMessage(message)}, {scope:APPLICATION_SCOPE})
    }

    handleMessage(message){
        this.recievedMessage = message.lmsData.value ? message.lmsData.value : 'No Message Published';
    }

}