@isTest
public class testeLeadFinalBoss2 {
    
    @isTest
    public static void leadNumFun(){
        Lead lead = new Lead(LastName = 'Ohayo', Status = 'Open - Not Contacted', Rating = 'Hot', NumberOfEmployees = 500, Company = 'Abluble');
        insert lead;
        
        Lead lead2 = [Select id, Tamanho_Empresa__c from lead where id = :lead.Id];
        
        System.Assert(lead2.Tamanho_Empresa__c == 'Pequena');
       
        lead.NumberOfEmployees = 9999;
        update lead;
        
        lead2 = [Select id, Tamanho_Empresa__c from lead where id = :lead.Id];
        
        System.Assert(lead2.Tamanho_Empresa__c == 'Média');
    }
}