trigger LeadTriggerExec2 on Lead (before insert, after insert, before update) {

    for(Lead lead : Trigger.new){
        if(lead.NumberOfEmployees < 1000){
            lead.Tamanho_Empresa__c = 'Pequena';
        }
    }
    
    if(Trigger.isUpdate){
        for(Lead lead : Trigger.new){
            if(lead.Phone == null || lead.Email == null || lead.LeadSource == null){
                lead.addError('Telefone, Email e Origem devem ser preenchidos.');
            }
            
            if(lead.LeadSource == 'Web'){
                lead.Rating = 'Hot';
            }
        }
    }
    
    if(Trigger.isInsert && Trigger.isAfter){
        for(Lead lead : Trigger.new){
            if(lead.AnnualRevenue > 50000){
                Task task = new Task(WhoId = lead.Id, Subject = 'Verificar se esta completo', Priority = 'High', ActivityDate = system.today()+1);
                insert task;
            }
        }
    }
}