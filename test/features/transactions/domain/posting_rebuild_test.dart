import 'package:flutter_test/flutter_test.dart';
import 'package:firela_app/features/transactions/domain/models/posting_edit.dart';
import 'package:firela_app/features/transactions/domain/posting_rebuild.dart';
import 'package:firela_app/features/transactions/domain/structural_change.dart';

void main() {
  test('2-posting expense: amount change rebalances the pair', () {
    final postings = <PostingEdit>[
      const PostingEdit(account: 'Expenses:Food', units: '-50', currency: 'CNY'),
      const PostingEdit(account: 'Assets:Wallet', units: '50', currency: 'CNY'),
    ];
    final out = rebuildForAmountChange(postings, 60, 1);
    expect(out.length, 2);
    // driver (expense) negative, counterpart positive
    expect(double.parse(out[0].units!), -60);
    expect(double.parse(out[1].units!), 60);
    expect(isBalanced(out), isTrue);
  });

  test('2-posting income: amount change keeps income positive', () {
    final postings = <PostingEdit>[
      const PostingEdit(account: 'Income:Salary', units: '5000', currency: 'CNY'),
      const PostingEdit(account: 'Assets:Wallet', units: '-5000', currency: 'CNY'),
    ];
    final out = rebuildForAmountChange(postings, 6000, 0);
    expect(double.parse(out[0].units!), 6000);
    expect(double.parse(out[1].units!), -6000);
    expect(isBalanced(out), isTrue);
  });

  test('>2 postings: only the driver changes; counterparts untouched', () {
    final postings = <PostingEdit>[
      const PostingEdit(account: 'Expenses:Food', units: '-50', currency: 'CNY'),
      const PostingEdit(account: 'Expenses:Tip', units: '-5', currency: 'CNY'),
      const PostingEdit(account: 'Assets:Wallet', units: '55', currency: 'CNY'),
    ];
    final out = rebuildForAmountChange(postings, 60, 1);
    // driver (first Expenses) updated; others unchanged
    expect(double.parse(out[0].units!), -60);
    expect(out[1].units, '-5');
    expect(out[2].units, '55');
    expect(isBalanced(out), isFalse);
  });

  test('empty postings returns empty', () {
    expect(rebuildForAmountChange(const [], 60, 1), isEmpty);
  });
}
