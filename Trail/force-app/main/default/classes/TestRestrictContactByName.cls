@isTest
public with sharing class TestRestrictContactByName {
    public TestRestrictContactByName() {

    }

    public @IsTest
    static void methodName(){
        
        Test.startTest();
        Contact c = new Contact(
            LastName = 'INVALIDNAME'
        );
        Database.insert(c, false);
        
        Contact c2 = new Contact(
            LastName = 'NAME'
        );
        Database.insert(c2, false);
        Test.stopTest();
        
    }
}
