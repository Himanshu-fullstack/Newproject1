({
    check1 : function(component) {
        var age=component.find("age1").get("v.value")
        
        if(age>18){
            component.set("v.Eligibility",true)
        }
        else {
            component.set("v.Eligibility",false)
        } 
    }
})
