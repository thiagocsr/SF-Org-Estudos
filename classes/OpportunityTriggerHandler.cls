public class OpportunityTriggerHandler extends TriggerHandler{
    private List<Opportunity> newList;
    private List<Opportunity> oldList;
    private Map<Id,Opportunity> newMap;
    private Map<Id,Opportunity> oldMap;
    
    public OpportunityTriggerHandler(){
        this.newList = (List<Opportunity>) Trigger.new;
        this.oldList = (List<Opportunity>) Trigger.old;
        this.newMap = (Map<Id,Opportunity>) Trigger.newMap;
        this.oldMap = (Map<Id,Opportunity>) Trigger.oldMap;
        
    }
    
    protected override void beforeInsert(){
        new boss10p1(newList).run();
        /*A trigger da questão 11 conflita com as da 10, então para aproveitar a mesma estrutura
          eu comentei a chamada para iniciar a trigger, após testarem a 10, basta descomentar a linha 21 :)
        */

        //new boss11(newList).run();
    }
    
    protected override void afterInsert(){
        new boss10p5(newList).run();
    }
    
    protected override void beforeUpdate(){
        new boss10p2(newList, oldMap).run();
        new boss10p3(newList).run();
        new boss10p4(newList, oldMap).run();
    }
    
    protected override void afterUpdate(){
        new boss10p6(newList, oldMap).run();
    }

}