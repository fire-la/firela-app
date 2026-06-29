import 'package:firela_api/firela_api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firela_app/features/transactions/domain/models/posting_edit.dart';
import 'package:firela_app/features/transactions/domain/structural_change.dart';

TransactionDetailDto _tx({
  String date = '2026-06-19',
  List<({String account, String? units, String? currency})> postings = const [
    (account: 'Expenses:Food', units: '-60.00', currency: 'CNY'),
    (account: 'Assets:Wallet', units: '60.00', currency: 'CNY'),
  ],
}) {
  return TransactionDetailDto((b) => b
    ..id = 'tx1'
    ..date = date
    ..narration = 'n'
    ..createdAt = '2026-06-19T00:00:00Z'
    ..status = TransactionDetailDtoStatusEnum.ACTIVE
    ..postings.addAll(postings.map((p) => PostingDetailDto((pp) => pp
      ..id = p.account
      ..accountId = p.account
      ..account = p.account
      ..units = p.units
      ..currency = p.currency))));
}

void main() {
  test('no change → not structural', () {
    final original = _tx();
    final postings = original.postings.map(PostingEdit.from).toList();
    expect(
      isStructuralChange(original: original, date: '2026-06-19', postings: postings),
      isFalse,
    );
  });

  test('reformatted units (same value) → not structural', () {
    final original = _tx();
    // Backend returned -60.00; the editor normalizes to -60.0 on touch.
    final postings = <PostingEdit>[
      const PostingEdit(account: 'Expenses:Food', units: '-60.0', currency: 'CNY'),
      const PostingEdit(account: 'Assets:Wallet', units: '60.0', currency: 'CNY'),
    ];
    expect(
      isStructuralChange(original: original, date: '2026-06-19', postings: postings),
      isFalse,
    );
  });

  test('date changed → structural', () {
    final original = _tx();
    final postings = original.postings.map(PostingEdit.from).toList();
    expect(
      isStructuralChange(original: original, date: '2026-06-20', postings: postings),
      isTrue,
    );
  });

  test('account changed → structural', () {
    final original = _tx();
    final postings = original.postings.map(PostingEdit.from).toList();
    postings[0] = postings[0].copyWith(account: 'Expenses:Drink');
    expect(
      isStructuralChange(original: original, date: '2026-06-19', postings: postings),
      isTrue,
    );
  });

  test('units magnitude changed → structural', () {
    final original = _tx();
    final postings = original.postings.map(PostingEdit.from).toList();
    postings[0] = postings[0].copyWith(units: '-70.0');
    expect(
      isStructuralChange(original: original, date: '2026-06-19', postings: postings),
      isTrue,
    );
  });

  test('postings count changed → structural', () {
    final original = _tx();
    final postings = original.postings.map(PostingEdit.from).toList()..removeLast();
    expect(
      isStructuralChange(original: original, date: '2026-06-19', postings: postings),
      isTrue,
    );
  });

  test('isBalanced true for a balanced pair', () {
    final postings = <PostingEdit>[
      const PostingEdit(account: 'Expenses:Food', units: '-60', currency: 'CNY'),
      const PostingEdit(account: 'Assets:Wallet', units: '60', currency: 'CNY'),
    ];
    expect(isBalanced(postings), isTrue);
  });

  test('isBalanced false when imbalance', () {
    final postings = <PostingEdit>[
      const PostingEdit(account: 'Expenses:Food', units: '-60', currency: 'CNY'),
      const PostingEdit(account: 'Assets:Wallet', units: '50', currency: 'CNY'),
    ];
    expect(isBalanced(postings), isFalse);
  });
}
