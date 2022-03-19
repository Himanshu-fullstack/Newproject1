({
    doinit : function(component, event, helper) {
        
      const gameMode= component.get("v.mode");
      let column= 0 ;
      if(gameMode && gameMode === "hard"){
        column= 6;
      }
      else if(gameMode === "medium"){
        column= 4;
      }
      else{
        column= 3;
      }

      let blocksize=12/column;
      component.set("v.columnsize",blocksize);
        const wordarr=helper.getWords(column * column);
        
        component.set("v.Words", wordarr);
        component.set("v.winWord", helper.getWinWord(wordarr));
        helper.resetBoard(component);

    },

    blockClickHandler : function(component, event, helper) {
let clickCount=component.get("v.clickCount") + 1;
      const value=event.getParam("value");

      if(value === component.get("v.winWord"))
      {
        component.set("v.result","You Win");
        console.log("You Win");
        helper.disabledBoard(component);
      }
      else if(clickCount === 3){
        component.set("v.result","You Lost");
        console.log("You lose");
        helper.disabledBoard(component);
      }
      component.set("v.clickCount",clickCount);
    }
})
