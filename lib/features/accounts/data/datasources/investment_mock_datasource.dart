import '../../domain/entities/holding.dart';

/// Mock investment account detail + holdings (converted to base currency).
/// TODO(api): replace with getAccountDetail(id) + holdings once endpoints exist.
class InvestmentMockDatasource {
  const InvestmentMockDatasource._();

  static Map<String, dynamic> accountDetail(String id, {required int holdingsCount}) {
    return {
      'id': id,
      'emoji': '📈',
      'name': 'Schwab',
      'accountPath': 'Assets:Brokerage',
      'balance': '+56,000',
      'currencyTag': 'USD · 证券',
      'statusLabel': '活跃',
      'accountType': 'Assets（投资）',
      'custodian': 'Charles Schwab',
      'standard': 'us · 证券',
      'holdingsCount': holdingsCount,
    };
  }

  static List<Holding> holdings() {
    return const [
      Holding(name: 'AAPL', emoji: '🍎', quantity: 50, costUnit: 240, marketUnit: 300, currency: 'CNY'),
      Holding(name: 'BTC', emoji: '🪙', quantity: 0.15, costUnit: 266667, marketUnit: 273333, currency: 'CNY'),
      Holding(name: 'VOOG', emoji: '📈', quantity: 20, costUnit: 400, marketUnit: 380, currency: 'CNY'),
    ];
  }
}
