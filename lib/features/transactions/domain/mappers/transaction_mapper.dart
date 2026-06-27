import 'package:firela_api/firela_api.dart';

import '../entities/transaction.dart';

/// Maps a generated [TransactionDetailDto] to the domain [Transaction].
///
/// Display amount/currency come from the **first posting** — the canonical
/// "source" leg, the same convention `TransactionSummaryDto` documents for its
/// `accountName` ("first posting"). The list endpoint returns no pre-computed
/// absolute amount, so the first posting is the agreed display source.
Transaction toTransaction(TransactionDetailDto dto) {
  final posting = dto.postings.isNotEmpty ? dto.postings.first : null;
  final amount = double.tryParse(posting?.units ?? '') ?? 0;
  return Transaction(
    id: dto.id,
    date: dto.date,
    narration: dto.narration,
    payee: dto.payee,
    sourceType: dto.sourceType,
    status: dto.status.name,
    displayAmount: amount,
    currency: posting?.currency ?? '',
  );
}
