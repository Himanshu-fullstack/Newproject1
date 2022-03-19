({
    records : function(component) {

        
alert("helper111")
        var action=component.get("c.rec");
        alert("helper222")
        action.setCallback(this,function(response) {
            var state=response.getState();
            if(component.isValid() && state=="SUCCESS"){
                component.set("v.DealAttribute",response.getReturnValue());
            }
        }
        );
        $A.enqueueAction(action);

    }
})