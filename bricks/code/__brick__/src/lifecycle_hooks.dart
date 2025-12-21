/// A lifecycle hook is a function that is called at a specific time in the lifecycle a loan.

List<Action> afterLoanDisbursed({ required Loan loan, required List<Borrower> borrowers }) {
  // Custom logic
  return [ ... ]; // Optional list of actions to queue
}

List<Action> beforeLoanGracePeriodEnd({ required Loan loan, required List<Borrower> borrowers }) {
  // Custom logic
  return [ ... ]; // Optional list of actions to queue
}

List<Action> afterPaymentSuccess({ required Loan loan, required List<Borrower> borrowers, required Payment payment }) {
  // Custom logic
  return [ ... ]; // Optional list of actions to queue
}

List<Action> afterPaymentFailed({ required Loan loan, required List<Borrower> borrowers, required Payment payment }) {
  // Custom logic
  return [ ... ]; // Optional list of actions to queue
}

List<Action> afterPaymentReversed({ required Loan loan, required List<Borrower> borrowers, required Payment payment }) {
  // Custom logic
  return [ ... ]; // Optional list of actions to queue
}
