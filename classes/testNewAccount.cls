@isTest
public class testNewAccount {

    @isTest
    public static void checaSetorTec(){
        Account account = new Account(Name = 'Contita', Industry = 'Technology');
        insert account;
        
        Account act = [Select Id, Name, Rating from account where id = :account.Id];
        System.Assert(act.Rating == 'Hot', 'Faiou :(');
    }
    
    @isTest
    public static void checaSetorFin(){
        Account account = new Account(Name = 'Contita', Industry = 'Finance');
        insert account;
        
        Account act = [Select Id, Name, Rating from account where id = :account.Id];
        System.Assert(act.Rating == 'Hot', 'Faiou :(');
    }
}