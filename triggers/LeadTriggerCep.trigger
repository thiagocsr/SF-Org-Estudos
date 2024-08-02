trigger LeadTriggerCep on Lead (after insert) {
    LeadTriggerHandlerCep.updateLeadsWithCepInfo(JSON.serialize(Trigger.new));
}