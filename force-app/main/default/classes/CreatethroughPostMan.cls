@RestResource(urlMapping='/createLead/')
global with sharing class CreatethroughPostMan {
     
    @HTTPpost
    global static List<lead> createLeadeMthod(){
      
        list<lead> l=[Select id,name from lead];

        return l;
    }
   }

