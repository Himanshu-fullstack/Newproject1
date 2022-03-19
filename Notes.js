//spread operator

// 1 Array
var arr=["a","b","c"]
console.log(arr)

// Object

var obj={
         name:"Himanshu",
         Age:34,
         BloodGroup: "AB+",
        City: "Lucknow"}

        console.log(obj)


//SPread Operator
//1. Expanding of String

let greet="Hello Namaste"
let charlist=[...greet]
console.log(charlist[6])

//Output-- ['H', 'e', 'l', 'l', 'o', ' ', 'N', 'a', 'm', 'a', 's', 't', 'e']

//2.. Combining Array

let arr1=["Microsft","Google"]
let arr2=["Facebook","Instagram"]

let arr3=[...arr1, ...arr2]
console.log(arr3)

/*o/p--- ['Microsft', 'Google', 'Facebook', 'Instagram']
0: "Microsft"
1: "Google"
2: "Facebook"
3: "Instagram" */

//3. Adding values to an array

let a=["a","b","c","d"]
let b="STSYSB"
let c=[b, ...a];
console.log(c)
//  O/P-['STSYSB', 'a', 'b', 'c', 'd']


//4-Combining two object

let a1={name:"Diwakar",
age:28,
City:"Lucknow",
Hobby:"Games"}
let b2={name:"Himanshu",
age:28,
City:"Bangalore"}

let c1={...a1, ...b2}

console.log(c1)

//Output--name: 'Himanshu', age: 28, City: 'Bangalore', Hobby: 'Games'}

//Note--second object will overwrite its own value and if anyhting extra colmun is there then that will also be printed

//5.Shallow Copy

let arr10=["a","b","c"]
arr10.push("PUSH1")
let arr11=arr10
arr11.push("Push2")
console.log(arr10)
console.log(arr11)

//output--

/* ['a', 'b', 'c', 'PUSH1', 'Push2']
   ['a', 'b', 'c', 'PUSH1', 'Push2']
   */

//Expalanation--in above example if we use push to add then it will change the value in both arr10,arr11 
//due to which we use shallow copy

let arr12=["a","b","c","d"]
arr12.push("Push1")
let arr13=[...arr12]
arr13.push("Push2")

console.log(arr12)
console.log(arr13)

//Output--
// ['a', 'b', 'c', 'd', 'Push1']
// ['a', 'b', 'c', 'd', 'Push1', 'Push2']


//Destructuring

// object destructing
let obj11={name:"Himanshu",
age: 28,
city: "Lucknow"}

let {name,age,city}=obj11

console.log(city)

//Oput--Lucknow

// Array Destructing

let arr15=["Himanshu","Mridul"]
let [arr16,arr17]=arr15
console.log(arr16)
console.log(arr17)

/*Output--Himanshu
         Mridul
         */

 //STring Interpolation--
 
 
 let arr19="Ram"
 let arr20=20
 console.log(`${arr19} age is ${arr20}`)

 //output--Ram age is 20

 // String Methods

 let str="HellThiso T This is Himanshu This from Lucknow"

 //include()--
 //the includes() method determines whether a string contains
 //the characters of a specified string.

 let check=str.includes("This")
 console.log(check)

 //Output--True

 //indexof()--returns the position of first occurence of a specified value.

 console.log(str.indexOf("This"))

 //o/p--4

 //startswith()--

 console.log(str.startsWith("HellThiso"))

 //output--True..

 //slice()---

 console.log(str.slice(0,8))

 //Output--HellThis

 //tolowercase()--

 console.log(str.toLowerCase())

 //output--hellthiso t this is himanshu this from lucknow

 //touppercase()--

 console.log(str.toUpperCase())

 //Output--

 //HELLTHISO T THIS IS HIMANSHU THIS FROM LUCKNOW

 //trim()

 //-----------------------------------------

//OBJECT AND JSON OPERATIONS

let obj111={name:'Himanshu',
age:28,
dob:'20-06-1993'}

//--Object keys--It will return array of object keys

let obj112= Object.keys(obj111)
console.log(obj112)

//Output--['name', 'age', 'dob']

//--Object.values()--
console.log(Object.values(obj111))

//Output--['Himanshu', 28, '20-06-1993']

//JSON.stringify()--it will convert the object into string

console.log(JSON.stringify(obj111))

//Output--{"name":"Himanshu","age":28,"dob":"20-06-1993"}

//JSON.parse()--it will convert the string into object

let obj21='{"name":"Himanshu"}'
console.log(JSON.parse(obj21))

//Output--name: 'Himanshu'}


//Array Methods--

//--Map()--
var arr=[12,22,13,121,45,15,64,17,82,233];

//Syntax--
//arrayname.methodName(function(currentItem, index, actualArray){
//})    

let arr131=arr.map(function(c,i, a){

    //console.log(`Value ${c} is at ${i} of an array ${a}`)
    return c*c
})
console.log(arr131)

//Output-- [1, 4, 9, 16, 25, 36, 49, 64]

//2. filter()--

let arr141=arr.filter(function(c,i,a){
   return c>6
})

console.log(arr141)

//Output--[7, 8]

//3. Every()---

let arr151=arr.every(function(c,i,a){
    return c>=0
})

console.log(arr151)

//Output--true

//4. some()--

let arr161=arr.some(function(c,i,a){
    return c>90;
})
console.log(arr161)

//Output--false

//5. sort()---only for String

var abcd=["Himanshu","Mridul","Ashu"]
console.log(abcd.sort())

//Output--['Ashu', 'Himanshu', 'Mridul']

//6. Sorting of Number--

var points=[10,12,01,35,18]
let sortedvalue=points.sort(function(n1,n2){
    return n1-n2
})
console.log(sortedvalue)

//Output--[1, 10, 12, 18, 35]

//7. Reduce method--
// array.reduce(function(total,currentvalue,index,array){

//}), initialvalue)

let num=[12,12,12]
let num1=num.reduce(function(t,c){
    return t*c
},19)
console.log(num1)

//Output--55


//8. for each loop---it will not return anything like Map.

num.forEach(function(c){
    console.log(c)
})

// Output

// 12
// 12
// 12
// write a program to calculate age from 
// date (28-02-1992)
// it is 27

// let date1=28-02-1992
// console.log(typeof date1)

// let date2=13-02-2022
// console.log(typeof date2)
// console.log(date2-date1)

// let d = new Date(2018, 15, 24,10,35,56);

// let d1 = new Date(2022, 02, 24,10,35,56);


// console.log(Date()-d)


//Date comparison function--
var day1 = new Date("08/11/1992")
var day2 = new Date("08/11/2022")

var difference= Math.abs(day2-day1)
days = difference/(1000 * 3600 * 24)

console.log(difference)




//Onclick function-----


//Syntax--<button type="button" onclick="TestFunction()">Press It</button>

// function TestFunction(){
//     alert('Hello')
// }

// SYNTAX for innerHTML
// document.getElementById("ID NAME").innerHTML="New TEXT"


//Some Popular events in JS

// onchange : Picklist Value Changed
// onclick : Pressing of button 
// onmouseover : Taking mouse cursor on any element 
// onmouseout : Taking away mouse cursor from any element 
// onkeydown : Pressing keyborad button down 
// onload : on browser page load



function Test(){
    let speed=120;
    let distance=240;
    alert(`Time Taken is ${distance/speed}`)

    debugger

    alert('This is after debugger')
}


//Lightning Locker Service--It is a powerful security architecture for LC. The Key scope of this is , it keeps Lightning components separate and ensures they work in their own space/ Name Space






 
