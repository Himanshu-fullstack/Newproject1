({
    getWords : function(count) {
        if(count>100){
            return ;
        }
        let wordsArray=["time",
        "pers",
        "year",
        "way",	
        "day",	
        "thin",
        "man",	
        "worl",
        "life",
        "hand",
        "part",
        "chil",
        "eye",	
        "woma",
        "plac",
        "work",
        "week",
        "case",
        "poin",
        "gove",
        "comp",
        "numb",
        "grou",
        "prob",
        "fact",
        "time",
        "pers",
        "year",
        "way",	
        "day",	
        "thin",
        "man",	
        "worl",
        "life",
        "hand",
        "part",
        "chil",
        "eye",	
        "woma",
        "plac",
        "work",
        "week",
        "case",
        "poin",
        "gove",
        "comp",
        "numb",
        "grou",
        "prob",
        "fact",
        "time",
        "pers",
        "year",
        "way",	
        "day",	
        "thin",
        "man",	
        "worl",
        "life",
        "hand",
        "part",
        "chil",
        "eye",	
        "woma",
        "plac",
        "work",
        "week",
        "case",
        "poin",
        "gove",
        "comp",
        "numb",
        "grou",
        "prob",
        "fact",
        "time",
        "pers",
        "year",
        "way",	
        "day",	
        "thin",
        "man",	
        "worl",
        "life",
        "hand",
        "part",
        "chil",
        "eye",	
        "woma",
        "plac",
        "work",
        "week",
        "case",
        "poin",
        "gove",
        "comp",
        "numb",
        "grou",
        "prob",
        "fact"];
        wordsArray=this.randomiseArray(wordsArray);
        return wordsArray.slice(0,count);
    },
    randomiseArray: function(arr){
        const randomArr= arr;
        for(let i=randomArr.length-1;i>0;i--){
            const j=Math.floor(Math.random()*i);
            const temp=randomArr[i];
            randomArr[i]=randomArr[j];
            randomArr[j]=temp;
        }
        return randomArr;
    },

    getWinWord: function(arr){
      const randomIndex=Math.floor(Math.random() *arr.length);
      return arr[randomIndex];
    },
    disabledBoard: function(component){
        component.set("v.boardDisabled",true);
    },

    enableBoard: function(component){
        component.set("v.boardDisabled",false);
    },

    resetBoard: function(component){
        this.enableBoard(component);
        // reset the counter
        component.set("v.clickCount",0);
        //reset the result
        component.set("v.result", "");
    }
})
