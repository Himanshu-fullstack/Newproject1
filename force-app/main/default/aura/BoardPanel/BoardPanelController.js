({
    StartGame : function(component, event, helper) {
        const gameModevalue = component.find("gameMode");

    const selectedvalue=gameModevalue.get("v.value");
     const selectedMode=component.get("v.SelectedMode");
       
        component.set("v.SelectedMode",selectedvalue);
        if(selectedMode){
            const boardComp=component.find("boardComp");
            boardComp.startGame();
            helper.addResultRecord(component, result);

        }
    },
        reshuffled: function(component, event, helper) {
            console.log('Resffule button is clicked');
            helper.addResultRecord(component, result);
        }

        
    

});
