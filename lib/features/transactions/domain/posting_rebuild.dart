import 'models/posting_edit.dart';

/// Rebuild postings when the user edits the top-level amount. [segment] matches
/// the SegmentControl index: 0 = income, 1 = expense, 2 = transfer.
///
/// - Picks the driver posting (expense-type for the expense segment, income-type
///   for the income segment, otherwise the first posting) and sets its magnitude
///   to [amount], signed by segment (expense ⇒ negative).
/// - For exactly two postings of the SAME currency, sets the counterpart to the
///   negation so the pair balances. A multi-currency (conversion) pair can't be
///   balanced by negating units, so the counterpart is left untouched and the
///   live balance indicator surfaces the imbalance.
/// - For more than two postings, only the driver changes; the live balance
///   indicator surfaces any resulting imbalance (multi-posting editing is out of
///   scope for IGN-298).
List<PostingEdit> rebuildForAmountChange(
  List<PostingEdit> postings,
  double amount,
  int segment,
) {
  assert(segment >= 0 && segment <= 2, 'segment must be 0, 1, or 2');
  if (postings.isEmpty) return postings;
  // PostingEdit is immutable, so a shallow list copy is enough; elements are
  // replaced via copyWith below rather than mutated in place.
  final out = postings.toList();
  final driverIndex = _driverIndex(out, segment);
  final signed = segment == 1 ? -amount : amount; // expense ⇒ negative
  out[driverIndex] = out[driverIndex].copyWith(units: _formatUnits(signed));
  if (out.length == 2 && out[0].currency == out[1].currency) {
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

// ponytail: double.toString is shortest-round-trip (like JS), and the only
// arithmetic here is exact negation of a parsed value — no accumulation that
// would produce FP artifacts. Backend accepts a plain decimal string.
String _formatUnits(double v) => v == 0 ? '0' : v.toString();
