import 'package:ez_validator/ez_validator.dart';

import 'types.dart';

TValidationResultSync validateApplication({required Map<String, dynamic> data, required List<Borrower> borrowers, required Offer offer}) => EzSchema.shape(
  {
    "amount": EzValidator<double>(label: "Amount").required(),
    // Your other fields used to create an application here
  },
).validateSync(data);


Application getApplication({required Map<String, dynamic> data, required List<Borrower> borrowers, required Offer offer}) {
  // Your application logic here
  return Application(
    package_name: offer.package_name,
    amount: offer.amount,
    term: offer.term,
    module: {
      ...data
    }
  );
}