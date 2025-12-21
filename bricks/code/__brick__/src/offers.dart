import 'package:ez_validator/ez_validator.dart';

import 'types.dart';

TValidationResultSync validateOffer(Map<String, dynamic> data) => EzSchema.shape(
  {
    "amount": EzValidator<double>(label: "Amount").required(),
    // Your other fields used to create an offer here
  },
).validateSync(data);


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