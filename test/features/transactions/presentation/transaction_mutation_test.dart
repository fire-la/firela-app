import 'package:firela_app/features/transactions/domain/entities/transaction.dart';
import 'package:firela_app/features/transactions/presentation/signals/transaction_mutation_signal.dart';
import 'package:flutter_test/flutter_test.dart';

Transaction _tx(String id, {String narration = 'n', String status = 'ACTIVE'}) =>
    Transaction(
      id: id,
      date: '2026-01-01',
      narration: narration,
      payee: null,
      sourceType: null,
      status: status,
      displayAmount: 0,
      currency: 'CNY',
    );

void main() {
  group('applyTransactionMutation', () {
    test('ReplaceTransaction swaps the matching id in place, preserves order', () {
      final list = [_tx('a'), _tx('b'), _tx('c')];
      final out = applyTransactionMutation(
          list, ReplaceTransaction(_tx('b', narration: 'updated')));
      expect(out.map((t) => t.id), ['a', 'b', 'c']);
      expect(out[1].narration, 'updated');
      expect(out.length, 3);
    });

    test('ReplaceTransaction is a no-op when id is absent', () {
      final list = [_tx('a'), _tx('b')];
      final out = applyTransactionMutation(list, ReplaceTransaction(_tx('z')));
      expect(out, same(list));
    });

    test('SupersedeTransaction removes oldId and prepends newTx', () {
      final list = [_tx('a'), _tx('b')];
      final out = applyTransactionMutation(
          list, SupersedeTransaction(oldId: 'a', newTx: _tx('new')));
      expect(out.map((t) => t.id), ['new', 'b']);
    });

    test('SupersedeTransaction prepends even when oldId is absent', () {
      final list = [_tx('b')];
      final out = applyTransactionMutation(
          list, SupersedeTransaction(oldId: 'x', newTx: _tx('new')));
      expect(out.map((t) => t.id), ['new', 'b']);
    });

    test('SupersedeTransaction dedups when newTx.id already present', () {
      final list = [_tx('a'), _tx('new')];
      final out = applyTransactionMutation(
          list, SupersedeTransaction(oldId: 'a', newTx: _tx('new')));
      expect(out.map((t) => t.id), ['new']);
      expect(out.length, 1);
    });
  });
}
