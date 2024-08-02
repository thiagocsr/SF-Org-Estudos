//Quais tempos vamos utilizar
//O que precisamos fazer?
//1 - Quais campos preciso trabalhar
//Type, annualRevenue, Phone
//2 - O que esses campos precisam realizar
//Type = 'Prospect' se ele estiver em branco (before insert)/
//Receita Anual(annualRevenue) for nulo eu quero que
//ele preencha 0(before insert, after insert, before update)
//Phone se o usuario não preencher, eu quero que apareça
//uma msg de erro
//'O campo deve estar preenchido'(before insert, after insert,
//before update)
//AnnualRevenue se o usúario tentar colocar um numero < 0,
//vai apareceruma msg 'O campo receita anual está invalido'-
//Somente atualizações(after ou se é before IsUpdate)
//
//Escolher os tempos que vão se aplicar em cada momento do meu cod.
//Como escrevo isso no código(porquinha)

trigger Triguinho on Account (before insert, before update, after insert) {
    if(Trigger.isBefore){
        for(account account: trigger.new){
            if(string.isblank(account.type) && trigger.isInsert){
                //se o campo type estiver em branco, coloque prospect
                account.type = 'Prospect';
            }if(account.AnnualRevenue == null && trigger.isInsert){
                account.AnnualRevenue = 0;
            }if(string.isblank(account.Phone) && (trigger.isInsert || trigger.IsUpdate)){
                account.Phone.addError('O campo do telefone deve ser preenchido');
            }if(account.AnnualRevenue < 0 && Trigger.IsUpdate){
                account.AnnualRevenue.AddError('O campo receita anual está invalido');
            }
                                           
}
}
}