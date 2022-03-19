({
    Addition : function(component) {
        var Fnum=component.find("FNumber").get("v.value")
        var lnum=component.find("SNumber").get("v.value")
        var output1=component.find("Outputofquery")
        var sum=`Sum of ${Fnum} and ${lnum} is ${Fnum+lnum}`
        output1.set("v.value",sum)


    },
    Multiplication : function(component) {
        var Fnum=component.find("FNumber").get("v.value")
        var lnum=component.find("SNumber").get("v.value")
        var output1=component.find("Outputofquery")
        var sum=`Multiplication of ${Fnum} and ${lnum} is ${Fnum*lnum}`
        output1.set("v.value",sum)
    },
    Division : function(component) {
        var Fnum=component.find("FNumber").get("v.value")
        var lnum=component.find("SNumber").get("v.value")
        var output1=component.find("Outputofquery")
        var sum=`Division of ${Fnum} and ${lnum} is ${Fnum/lnum}`
        output1.set("v.value",sum)
    },
    Subtraction : function(component) {
        var Fnum=component.find("FNumber").get("v.value")
        var lnum=component.find("SNumber").get("v.value")
        var output1=component.find("Outputofquery")
        var sum=`Subtraction of ${Fnum} and ${lnum} is ${Fnum-lnum}`
        output1.set("v.value",sum)
    }


})