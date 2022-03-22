trigger AccountTestss on Account(before insert) {
  Account acc = new account();
  acc.name = 'Himanshu';
  insert acc;

}
