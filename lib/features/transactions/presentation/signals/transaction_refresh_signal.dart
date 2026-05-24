import 'package:signals_flutter/signals_flutter.dart';

final transactionRefreshSignal = signal<int>(0);

void refreshTransactionData() {
  transactionRefreshSignal.value++;
}
