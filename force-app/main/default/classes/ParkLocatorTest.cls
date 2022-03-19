@isTest
private  class ParkLocatorTest {
    @isTest static void Callout(){
        Test.SetMock(WebServiceMock.class, new ParkServiceMock());
        String country='United States';
        List<String> expectedParks= new List<String>{'Yosemite','Sequola','Crater Lake'};
        System.assertequals(expectedParks,ParkLocator.country(country));
    }

    }