public with sharing class SpoonacularHelperClass {

    @auraEnabled(cacheable=true)
    public static String spoonacularMethod() {

        String str='https://api.spoonacular.com/recipes/random?apiKey=1d6b95f7a2bc4369912e28d8ac36c160';
        Http http= new Http();
        HttpRequest request=new HttpRequest();
        request.setEndpoint(str);
        request.setMethod('GET');
        HttpResponse response= http.send(request);
        if (response.getStatusCode() == 200) {
            system.debug(response.getbody());
            return response.getBody();            
        }
        return '';
    }
}