import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for TransactionApi
void main() {
  final instance = FirelaApi().getTransactionApi();

  group(TransactionApi, () {
    // Create transaction
    //
    // Create a new double-entry transaction.   A transaction must have at least 2 postings that balance (debits = credits). The system will automatically interpolate missing amounts if possible.
    //
    //Future<TransactionResponse> createTransaction(String region, CreateTransactionRequest createTransactionRequest) async
    test('test createTransaction', () async {
      // TODO
    });

    // Get transaction
    //
    // Retrieve a specific transaction by ID with full details
    //
    //Future<TransactionDetail> getTransaction(String region, String id) async
    test('test getTransaction', () async {
      // TODO
    });

    // List transactions
    //
    // Retrieve a paginated list of transactions for the specified region
    //
    //Future<TransactionListResponse> listTransactions(String region, { int limit, int offset, Date dateFrom, Date dateTo, TxnStatus status, String search, String accountId }) async
    test('test listTransactions', () async {
      // TODO
    });

    // Update transaction metadata
    //
    // Update transaction metadata fields (does not change postings)
    //
    //Future<TransactionDetail> updateTransaction(String region, String id, UpdateTransactionRequest updateTransactionRequest) async
    test('test updateTransaction', () async {
      // TODO
    });

    // Void transaction
    //
    // Mark a transaction as voided (soft delete)
    //
    //Future voidTransaction(String region, String id) async
    test('test voidTransaction', () async {
      // TODO
    });
  });
}
