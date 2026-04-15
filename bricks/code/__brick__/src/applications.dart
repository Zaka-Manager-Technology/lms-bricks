import 'types.dart';

Future<ValidationResult> validateApplication({required Map<String, dynamic> data, required List<Borrower> borrowers, required Offer offer}) => Zod.validate(
  data: data,
  schema: {
    'amount': Zod().isDouble().required(),
    // Your other fields used to create an application here
  },
);


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
