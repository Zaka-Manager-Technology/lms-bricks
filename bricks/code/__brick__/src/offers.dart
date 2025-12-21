TValidationResultSync validateOffer(Map<String, dynamic> data) => EzSchema.shape(
  {
    "amount": EzValidator<double>(label: "Amount").required(),
    // Your other fields used to create an offer here
  },
).validateSync(data);


Offer getOffer(Map<String, dynamic> data) {
  // Your offer logic here
  return Offer(
    amount: data['amount'],
    term: data['term'],
    interestRate: data['interestRate'],
    startDate: data['startDate'],
    endDate: data['endDate'],
    module: {
      ...data
    }
  );
}