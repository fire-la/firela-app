import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for BeanTransactionsApi
void main() {
  final instance = FirelaApi().getBeanTransactionsApi();

  group(BeanTransactionsApi, () {
    // Batch create transactions (DEPRECATED)
    //
    // DEPRECATED: Use POST /api/v1/{region}/bean/import/provider/{name}/sync instead. This endpoint skips dedup, rule matching, and review branching.
    //
    //Future transactionController(String region) async
    test('test transactionController', () async {
      // TODO
    });

    // Create transaction (DEPRECATED)
    //
    // DEPRECATED: Use POST /api/v1/{region}/bean/import/provider/{name}/sync instead. This endpoint skips dedup, rule matching, and review branching.
    //
    //Future<TransactionResponseDto> transactionControllerCreate(String region, CreateTransactionDto createTransactionDto) async
    test('test transactionControllerCreate', () async {
      // TODO
    });

    // Get transaction detail
    //
    // Returns transaction details including all postings
    //
    //Future<TransactionDetailDto> transactionControllerGetDetail(String id, String region) async
    test('test transactionControllerGetDetail', () async {
      // TODO
    });

    // List transactions
    //
    // Returns a paginated list of transactions with optional filters
    //
    //Future<TransactionListResponseDto> transactionControllerList(String region, { num limit, num offset, String dateFrom, String dateTo, String status, String search, String accountId }) async
    test('test transactionControllerList', () async {
      // TODO
    });

    // Update transaction metadata
    //
    // Updates transaction metadata (flag, payee, narration, tags, links, meta). Postings cannot be modified.
    //
    //Future<TransactionDetailDto> transactionControllerUpdate(String id, String region, UpdateTransactionDto updateTransactionDto) async
    test('test transactionControllerUpdate', () async {
      // TODO
    });

    //Future transactionController_0(String region) async
    test('test transactionController_0', () async {
      // TODO
    });
  });
}
