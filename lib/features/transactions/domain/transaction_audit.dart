import 'package:firela_api/firela_api.dart' as gen;

/// Which audit-chain banner case (if any) applies to a transaction.
enum TransactionAuditCase { superseded, voided, replacement, none }

/// Audit-chain state for a transaction: which banner case + the tx id to link
/// to (the replacement for SUPERSEDED, the original for an ACTIVE replacement).
/// `none` means no banner. Pure/testable; the widget maps
/// [TransactionAuditCase] to l10n copy + icon.
typedef TransactionAudit = ({TransactionAuditCase kind, String? linkId});

/// Returns the audit-chain case for [tx]:
/// - SUPERSEDED (with `supersededBy`) → `superseded`, link to the replacement.
/// - VOIDED → `voided`, no link (informational).
/// - ACTIVE with `originalTxn` → `replacement`, link back to the original.
/// - otherwise → `none` (plain ACTIVE, or a terminal state missing its link).
TransactionAudit transactionAuditOf(gen.TransactionDetailDto tx) {
  final s = tx.status;
  if (s == gen.TransactionDetailDtoStatusEnum.SUPERSEDED) {
    final by = tx.supersededBy;
    if (by == null || by.isEmpty) {
      return (kind: TransactionAuditCase.none, linkId: null);
    }
    return (kind: TransactionAuditCase.superseded, linkId: by);
  }
  if (s == gen.TransactionDetailDtoStatusEnum.VOIDED) {
    return (kind: TransactionAuditCase.voided, linkId: null);
  }
  if (s == gen.TransactionDetailDtoStatusEnum.ACTIVE) {
    final orig = tx.originalTxn;
    if (orig == null || orig.isEmpty) {
      return (kind: TransactionAuditCase.none, linkId: null);
    }
    return (kind: TransactionAuditCase.replacement, linkId: orig);
  }
  return (kind: TransactionAuditCase.none, linkId: null);
}
