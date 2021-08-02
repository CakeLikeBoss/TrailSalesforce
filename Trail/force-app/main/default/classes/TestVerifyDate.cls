@isTest
public with sharing class TestVerifyDate {


    public TestVerifyDate() {   
    }

    public @IsTest
    static void test1(){
        Date TestDate = system.today();
        Test.startTest();
        VerifyDate.CheckDates(TestDate,TestDate.addDays(-1));
        VerifyDate.CheckDates(TestDate,TestDate.addDays(1));
        VerifyDate.CheckDates(TestDate,TestDate.addDays(35));
        Test.stopTest();
    } 

}
