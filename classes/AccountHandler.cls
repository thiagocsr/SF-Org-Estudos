public class AccountHandler {

    public static void insertAccount(Integer numero){
        List<Account> addAccounts = new List<Account>();
        
        Integer n = 0;
        while(n < numero){
            Account conta = new Account();
            conta.Name = 'Acme Inc ' + n;
            conta.AccountNumber = 'A000' + n;
            n++;
            addAccounts.add(conta);
        }
        
        insert addAccounts;
    }
}