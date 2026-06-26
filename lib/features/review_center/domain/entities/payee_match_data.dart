/// Branch data for PAYEE_MATCH reviews (backend `PayeeMatchBranchData`).
///
/// Pure display — PAYEE_MATCH decisions (ACCEPT / REJECT / ACCEPT_AND_LEARN) take
/// no `data` payload, so this carries no selection state. [originalPayee] is the
/// merchant as imported; [suggestedPayee] is the recommended payee's display
/// name (backend `suggestedPayee.name`), flattened to a string the same way
/// `RuleMatchData.destination` flattens its backend object. Null when similarity
/// is too low for the backend to recommend one. `similarity`/`alternatives` are
/// backend-only here — not surfaced in the card (.pen hTdDw).
class PayeeMatchData {
  const PayeeMatchData({
    required this.originalPayee,
    this.suggestedPayee,
  });

  /// Merchant name as it appeared on the imported transaction.
  final String originalPayee;

  /// Recommended payee display name (backend `suggestedPayee.name`), or null.
  final String? suggestedPayee;
}
