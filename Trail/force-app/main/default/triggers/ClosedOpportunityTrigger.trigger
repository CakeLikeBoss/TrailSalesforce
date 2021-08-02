trigger ClosedOpportunityTrigger on Opportunity (
    after insert,
    after update
) {
    List <Task> tl = new List <Task>();
    for (Opportunity item :Trigger.new) {
        if (item.StageName == 'Closed Won') {
            Task t = new Task(
                Subject = 'Follow Up Test Task',
                WhatId = item.Id
            );
            tl.add(t);
        }
    }
    insert tl;
}