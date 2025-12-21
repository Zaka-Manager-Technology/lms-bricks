// -------------------------------- Classes --------------------------------
class Loan {
  final String package_name;
  final double amount;
  final int term;
  final Map<String, dynamic> module;

  Loan({
    required this.package_name,
    required this.amount,
    required this.term,
    required this.module,
  });
}

class Borrower {
  final String first_name;
  final String last_name;
  final String email;
  final String address;
  final String city;
  final String state;
  final String country;
  final String postal_code;

  Borrower({
    required this.first_name,
    required this.last_name,
    required this.email,
    required this.address,
    required this.city,
    required this.state,
    required this.country,
    required this.postal_code,
  });
}

class AlterationPackage {
  final String package_name;
  final Map<String, dynamic> input_data;
  final double amount;
  final int term;
  final String change_description;
  final Map<String, dynamic> module;

  AlterationPackage({
    required this.package_name,
    required this.input_data,
    required this.amount,
    required this.term,
    required this.change_description,
    required this.module,
  });
}

class AlteredLoan {
  final String package_name;
  final double amount;
  final int term;
  final Map<String, dynamic> module;

  AlteredLoan({
    required this.package_name,
    required this.amount,
    required this.term,
    required this.module,
  });
}

class Application {
  final String package_name;
  final double amount;
  final int term;
  final Map<String, dynamic> module;

  Application({
    required this.package_name,
    required this.amount,
    required this.term,
    required this.module,
  });
}

class Offer {
  final String package_name;
  final double amount;
  final int term;
  final Map<String, dynamic> module;

  Offer({
    required this.package_name,
    required this.amount,
    required this.term,
    required this.module,
  });
}

class Payment {
  final double debit;
  final double credit;
  final String description;
  final Map<String, dynamic> module;

  Payment({
    required this.debit,
    required this.credit,
    required this.description,
    required this.module,
  });
}

enum ActionEnum {
  update_loan,
  debit_loan,
  credit_loan
}

class Action {
  final ActionEnum name;
  final Map<String, dynamic> data;

  Action({
    required this.name,
    required this.data,
  });
}


// -------------------------------- Typedefs --------------------------------
typedef TValidationResultSync = (Map<dynamic, dynamic>, Map<dynamic, dynamic>);
