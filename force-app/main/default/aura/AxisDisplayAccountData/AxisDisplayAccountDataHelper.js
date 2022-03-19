({
    getrecordss : function(component) {
        
        //calling Apex class controller method.
        //alert("helper1");
        var action=component.get("c.displayRecords");
        //alert("helper2");

        
        action.setCallback(this,function(response){
            alert("helper3");
        // checking response status
        var state=response.getState();
         if(component.isValid() && state=="SUCCESS"){
             //Adding value in aura attribute variable
            // alert("helper4");
             component.set("v.accList", response.getReturnValue());
             console.log(response.getReturnValue());
             //alert("helper5");
         }
        });
        //alert("helper6")
        $A.enqueueAction(action);
        //alert("helper7")
    }
})