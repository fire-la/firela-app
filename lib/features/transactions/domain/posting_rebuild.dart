import 'models/posting_edit.dart';

/// Rebuild postings when the user edits the top-level amount. [segment] matches
/// the SegmentControl index: 0 = income, 1 = expense, 2 = transfer.
///
/// - Picks the driver posting (expense-type for the expense segment, income-type
///   for the income segment, otherwise the first posting) and sets its magnitude
///   to [amount], signed by segment (expense ⇒ negative).
/// - For exactly two postings, sets the counterpart to the negation so the pair
///   balances in a single currency.
/// - For more than two postings, only the driver changes; the live balance
///   indicator surfaces any resulting imbalance (multi-posting editing is out of
///   scope for IGN-298).
List<PostingEdit> rebuildForAmountChange(
  List<PostingEdit> postings,
  double amount,
  int segment,
) {
  if (postings.isEmpty) return postings;
  final out = postings.map(_copy).toList();
  final driverIndex = _driverIndex(out, segment);
  final signed = segment == 1 ? -amount : amount; // expense ⇒ negative
  out[driverIndex] = out[driverIndex].copyWith(units: _formatUnits(signed));
  if (out.length == 2) {
    final other = driverIndex == 0 ? 1 : 0;
    out[other] = out[other].copyWith(units: _formatUnits(-signed));
  }
  return out;
}

int _driverIndex(List<PostingEdit> postings, int segment) {
  if (segment == 1) {
    final i = postings.indexWhere((p) => p.account.startsWith('Expenses'));
    if (i != -1) return i;
  }
  if (segment == 0) {
    final i = postings.indexWhere((p) => p.account.startsWith('Income'));
    if (i != -1) return i;
  }
  return 0;
}

PostingEdit _copy(PostingEdit p) =>
    PostingEdit(account: p.account, units: p.units, currency: p.currency);

// ponytail: double.toString is a valid backend decimal string (backend tolerates
// a trailing .0). For money magnitudes this never reaches scientific notation.
String _formatUnits(double v) => v == 0 ? '0' : v.toString();
