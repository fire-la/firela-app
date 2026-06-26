import 'similar_account.dart';

/// ACCOUNT_VALIDATION branch data (backend `AccountValidationBranchDataDto`).
///
/// The shape of `reviewData` when `reviewType == 'ACCOUNT_VALIDATION'`. Carries
/// the invalid account path, the top suggestion, and the candidate accounts the
/// user picks from. Detail-only; null on list items.
class AccountValidationData {
  const AccountValidationData({
    required this.invalidAccount,
    this.suggestedAccount,
    this.similarAccounts = const [],
    this.errorMessage,
  });

  /// The invalid account path that failed validation (shown struck/errored).
  final String invalidAccount;

  /// Top suggested account (similarity >= 70%), if any. Default selection.
  final String? suggestedAccount;

  /// Candidate accounts ranked by similarity — the picker data source.
  final List<SimilarAccount> similarAccounts;

  /// Backend human-readable error message.
  final String? errorMessage;
}
