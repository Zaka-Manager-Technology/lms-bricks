import 'types.dart';

Future<ValidationResult> validateAlterationPackageRequest({ required String alterationKey, required Map<String, dynamic> data, required Loan loan, required List<Borrower> borrowers }) {
  switch (alterationKey) {
    case 'KEY':
      return Zod.validate(
        data: data,
        schema: {
          // keys and validation
        },
      );
    default:
      throw ProductModuleException('Invalid alteration hook key "$alterationKey"');
  }
}

AlterationPackage getAlterationPackage({ required String alterationKey, required Map<String, dynamic> data, required Loan loan, required List<Borrower> borrowers }) {
  switch (alterationKey) {
    case 'KEY':
      return AlterationPackage(
        package_name: loan.package_name,
        input_data: data,
        amount: loan.amount,
        term: loan.term,
        change_description: 'DESCRIPTION OF ALTERATION',
        module: {
          ...loan.module,
          ...data,
        },
      );
    default:
      throw ProductModuleException('Invalid alteration hook key "$alterationKey"');
  }
}

AlteredLoan applyAlteration({ required String alterationKey, required Loan loan, required List<Borrower> borrowers, required AlterationPackage alterationPackage }) {
  switch (alterationKey) {
    case 'KEY':
      return AlteredLoan(
        package_name: loan.package_name,
        amount: loan.amount,
        term: loan.term,
        module: alterationPackage.module,
      );
    default:
      throw ProductModuleException('Invalid alteration hook key "$alterationKey"');
  }
}
