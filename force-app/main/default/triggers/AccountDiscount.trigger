trigger AccountDiscount on Account (before insert) {
    AccountDiscountHandler.discount(Trigger.new);
}