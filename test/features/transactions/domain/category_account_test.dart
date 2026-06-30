import 'package:firela_app/features/transactions/domain/models/posting_edit.dart';
import 'package:firela_app/features/transactions/presentation/providers/use_transaction_detail.dart';
import 'package:flutter_test/flutter_test.dart';

// IGN-306: the "remember category" toggle is gated on `categoryAccount != null`,
// i.e. the transaction has an Expense/Income (flow) posting. ADR-0064 limits rule
// inference to flow accounts, so transfers / asset-only txs must hide the toggle.
// `categoryAccountOf` is the pure decision function behind that gate.
void main() {
  group('categoryAccountOf (learn-rule gating, IGN-306 / ADR-0064)', () {
    test('Expenses posting → returns its path (toggle shown)', () {
      expect(
        categoryAccountOf(const [
          PostingEdit(account: 'Expenses:Food:Coffee', units: '-30', currency: 'CNY'),
        ]),
        'Expenses:Food:Coffee',
      );
    });

    test('Income posting → returns its path (toggle shown)', () {
      expect(
        categoryAccountOf(const [
          PostingEdit(account: 'Income:Salary', units: '10000', currency: 'CNY'),
        ]),
        'Income:Salary',
      );
    });

    test('transfer (Assets + Liabilities only) → null (toggle hidden)', () {
      expect(
        categoryAccountOf(const [
          PostingEdit(account: 'Assets:Bank:Checking', units: '-100', currency: 'CNY'),
          PostingEdit(account: 'Liabilities:CreditCard', units: '100', currency: 'CNY'),
        ]),
        isNull,
      );
    });

    test('asset-only / equity → null (toggle hidden)', () {
      expect(
        categoryAccountOf(const [
          PostingEdit(account: 'Equity:Opening-Balances', units: '500', currency: 'CNY'),
        ]),
        isNull,
      );
    });

    test('empty postings → null (toggle hidden)', () {
      expect(categoryAccountOf(const <PostingEdit>[]), isNull);
    });
  });
}
