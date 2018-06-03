// this is update opportunity
trigger UpdateOpportunityNameWithStageTrigger on Opportunity (before insert) {
    for(Opportunity o : Trigger.New) {
    	o.name = o.name + '-' + o.stagename;
    } 
}
