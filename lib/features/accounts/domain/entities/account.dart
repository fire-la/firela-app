/// Account entity (domain model)
class Account {
  const Account({
    required this.id,
    required this.name,
    required this.balance,
    required this.currency,
    required this.type,
  });

  final String id;
  final String name;
  final double balance;
  final String currency;
  final AccountType type;

  /// Copy with method for immutability
  Account copyWith({
    String? id,
    String? name,
    double? balance,
    String? currency,
    AccountType? type,
  }) {
    return Account(
      id: id ?? this.id,
      name: name ?? this.name,
      balance: balance ?? this.balance,
      currency: currency ?? this.currency,
      type: type ?? this.type,
    );
  }

  /// Create empty account
  factory Account.empty() {
    return const Account(
      id: '',
      name: '',
      balance: 0.0,
      currency: 'USD',
      type: AccountType.checking,
    );
  }

  @override
  String toString() => 'Account($id, $name, $balance $currency)';
}

/// Account types
enum AccountType {
  checking,
  savings,
  investment,
  credit,
}
