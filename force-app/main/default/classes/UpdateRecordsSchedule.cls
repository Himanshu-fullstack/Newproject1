global class UpdateRecordsSchedule implements Schedulable {
  global void execute(SchedulableContext SC) {
    UpdateRecords uptu = new UpdateRecords();
    Database.executeBatch(uptu, 200);
  }
}
