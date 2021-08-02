public with sharing class RandomContactFactory {
    public RandomContactFactory() {

    }

    public static List <Contact> generateRandomContacts (Integer i,String s) {
        List <Contact>  contacList = new List <Contact>();
        for (integer c = 0;c < i; c++) {
            contacList.add(
                new Contact(
                    FirstName = 'TestContact ' + c,
                    LastName = s
                )
            );
        }
        return contacList;
    }
}
