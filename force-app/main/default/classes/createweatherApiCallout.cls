public with sharing class createweatherApiCallout {
    
    
    @AuraEnabled(cacheable=true)   
    public static String weatherApiCallout(String city){
        String ci = 'http://api.weatherstack.com/current?access_key=42775452aa75c66a1caf1ae54418788d&query='+city;
        Http http = new Http();
HttpRequest request = new HttpRequest();
request.setEndpoint(ci);
request.setMethod('GET');
HttpResponse response = http.send(request);
    if (response.getStatusCode() == 200) {
        system.debug(response.getBody());
        return response.getBody();
    }
    return '';
}
    }