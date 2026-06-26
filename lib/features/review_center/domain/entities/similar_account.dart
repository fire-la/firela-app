/// Candidate account suggestion for an ACCOUNT_VALIDATION review.
///
/// Mirrors backend `SimilarAccountDto`. `name` is the account path submitted as
/// `chosenAccount` when the user picks this candidate (CHOOSE_OTHER). Per
/// ADR-0027 the user may only pick from this list — never free-type a path.
class SimilarAccount {
  const SimilarAccount({
    required this.name,
    this.similarity = 0.0,
    this.reason,
    this.isFallback = false,
  });

  /// Account path (e.g. `Expenses:Food:Coffee`). The value sent on resolve.
  final String name;

  /// Similarity score 0-1 (Jaro-Winkler), backend-computed.
  final double similarity;

  /// Backend-provided match reason (may be null).
  final String? reason;

  /// Whether this is a fallback account (e.g. `Expenses:Uncategorized`).
  final bool isFallback;
}
