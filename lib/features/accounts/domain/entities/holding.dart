/// Investment holding with cost basis.
/// Mirrors a single holding row in AccountDetailInvestmentPage (.pen holding-* frames).
/// TODO(api): replace mock fields when a getAccountDetail/holdings endpoint exists.
class Holding {
  const Holding({
    required this.name,
    required this.emoji,
    required this.quantity,
    required this.costUnit,
    required this.marketUnit,
    required this.currency,
  });

  final String name;
  final String emoji;
  final double quantity;
  final double costUnit;
  final double marketUnit;
  final String currency;

  double get costTotal => quantity * costUnit;
  double get marketTotal => quantity * marketUnit;
  double get pnl => marketTotal - costTotal;
  double get pnlPercent => costTotal == 0 ? 0 : pnl / costTotal * 100;
}
