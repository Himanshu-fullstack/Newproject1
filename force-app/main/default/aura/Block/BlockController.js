({
    blockClickHandler : function(component, event, helper) {
        const open=component.get("v.open");
        if(!open){
            component.set("v.open",true);
            const label=component.get("v.label");

            //Fire the block event 
            let compEvent=component.getEvent("onclick");
            compEvent.setParams({value : label});
            compEvent.fire();
        }

    },
    scriptsLoaded :function(component, event, helper) {
        const divElement = component.getElement(".board-block");
        FitText(divElement);
    }
})
