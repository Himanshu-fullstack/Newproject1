import { LightningElement } from 'lwc';
import spoonacularMethod from '@salesforce/apex/SpoonacularHelperClass.spoonacularMethod'

export default class spoonrandom extends LightningElement {

    image='';
    recipeTitle='';
    summary='';
    instructions='';
    show=false;
    spoon='';
    bold='';

    buttonHandler(){

        spoonacularMethod({}).then(data=>{
            const spoon=JSON.parse(data);
            this.bold='Recipe:-'
            if(spoon){
                this.image=spoon.recipes[0].image;
                this.recipeTitle=spoon.recipes[0].title;
                this.summary=spoon.recipes[0].summary;
                this.instructions=spoon.recipes[0].instructions;
                console.log(this.summary);                
            }
             });
        
    }
}