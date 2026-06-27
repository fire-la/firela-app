import 'package:firela_api/firela_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firela_app/features/transactions/domain/mappers/transaction_mapper.dart';

void main() {
  test('maps first posting amount/currency and signs amount', () {
    final dto = TransactionDetailDto((b) => b
      ..id = 'tx1'
      ..date = '2026-06-19'
      ..narration = 'Coffee'
      ..payee = 'Cafe'
      ..createdAt = '2026-06-19T00:00:00Z'
      ..status = TransactionDetailDtoStatusEnum.ACTIVE
      ..sourceType = 'NLP'
      ..postings.add(PostingDetailDto((p) => p
        ..id = 'p1'
        ..accountId = 'acc1'
        ..accountName = 'Wallet'
        ..units = '-12.50'
        ..currency = 'CNY')));

    final t = toTransaction(dto);

    expect(t.id, 'tx1');
    expect(t.narration, 'Coffee');
    expect(t.payee, 'Cafe');
    expect(t.displayAmount, -12.5);
    expect(t.currency, 'CNY');
    expect(t.sourceType, 'NLP');
    expect(t.status, 'ACTIVE');
    expect(t.isExpense, isTrue);
  });

  test('defaults to 0 amount and empty currency when postings empty', () {
    final dto = TransactionDetailDto((b) => b
      ..id = 'tx2'
      ..date = '2026-06-19'
      ..narration = 'Interpolated'
      ..createdAt = '2026-06-19T00:00:00Z'
      ..status = TransactionDetailDtoStatusEnum.ACTIVE);

    final t = toTransaction(dto);

    expect(t.displayAmount, 0);
    expect(t.currency, '');
    expect(t.isExpense, isFalse);
  });

  test('non-negative amount is not an expense', () {
    final dto = TransactionDetailDto((b) => b
      ..id = 'tx3'
      ..date = '2026-06-19'
      ..narration = 'Refund'
      ..createdAt = '2026-06-19T00:00:00Z'
      ..status = TransactionDetailDtoStatusEnum.ACTIVE
      ..postings.add(PostingDetailDto((p) => p
        ..id = 'p1'
        ..accountId = 'acc1'
        ..accountName = 'Wallet'
        ..units = '50'
        ..currency = 'USD')));

    final t = toTransaction(dto);
    expect(t.displayAmount, 50);
    expect(t.isExpense, isFalse);
  });
}
