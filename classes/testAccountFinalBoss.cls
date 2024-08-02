@isTest
public class testAccountFinalBoss {

    @isTest
    public static void semCnpj(){
		Account act = new Account(Name = 'Ia beurifó');
        Boolean deuErro =  false;
        
        try{
            insert act;
        }catch (Exception e){
            deuErro = true;
        }
        
        System.Assert(deuErro, 'Num foi >:(');
    }
    
    @isTest
    public static void comCnpj(){
        Account act = new Account(Name = 'Ia beurifó', Cnpj__c = '123');
        Boolean deuErro =  false;
        
        try{
            insert act;
        }catch (Exception e){
            deuErro = true;
        }
        
        System.Assert(!deuErro, 'Num foi >:(');
    }
}