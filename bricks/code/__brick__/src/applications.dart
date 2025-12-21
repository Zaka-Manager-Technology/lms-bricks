TValidationResultSync validateApplication({required Map<String, dynamic> data, required List<Borrower> borrowers, required Offer offer}) => EzSchema.shape(
  {
    "amount": EzValidator<double>(label: "Amount").required(),
    // Your other fields used to create an application here
  },
).validateSync(data);


Application getApplication({required Map<String, dynamic> data, required List<Borrower> borrowers, required Offer offer}) {
  // Your application logic here
  return Application(
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