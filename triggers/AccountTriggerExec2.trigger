trigger AccountTriggerExec2 on Account (before insert,after insert, before update) {   
    
    /*if(Trigger.isAfter && Trigger.isInsert){
        criaTarefa.criaNovaTarefa(trigger.new);
    }
    
    if(Trigger.isInsert && Trigger.isBefore){
        
        for(Account account : trigger.new){
            if(account.CNPJ__c == null){
                account.CNPJ__c.addError('Digue o CNPJ seu larápio.');
            } 
        
            if(account.ShippingAddress == null){
                account.ShippingCity = account.BillingCity; 
                account.ShippingCountry = account.BillingCountry;
                account.ShippingPostalCode = account.BillingPostalCode;
                account.ShippingState = account.BillingState;
                account.ShippingStreet = account.BillingStreet;
            }
        }
        
        List<Opportunity> opps = new List<Opportunity>();
        
        for(Account account : trigger.new){
            if(account.AnnualRevenue == null || account.AnnualRevenue < 0){
                account.AnnualRevenue.addError('Renda não pode ser negativa.');
            }
            else if(account.AnnualRevenue < 100000){
                account.Rating = 'Cold';
            }
            else if(account.AnnualRevenue >= 100000 && account.AnnualRevenue < 500000){
                account.Rating = 'Warm';
            }else{
                account.Rating = 'Hot';
                Opportunity opp = new Opportunity(Name = 'Opp top da conta: ' + account.Name, Amount = 0, CloseDate = system.today()+15, StageName = 'Prospecting');
                opps.add(opp);
            }            
        }
        
        insert opps;
    }
    
    if(Trigger.isInsert && Trigger.isAfter){
        List<Task> tasks = new List<Task>();
        for(Account account : trigger.new){
            Task task = new Task(WhatId = account.Id, Subject = 'Agendar Reunião 2', Priority = 'High', ActivityDate = system.today()+1);
            tasks.add(task);
        }
        insert tasks;
    }
    
    If(Trigger.isUpdate){
        for(Account account : trigger.new){
            if(account.AnnualRevenue >= 500000 && account.Rating != 'Hot'){
                account.addError('Nesse valor apenas contas hot.');
            }else if(account.AnnualRevenue >= 100000 && Trigger.oldMap.get(account.Id).Rating == 'Warm' && account.Rating == 'Cold'){
                account.addError('Nesse valor apenas contas Warm.');
            }
        }
    }*/
}