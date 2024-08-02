@isTest
public class testeInsereNovaContaTarefa {
	
    @isTest
    public static void insereNovaConta(){
        Account act = new Account(Name = 'Oláaaa', Phone = '123', CNPJ__c = '123');
        insert act;
        
        Task task = queriesMarotas.retornaTaskTest(act);
        System.assert(act.id == task.WhatId,'Não funfou');
    }
}