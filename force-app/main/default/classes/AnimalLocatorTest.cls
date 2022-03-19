@isTest
private class AnimalLocatorTest {
  @isTest
  static void animalLocatorTest1() {
    // Set mock callout class
    Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
    // This causes a fake response to be sent
    // from the class that implements HttpCalloutMock.
    String Actual = AnimalLocator.getAnimalNameById(1);
    String Expected = 'moose';
    System.assertequals(Actual, Expected);
  }
}
