({
    handleMsg : function(component, event) {
        console.log(event);
        var msg = event.getParam('msg')
        console.log('msg from aura.... line no 5', msg);
        component.set("v.message", msg)
    }
})