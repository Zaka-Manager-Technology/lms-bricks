import 'types.dart';

Future<ValidationResult> validateOffer(Map<String, dynamic> data) async {
  return Zod.validate(
    data: data,
    schema: {
      'amount': Zod().isDouble().required(),
      'term': Zod().isInteger().required(),
      // Your other fields used to create an offer here
    },
  );
}

Offer getOffer(Map<String, dynamic> data) {
  // Your offer logic here
  return Offer(
    package_name: '{{ product_module_key }}',
    amount: data['amount'],
    term: data['term'],
    module: {
      ...data
    }
  );
}
