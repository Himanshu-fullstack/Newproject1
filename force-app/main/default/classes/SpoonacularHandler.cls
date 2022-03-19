public with sharing class SpoonacularHandler {
  @AuraEnabled
  public static String getRandomRecipe(String currencls) {
    String ci = 'https://api.exchangerate.host/latest?base='+currencls;
    Http http = new Http();
    HttpRequest request = new HttpRequest();
    request.setEndpoint(ci);
    request.setMethod('GET');

    HttpResponse response = http.send(request);
    // If the request is successful, parse the JSON response.
    if (response.getStatusCode() == 200) {
      system.debug(response.getBody());
      return response.getBody();
      
    }
    return '';
  }
}