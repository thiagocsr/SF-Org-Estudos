@isTest
public class testeLeadFinalBoss3 {

    @isTest
    public static void leadVazio(){
        Lead lead = new Lead(LastName = 'Mreddie Fercury', Status = 'Open - Not Contacted', NumberOfEmployees = 500, Company = 'Abluble');
        insert lead;
        
        boolean deuErro = false;
        lead.LeadSource = 'Web';
        
        try{
            update lead;
        }catch (Exception e){
            deuErro = true;
        }
        
        System.Assert(deuErro, 'Num deu :(');
    }
    
    @isTest
    public static void leadCherosinhoNoAzeite(){
        Lead lead = new Lead(LastName = 'Mreddie Fercury', Status = 'Open - Not Contacted', Phone = '123', Email = 'ola@gmail.com',NumberOfEmployees = 500, Company = 'Abluble');
        insert lead;
        
        boolean deuErro = false;
        lead.LeadSource = 'Web';
        
        try{
            update lead;
        }catch (Exception e){
            deuErro = true;
        }
        
        Lead lead2 = [Select id, Rating from lead where id = :lead.Id];
        
        System.Assert(!deuErro, 'Num deu :(');
        System.Assert(lead2.Rating == 'Hot', 'Num deu :(');
    }
}