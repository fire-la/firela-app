import 'transaction_summary.dart';

/// DUPLICATE branch data (backend `DuplicateBranchData`).
///
/// `sourceTransaction` is the newly imported transaction, `targetTransaction`
/// the existing record it may duplicate. Pure display — DUPLICATE decisions
/// (UPGRADE_REPLACE / LINK_KEEP_BOTH / IGNORE_NEW / CONFIRM_DIFFERENT) take no
/// `data` payload, so this carries no selection state.
class DuplicateData {
  const DuplicateData({
    required this.sourceTransaction,
    required this.targetTransaction,
  });

  /// New import.
  final TransactionSummary sourceTransaction;

  /// Existing record.
  final TransactionSummary targetTransaction;
}
