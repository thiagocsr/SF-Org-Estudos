trigger leadTrigger1 on Lead (before update) {
    
	for(Lead lead : Trigger.new){
		if(lead.Phone == null || lead.Email == null || lead.LeadSource == null){
			lead.addError('Telefone, Email e Origem devem ser preenchidos.');
        }   
        if(lead.LeadSource == 'Web'){
        	lead.Rating = 'Hot';
        }
    }
}