TValidationResultSync validateAlterationPackageRequest({ required String alterationKey, required Map<String, dynamic> data, required Loan loan, required List<Borrower> borrowers }) {
  switch (alterationKey) {
    case 'KEY':
      return EzSchema.shape(
        {
          "amount": EzValidator<double>(label: "Amount").required(),
          // keys and validation
        },
      ).validateSync(data);
    default:
      throw new Error('Invalid alteration hook key "$alterationKey"');
  }
}

AlterationPackage getAlterationPackage({ required String alterationKey, required Map<String, dynamic> data, required Loan loan, required List<Borrower> borrowers }) {
  switch (alterationKey) {
    case 'KEY':
      return new AlterationPackage({
        input_data: data,
        loan_amount: loan.amount,
        loan_term: loan.term,
        change_description: 'DESCRIPTION OF ALTERATION',
        module: {
          ...loan.module,
          ...data,
        },
      });
    default:
      throw new Error('Invalid alteration hook key "$alterationKey"');
  }
}

AlteredLoan applyAlteration({ required String alterationKey, required Loan loan, required List<Borrower> borrowers, required AlterationPackage alterationPackage }) {
  switch (alterationKey) {
    case 'KEY':
      return new AlteredLoan({
        package_name: loan.package_name,
        loan_amount: loan.loan_amount,
        term: loan.term,
        module: alterationPackage.module,
      });
  }
}
