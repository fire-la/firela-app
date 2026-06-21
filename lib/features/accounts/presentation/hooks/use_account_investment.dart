import 'package:flutter_hooks/flutter_hooks.dart';
import '../../data/datasources/investment_mock_datasource.dart';
import '../../domain/entities/holding.dart';

class AccountInvestmentState {
  const AccountInvestmentState({
    required this.detail,
    required this.holdings,
    required this.totalCost,
    required this.totalMarketValue,
    required this.totalPnl,
  });

  final Map<String, dynamic> detail;
  final List<Holding> holdings;
  final double totalCost;
  final double totalMarketValue;
  final double totalPnl;
}

/// Account investment detail + holdings (mock). Summary totals are folded
/// from holdings so they never drift from the row values.
/// TODO(api): replace mock datasource with getAccountDetail(id).
AccountInvestmentState useAccountInvestment(String id) {
  final holdings = useMemoized(InvestmentMockDatasource.holdings, const []);
  final detail = useMemoized(
    () => InvestmentMockDatasource.accountDetail(id, holdingsCount: holdings.length),
    [id, holdings.length],
  );
  final totalCost = holdings.fold<double>(0, (s, h) => s + h.costTotal);
  final totalMarketValue = holdings.fold<double>(0, (s, h) => s + h.marketTotal);
  final totalPnl = holdings.fold<double>(0, (s, h) => s + h.pnl);
  return AccountInvestmentState(
    detail: detail,
    holdings: holdings,
    totalCost: totalCost,
    totalMarketValue: totalMarketValue,
    totalPnl: totalPnl,
  );
}
