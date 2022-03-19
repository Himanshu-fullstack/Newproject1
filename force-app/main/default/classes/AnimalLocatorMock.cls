@isTest
global  class AnimalLocatorMock implements HttpCalloutMock {

        // Implement this interface method
        global HTTPResponse respond(HTTPRequest request) {
            // Create a fake response
            HttpResponse response = new HttpResponse();
            response.setHeader('ContentType', 'application/json');
            response.setBody('{"animal":{"id":1,"name":"moose","eats":"plants","says":"Bellows"}}');
            response.setStatusCode(200);
            return response; 
        }
    }