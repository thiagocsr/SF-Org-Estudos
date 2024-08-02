@isTest
public class testeAulaInvertida {

    @isTest
    public static void naoInsere(){
        Account act = new Account(Name = 'aula invertida', AnnualRevenue = -50);
        
        //Crio uma booleana com valor falso
        boolean rolouErro = false;
        
        //Tento inserir ela no try. Caso ela caia num erro da trigger, o catch "ativa" e atribui true a variabel booleana
        try{
            insert act;
        }catch (Exception e){
            rolouErro = true;
        }
        
        //Aqui eu testo se o rolou erro é true
        System.Assert(rolouErro, 'Deu ruim :(');
    }
    
    @isTest
    public static void simInsere(){
        Account act = new Account(Name = 'aula invertida', AnnualRevenue = 50);
        
        boolean rolouErro = false;
        
        try{
            insert act;
        }catch (Exception e){
            rolouErro = true;
        }
        
        System.Assert(!rolouErro, 'Deu ruim :(');
    }
}