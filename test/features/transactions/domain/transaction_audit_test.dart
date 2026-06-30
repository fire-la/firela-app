import 'package:firela_api/firela_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firela_app/features/transactions/domain/transaction_audit.dart';

TransactionDetailDto _tx({
  TransactionDetailDtoStatusEnum status = TransactionDetailDtoStatusEnum.ACTIVE,
  String? supersededBy,
  String? originalTxn,
}) {
  return TransactionDetailDto((b) => b
    ..id = 'tx1'
    ..date = '2026-06-19'
    ..narration = 'n'
    ..createdAt = '2026-06-19T00:00:00Z'
    ..status = status
    ..supersededBy = supersededBy
    ..originalTxn = originalTxn
    ..postings.add(PostingDetailDto((p) => p
      ..id = 'p1'
      ..accountId = 'Expenses:Food'
      ..account = 'Expenses:Food'
      ..units = '-60'
      ..currency = 'CNY')));
}

void main() {
  test('ACTIVE without originalTxn → none (no banner)', () {
    final a = transactionAuditOf(_tx());
    expect(a.kind, TransactionAuditCase.none);
    expect(a.linkId, isNull);
  });

  test('ACTIVE with empty originalTxn → none (no banner)', () {
    final a = transactionAuditOf(_tx(originalTxn: ''));
    expect(a.kind, TransactionAuditCase.none);
    expect(a.linkId, isNull);
  });

  test('ACTIVE with originalTxn → replacement, links back to original', () {
    final a = transactionAuditOf(_tx(originalTxn: 'orig_123'));
    expect(a.kind, TransactionAuditCase.replacement);
    expect(a.linkId, 'orig_123');
  });

  test('SUPERSEDED with supersededBy → superseded, links to replacement', () {
    final a = transactionAuditOf(_tx(
      status: TransactionDetailDtoStatusEnum.SUPERSEDED,
      supersededBy: 'new_456',
    ));
    expect(a.kind, TransactionAuditCase.superseded);
    expect(a.linkId, 'new_456');
  });

  test('SUPERSEDED without supersededBy → none (no link to show)', () {
    final a = transactionAuditOf(
      _tx(status: TransactionDetailDtoStatusEnum.SUPERSEDED),
    );
    expect(a.kind, TransactionAuditCase.none);
  });

  test('SUPERSEDED with empty supersededBy → none (no link to show)', () {
    final a = transactionAuditOf(
      _tx(status: TransactionDetailDtoStatusEnum.SUPERSEDED, supersededBy: ''),
    );
    expect(a.kind, TransactionAuditCase.none);
    expect(a.linkId, isNull);
  });

  test('VOIDED → voided, no link', () {
    final a = transactionAuditOf(
      _tx(status: TransactionDetailDtoStatusEnum.VOIDED),
    );
    expect(a.kind, TransactionAuditCase.voided);
    expect(a.linkId, isNull);
  });
}
