public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts(Id accountId){
        return [SELECT Name, Email, Phone FROM Contact WHERE AccountId = :accountId];
    }

    @AuraEnabled
    public static void updateContacts(List<Contact> contacts){
        try {
            update contacts;
            
        } catch (DmlException e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}