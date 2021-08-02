trigger AccountAddressTrigger on Account (
    before insert,
    before update
) {
    for (Account item :Trigger.new) {
        if (item.Match_Billing_Address__c == true) {
            item.ShippingPostalCode = item.BillingPostalCode;
        }
    }
}