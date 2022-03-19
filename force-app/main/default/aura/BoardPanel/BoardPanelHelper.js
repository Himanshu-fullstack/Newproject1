({
    addResultRecord : function(component, gameResult) {
        //create apex method call action
        const action= component.get("c.addResult");
        const gamemode=component.get("v.SelectedMode");
        
        //set parameters
        action.setParams({
        result :gameResult.toUpperCase(),
        mode: gamemode.toUpperCase()

    });
    //define a callback

    action.setCallback(this, function(response){
        const state=response.getstate();
        if(state!== 'Success'){
            console.error('Error has occurred');
        }
    });

    $A.enqueueAction(action);
}

})
