trigger UpdateClosedWonhandler on Opportunity (After update){

    Switch on trigger.operationType {
    
    When AFTER_UPDATE {
    UpdateClosedWonhandler.afterUpdateHandle(trigger.newMap);
    
    }
}
}