import 'package:signals_flutter/signals_flutter.dart';

import '../../domain/entities/transaction.dart';

/// One-shot mutation instruction for the transaction list (IGN-298).
///
/// Consumed by `useTransactionList` to update the list in place — no refetch,
/// no flicker. Produced by the edit page's save(): a metadata PATCH yields a
/// [ReplaceTransaction] (same id), a structural correct() yields a
/// [SupersedeTransaction] (old id → new id).
sealed class TransactionMutation {}

/// Metadata PATCH result — same id, updated display fields.
class ReplaceTransaction extends TransactionMutation {
  ReplaceTransaction(this.tx);

  final Transaction tx;
}

/// Structural correct() result — old id superseded by a new transaction.
class SupersedeTransaction extends TransactionMutation {
  SupersedeTransaction({required this.oldId, required this.newTx});

  final String oldId;
  final Transaction newTx;
}

/// Global mutation signal; the list hook consumes it and resets to null.
final transactionMutationSignal = signal<TransactionMutation?>(null);

void mutateTransaction(TransactionMutation m) {
  transactionMutationSignal.value = m;
}

/// Pure: apply a mutation to a transaction list, returning a new list.
/// Extracted so the replace/supersede logic is testable without a widget or
/// signals host. `useTransactionList` calls this inside its mutation effect.
List<Transaction> applyTransactionMutation(
  List<Transaction> list,
  TransactionMutation m,
) {
  if (m is ReplaceTransaction) {
    final i = list.indexWhere((t) => t.id == m.tx.id);
    if (i == -1) return list;
    final out = List<Transaction>.from(list);
    out[i] = m.tx;
    return out;
  }
  if (m is SupersedeTransaction) {
    final out = list.where((t) => t.id != m.oldId && t.id != m.newTx.id).toList();
    out.insert(0, m.newTx);
    return out;
  }
  return list;
}
