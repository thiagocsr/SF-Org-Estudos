public class listaContasController {
    @AuraEnabled
    public static List<Account> getAcc() {
        return [Select Name, AnnualRevenue, Phone, Rating From Account order by Name];
    }

    @AuraEnabled
    public static List<Lead> getLeadsContatados(){
        try {
            return [Select Name, Company, Status From Lead where Status like '%- Contacted%'];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled
    public static List<Lead> getLeadsNaoContatados(){
        try {
            return [Select Name, Company, Status From Lead where Status like '%- Not Contacted%'];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled(cacheable=true)
    public static List<Lead> getLeadList() {
        return [
            SELECT Id, Name, Phone, Email, CPF__c, Status
            FROM Lead
            LIMIT 10
        ];
    }

    @AuraEnabled(cacheable=true)
    public static List<Opportunity> get5LastOpp() {
        return [
            SELECT Id, Name, Amount, StageName, Create_Date__c
            FROM Opportunity
            WHERE stageName like 'Negotiation/Review'
            ORDER BY Create_Date__c DESC
            LIMIT 5
        ];
    }
}