public with sharing class MultiEntityLookupController {
    @AuraEnabled(cacheable=true)
    public static List<sObject> searchEntities(String searchTerm) {
        List<sObject> results = new List<sObject>();
        
        // Query para Account
        List<Account> accounts = [SELECT Id, Name FROM Account WHERE Name LIKE :('%' + searchTerm + '%') LIMIT 5];
        results.addAll(accounts);
        
        // Query para Contact
        List<Contact> contacts = [SELECT Id, Name FROM Contact WHERE Name LIKE :('%' + searchTerm + '%') LIMIT 5];
        results.addAll(contacts);
        
        // Query para Lead
        List<Lead> leads = [SELECT Id, Name FROM Lead WHERE Name LIKE :('%' + searchTerm + '%') LIMIT 5];
        results.addAll(leads);
        
        return results;
    }
}
