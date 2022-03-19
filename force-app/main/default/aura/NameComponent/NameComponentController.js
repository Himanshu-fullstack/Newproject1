({
    getName : function(component) {
        var FirstName=component.find("Fname").get("v.value")
        var LastName=component.find("Lname").get("v.value")
        var gender=component.find("gen").get("v.value")
        if(gender==="Male" || gender==="male" || gender==="MALE"){

        var FullName1=`Mr. ${LastName}, ${FirstName}`
        } else { var FullName1=`Ms. ${LastName}, ${FirstName}` }
        var FullName=component.find("CombinedName")
        FullName.set("v.value",FullName1)

    } 
})