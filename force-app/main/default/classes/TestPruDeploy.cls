@isTest
public with sharing class TestPruDeploy {
    
    @isTest static void testWarmTemp() {
        Decimal celsius = ReleaseCandidate.FahrenheitToCelsius(70);
        System.assertEquals(21.11,celsius);
      }
      @isTest static void testFreezingPoint() {
        Decimal celsius = ReleaseCandidate.FahrenheitToCelsius(32);
        System.assertEquals(0,celsius);
      }
      @isTest static void testBoilingPoint() {
        Decimal celsius = ReleaseCandidate.FahrenheitToCelsius(212);
        System.assertEquals(100,celsius,'Boiling point temperature is not expected.');
      }
      @isTest static void testNegativeTemp() {
        Decimal celsius = ReleaseCandidate.FahrenheitToCelsius(-10);
        System.assertEquals(-23.33,celsius);
      }   
}
