import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';


/// tests for BeanAccountsApi
void main() {
  final instance = FirelaApi().getBeanAccountsApi();

  group(BeanAccountsApi, () {
    // Post an opening-balance transaction
    //
    // Posts a double-entry opening-balance transaction against Equity:Opening-Balances for an existing Assets/Liabilities account. At most one active opening balance per account.
    //
    //Future<OpeningBalanceResultDto> accountControllerAddOpeningBalance(String id, String region, CreateOpeningBalanceDto createOpeningBalanceDto) async
    test('test accountControllerAddOpeningBalance', () async {
      // TODO
    });

    // Close account
    //
    // Closes an account (Beancount Close directive)
    //
    //Future<AccountResponseDto> accountControllerClose(String id, String region, CloseAccountDto closeAccountDto) async
    test('test accountControllerClose', () async {
      // TODO
    });

    // Create a new account
    //
    // Creates a new account (Beancount Open directive)
    //
    //Future<AccountResponseDto> accountControllerCreate(String region, CreateAccountDto createAccountDto) async
    test('test accountControllerCreate', () async {
      // TODO
    });

    // Delete account
    //
    // Deletes an account (only if no transactions)
    //
    //Future accountControllerDelete(String id, String region) async
    test('test accountControllerDelete', () async {
      // TODO
    });

    // List accounts
    //
    // Returns all accounts with optional filtering
    //
    //Future<AccountListResponseDto> accountControllerFindAll(String region, { String type, String status, bool isCustom, String search, num limit, num offset }) async
    test('test accountControllerFindAll', () async {
      // TODO
    });

    // Get account by ID
    //
    // Returns a specific account
    //
    //Future<AccountResponseDto> accountControllerFindOne(String id, String region) async
    test('test accountControllerFindOne', () async {
      // TODO
    });

    // Reopen account
    //
    // Reopens a previously closed account
    //
    //Future<AccountResponseDto> accountControllerReopen(String id, String region, ReopenAccountDto reopenAccountDto) async
    test('test accountControllerReopen', () async {
      // TODO
    });

    // Update account
    //
    // Updates account metadata (path cannot be changed)
    //
    //Future<AccountResponseDto> accountControllerUpdate(String id, String region, UpdateAccountDto updateAccountDto) async
    test('test accountControllerUpdate', () async {
      // TODO
    });

  });
}
