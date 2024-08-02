public class criaTarefa {
    public static void criaNovaTarefa(List <Account> act){
        for(Account account : act){
            Task task = new Task(Subject = 'Nova tarefinha', WhatId = account.Id);
            insert task;
        }
    }
}