trigger ActiveContactTry2 on contact (After insert,After update,After delete,AFter undelete) {
    Switch on trigger.operationtype{
        when AFter_Insert {
            ActiveContactTry2TriggerHandler.beforeInsertHandler();
        }
    when After_Update {
        ActiveContactTry2TriggerHandler.beforeUpdateHandler();
    }
    when After_Delete {
        ActiveContactTry2TriggerHandler.beforeDeleteHandler();
    }
    when After_Undelete {
        ActiveContactTry2TriggerHandler.beforeUndeleteHandler();
    }
    }
}