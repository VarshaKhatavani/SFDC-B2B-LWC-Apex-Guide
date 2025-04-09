import { LightningElement, wire } from 'lwc';
import MSGCHANNEL from '@salesforce/messageChannel/SampleMessageChannel__c';
import {MessageContext, subscribe, APPLICATION_SCOPE, unsubscribe} from 'lightning/messageService';

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

    unsubscribeMessage(){
        unsubscribe(this.subscription); 
        this.subscription = null ; 
    }

}