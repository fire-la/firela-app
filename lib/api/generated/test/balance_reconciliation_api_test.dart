import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';


/// tests for BalanceReconciliationApi
void main() {
  final instance = FirelaApi().getBalanceReconciliationApi();

  group(BalanceReconciliationApi, () {
    // Record a balance assertion
    //
    // Persists the reconciliation as a BeanBalance assertion (amount = actual, diffAmount = book − actual). Re-reconciling the same day/currency upserts.
    //
    //Future<ReconciliationRecordDto> reconciliationControllerAssert(String region, AssertReconciliationDto assertReconciliationDto) async
    test('test reconciliationControllerAssert', () async {
      // TODO
    });

    // Preview reconciliation (book vs actual)
    //
    // Computes book balance, diff, Beancount-inferred tolerance, and suggested action without persisting.
    //
    //Future<ReconciliationComputeResultDto> reconciliationControllerCompute(String region, ComputeReconciliationDto computeReconciliationDto) async
    test('test reconciliationControllerCompute', () async {
      // TODO
    });

    // List reconciliation history for an account
    //
    // Returns recorded balance assertions (most recent first). The latest drives the account-detail \"Last <date>\" badge.
    //
    //Future<BuiltList<ReconciliationRecordDto>> reconciliationControllerHistory(String accountId, String region) async
    test('test reconciliationControllerHistory', () async {
      // TODO
    });

    // Generate a pad adjusting entry
    //
    // When book is outside tolerance, synthesizes a Beancount pad transaction (flag P) booking the diff from source_account and persists it. Source defaults to Equity:Opening-Balances.
    //
    //Future<PadResultDto> reconciliationControllerPad(String region, PadReconciliationDto padReconciliationDto) async
    test('test reconciliationControllerPad', () async {
      // TODO
    });

  });
}
