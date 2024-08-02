public class queriesMarotas {
    public static Task retornaTaskTest(Account act){
        
        return [Select Id, WhatId from Task where whatId = :act.id];
    }
        
}