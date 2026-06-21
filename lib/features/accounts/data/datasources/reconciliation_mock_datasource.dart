/// Mock reconciliation data: book balance + tolerance.
/// TODO(api): replace with reconciliation API (book balance, assertion, pad entry).
class ReconciliationMockDatasource {
  const ReconciliationMockDatasource._();

  static Map<String, dynamic> bookBalance(String accountId) {
    return {
      'accountId': accountId,
      'accountLabel': '招商银行储蓄卡',
      'accountPath': 'Assets:Bank:Checking',
      'balance': 12348.50,
      'currency': 'CNY',
      'date': '2026.06.20',
    };
  }

  /// Tolerance: differences within this amount default to assertion-only.
  static const double tolerance = 1.00;
}
