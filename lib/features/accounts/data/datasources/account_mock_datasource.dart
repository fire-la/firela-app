import '../../domain/entities/account.dart';

/// Mock data source for demonstration
class AccountMockDataSource {
  /// Simulates fetching accounts from API
  Future<List<Account>> fetchAccounts() async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1));

    return [
      const Account(
        id: '1',
        name: 'Checking Account',
        balance: 2500.50,
        currency: 'USD',
        type: AccountType.checking,
      ),
      const Account(
        id: '2',
        name: 'Savings Account',
        balance: 10000.00,
        currency: 'USD',
        type: AccountType.savings,
      ),
      const Account(
        id: '3',
        name: 'Investment Portfolio',
        balance: 50000.00,
        currency: 'USD',
        type: AccountType.investment,
      ),
    ];
  }

  /// Simulates fetching single account
  Future<Account> fetchAccount(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));

    final accounts = await fetchAccounts();
    return accounts.firstWhere(
      (account) => account.id == id,
      orElse: () => Account.empty(),
    );
  }

  /// Simulates creating account
  Future<Account> createAccount(Account account) async {
    await Future.delayed(const Duration(milliseconds: 800));
    return account;
  }
}
