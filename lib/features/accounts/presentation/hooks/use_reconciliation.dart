import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../data/datasources/reconciliation_mock_datasource.dart';

class ReconciliationState {
  const ReconciliationState({
    required this.book,
    required this.actualController,
    required this.tolerance,
  });

  final Map<String, dynamic> book;
  final TextEditingController actualController;
  final double tolerance;

  double get bookBalance => (book['balance'] as num).toDouble();
  String get currency => (book['currency'] as String?) ?? '';
  String get date => (book['date'] as String?) ?? '';
  String get accountName =>
      (book['accountLabel'] as String?) ?? (book['accountPath'] as String?) ?? '';

  double? get _actual => double.tryParse(actualController.text);
  bool get hasInput => _actual != null;

  /// Book balance minus actual balance.
  double? get difference => hasInput ? bookBalance - _actual! : null;

  /// True when the difference is within tolerance.
  bool get inTolerance => hasInput && ((bookBalance - _actual!).abs() <= tolerance);
}

/// Reconciliation state (mock book balance + actual input controller).
/// TODO(api): replace mock datasource with reconciliation API.
ReconciliationState useReconciliation(String accountId) {
  final book = useMemoized(
    () => ReconciliationMockDatasource.bookBalance(accountId),
    [accountId],
  );
  final actualController = useTextEditingController();
  useListenable(actualController);
  return ReconciliationState(
    book: book,
    actualController: actualController,
    tolerance: ReconciliationMockDatasource.tolerance,
  );
}
