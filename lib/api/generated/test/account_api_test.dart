import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for AccountApi
void main() {
  final instance = FirelaApi().getAccountApi();

  group(AccountApi, () {
    // Close account
    //
    // Mark an account as closed
    //
    //Future<AccountResponse> closeAccount(String region, String id) async
    test('test closeAccount', () async {
      // TODO
    });

    // Create account
    //
    // Create a new Beancount account
    //
    //Future<AccountResponse> createAccount(String region, CreateAccountRequest createAccountRequest) async
    test('test createAccount', () async {
      // TODO
    });

    // Delete account
    //
    // Delete an account (only if no postings reference it)
    //
    //Future deleteAccount(String region, String id) async
    test('test deleteAccount', () async {
      // TODO
    });

    // Get account
    //
    // Retrieve a specific account by ID
    //
    //Future<AccountResponse> getAccount(String region, String id) async
    test('test getAccount', () async {
      // TODO
    });

    // List accounts
    //
    // Retrieve all accounts for the specified region with optional filters
    //
    //Future<AccountListResponse> listAccounts(String region, { AccountType type, AccountStatus status, bool isCustom, String search, int limit, int offset }) async
    test('test listAccounts', () async {
      // TODO
    });

    // Reopen account
    //
    // Reopen a previously closed account
    //
    //Future<AccountResponse> reopenAccount(String region, String id) async
    test('test reopenAccount', () async {
      // TODO
    });

    // Update account
    //
    // Update account properties
    //
    //Future<AccountResponse> updateAccount(String region, String id, UpdateAccountRequest updateAccountRequest) async
    test('test updateAccount', () async {
      // TODO
    });
  });
}
