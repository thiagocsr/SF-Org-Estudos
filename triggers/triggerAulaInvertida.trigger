trigger triggerAulaInvertida on Account (before insert) {
	
    for(Account act : trigger.new){
        if(act.AnnualRevenue < 0){
            act.AnnualRevenue.addError('Receita anual não pode ser negativa!!!');
        }
    }
}