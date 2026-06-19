import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/network/auth_manager.dart';
import '../../../../core/router/route_names.dart';
import '../../../../core/services/ign_api_service.dart';
import '../../../../core/utils/logger.dart';
import '../../../../shared/widgets/section_header.dart';
import '../../../../shared/widgets/settings_icon_button.dart';
import '../../../review_center/presentation/widgets/review_center_badge.dart';
import 'package:fl_chart/fl_chart.dart';

class ExpenseTabPage extends HookWidget {
  const ExpenseTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);
    final monthlyIncome = useState('0.00');
    final monthlyExpense = useState('0.00');
    final categories = useState<List<_CategorySummary>>([]);
    final error = useState<String?>(null);

    Future<void> fetchData() async {
      if (!AuthManager.instance.isLoggedIn) return;
      isLoading.value = true;
      error.value = null;

      try {
        final now = DateTime.now();
        final period = '${now.year}-${now.month.toString().padLeft(2, '0')}';

        final results = await Future.wait([
          IgnApiService.instance.getCashFlow(period: period),
          IgnApiService.instance.getTransactions(params: {
            'limit': '100',
            'offset': '0',
          }),
        ]);

        final cashFlow = results[0];
        final txResult = results[1];

        // Parse cash flow
        if (cashFlow.isNotEmpty) {
          final income = _parseDouble(cashFlow['income']);
          final expense = _parseDouble(cashFlow['expense']);
          monthlyIncome.value = _formatCurrency(income);
          monthlyExpense.value = _formatCurrency(expense);
        }

        // Group transactions by expense account category
        final data = txResult['data'] as List<dynamic>? ?? [];
        final catMap = <String, double>{};
        final catAccountIds = <String, Set<String>>{};
        for (final tx in data) {
          final postings = tx['postings'] as List<dynamic>? ?? [];
          for (final p in postings) {
            final acct = (p['accountName'] ?? p['account'] ?? '') as String;
            final units = _parseDouble(p['units']);
            if (acct.startsWith('Expenses:') && units != 0) {
              // Extract category: "Expenses:Food:Restaurant" → "Expenses:Food"
              final parts = acct.split(':');
              final category =
                  parts.length >= 2 ? '${parts[0]}:${parts[1]}' : acct;
              catMap[category] = (catMap[category] ?? 0) + units.abs();
              // Track account IDs for this category
              final pAcctId = (p['accountId'] ?? '') as String;
              if (pAcctId.isNotEmpty) {
                catAccountIds.putIfAbsent(category, () => {}).add(pAcctId);
              }
            }
          }
        }

        final sorted = catMap.entries.toList()
          ..sort((a, b) => b.value.compareTo(a.value));
        categories.value = sorted
            .map((e) => _CategorySummary(
                  path: e.key,
                  displayName: e.key.split(':').last,
                  amount: e.value,
                  accountIds: catAccountIds[e.key]?.toList() ?? [],
                ))
            .toList();
      } catch (e) {
        logger.e('[ExpenseTab] Failed: $e');
        error.value = '加载失败';
      } finally {
        isLoading.value = false;
      }
    }

    useEffect(() {
      fetchData();
      return null;
    }, []);

    return Scaffold(
      backgroundColor: ThemeTokens.of(context).bgPage,
      body: RefreshIndicator(
        onRefresh: fetchData,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: TokenSpacing.xl)
              .copyWith(bottom: MediaQuery.of(context).padding.bottom + 80),
          child: Column(
            children: [
              PageHeader(
                leading: const ReviewCenterBadge(),
                trailing: const SettingsIconButton(),
              ),
              const SizedBox(height: TokenSpacing.xl),

              // Income/Expense display
              NetWorthDisplay(
                leftLabel: '本月支出(元)',
                leftValue: isLoading.value ? '—' : '-${monthlyExpense.value}',
                rightLabel: '本月收入(元)',
                rightValue: isLoading.value ? '—' : '+${monthlyIncome.value}',
              ),
              const SizedBox(height: TokenSpacing.xl),

              // Charts row
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: DonutChartCard(
                        title: '支出分类',
                        centerText: '${categories.value.length}',
                        sections: _buildDonutSections(categories.value),
                        legends: _buildDonutLegends(categories.value),
                      ),
                    ),
                    const SizedBox(width: TokenSpacing.lg),
                    Expanded(
                      child: ChartCard(
                        title: '支出趋势',
                        chartWidget: _buildLineChart(),
                        bottomLeftLabel: '近6月',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: TokenSpacing.xl),

              // Category list
              SectionHeader(title: '收支明细'),
              const SizedBox(height: TokenSpacing.xl),

              if (isLoading.value && categories.value.isEmpty)
                ..._buildSkeleton()
              else if (categories.value.isEmpty)
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: TokenSpacing.xxl * 2),
                    child: Column(
                      children: [
                        Icon(Icons.receipt_long_outlined,
                            size: 48, color: TokenColors.textTertiary),
                        const SizedBox(height: TokenSpacing.lg),
                        Text('暂无交易记录',
                            style: TokenTypography.body(
                                color: TokenColors.textTertiary)),
                      ],
                    ),
                  ),
                )
              else
                for (final cat in categories.value)
                  Padding(
                    padding: const EdgeInsets.only(bottom: TokenSpacing.lg),
                    child: _buildCategoryItem(context, cat),
                  ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildSkeleton() {
    return List.generate(
        4,
        (_) => Padding(
              padding: const EdgeInsets.only(bottom: TokenSpacing.lg),
              child: Container(
                height: 72,
                padding: const EdgeInsets.all(TokenSpacing.xl),
                decoration: BoxDecoration(
                  color: TokenColors.bgCard,
                  borderRadius: TokenRadius.borderLg,
                  border: Border.all(color: TokenColors.borderCard, width: 0.5),
                ),
                child: Row(
                  children: [
                    Container(
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                            color: TokenColors.neutral200,
                            borderRadius: BorderRadius.circular(10))),
                    const SizedBox(width: TokenSpacing.lg),
                    Container(
                        width: 80,
                        height: 14,
                        decoration: BoxDecoration(
                            color: TokenColors.neutral200,
                            borderRadius: TokenRadius.borderSm)),
                    const Spacer(),
                    Container(
                        width: 60,
                        height: 14,
                        decoration: BoxDecoration(
                            color: TokenColors.neutral200,
                            borderRadius: TokenRadius.borderSm)),
                  ],
                ),
              ),
            ));
  }

  Widget _buildCategoryItem(BuildContext context, _CategorySummary cat) {
    final tokens = ThemeTokens.of(context);
    final colors = [
      TokenColors.chartBlue,
      TokenColors.chartAmber,
      TokenColors.chartGreen,
      TokenColors.chartGrey
    ];
    final color = colors[cat.path.hashCode.abs() % colors.length];

    return GestureDetector(
      onTap: () {
        // Use first account ID for filtering, fall back to path
        final id = cat.accountIds.isNotEmpty ? cat.accountIds.first : cat.path;
        context.push(
            '${RouteNames.transactions}?accountId=${Uri.encodeComponent(id)}&accountName=${Uri.encodeComponent(cat.displayName)}');
      },
      child: Container(
        padding: const EdgeInsets.all(TokenSpacing.xl),
        decoration: BoxDecoration(
          color: tokens.bgCard,
          borderRadius: TokenRadius.borderLg,
          border: Border.all(color: tokens.borderCard, width: 0.5),
          boxShadow: [
            BoxShadow(
                color: tokens.shadow,
                blurRadius: 18,
                offset: const Offset(0, 2),
                spreadRadius: 2),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child:
                  Icon(_categoryIcon(cat.displayName), size: 18, color: color),
            ),
            const SizedBox(width: TokenSpacing.lg),
            Expanded(
              child: Text(
                cat.displayName,
                style: TokenTypography.body(
                    fontWeight: FontWeight.w500,
                    color: TokenColors.textPrimary),
              ),
            ),
            Text(
              '-${cat.amount.toStringAsFixed(2)}',
              style: TokenTypography.body(
                  fontWeight: FontWeight.w700, color: TokenColors.textPrimary),
            ),
          ],
        ),
      ),
    );
  }

  IconData _categoryIcon(String name) {
    switch (name.toLowerCase()) {
      case 'food':
        return Icons.restaurant;
      case 'transport':
        return Icons.directions_car;
      case 'shopping':
        return Icons.shopping_bag;
      case 'entertainment':
        return Icons.movie;
      case 'health':
        return Icons.local_hospital;
      case 'education':
        return Icons.school;
      case 'housing':
        return Icons.home;
      case 'travel':
        return Icons.flight;
      default:
        return Icons.category;
    }
  }

  List<PieChartSectionData> _buildDonutSections(List<_CategorySummary> cats) {
    if (cats.isEmpty)
      return [
        PieChartSectionData(
            value: 1, color: TokenColors.neutral200, radius: 30, title: '')
      ];
    final total = cats.fold(0.0, (sum, c) => sum + c.amount);
    if (total == 0)
      return [
        PieChartSectionData(
            value: 1, color: TokenColors.neutral200, radius: 30, title: '')
      ];
    final colors = [
      TokenColors.chartBlue,
      TokenColors.chartAmber,
      TokenColors.chartGreen,
      TokenColors.chartGrey
    ];
    return cats
        .take(4)
        .toList()
        .asMap()
        .entries
        .map(
          (e) => PieChartSectionData(
              value: e.value.amount,
              title: '',
              color: colors[e.key % colors.length],
              radius: 30),
        )
        .toList();
  }

  List<DonutLegendItem> _buildDonutLegends(List<_CategorySummary> cats) {
    if (cats.isEmpty) return [];
    final colors = [
      TokenColors.chartBlue,
      TokenColors.chartAmber,
      TokenColors.chartGreen,
      TokenColors.chartGrey
    ];
    return cats
        .take(3)
        .toList()
        .asMap()
        .entries
        .map(
          (e) => DonutLegendItem(
              label: e.value.displayName, color: colors[e.key % colors.length]),
        )
        .toList();
  }

  Widget _buildLineChart() {
    return LineChart(LineChartData(
      gridData: const FlGridData(show: false),
      titlesData: const FlTitlesData(show: false),
      borderData: FlBorderData(show: false),
      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3.2),
            FlSpot(1, 4.5),
            FlSpot(2, 3.8),
            FlSpot(3, 5.1),
            FlSpot(4, 4.7),
            FlSpot(5, 6.2)
          ],
          isCurved: true,
          color: TokenColors.textAccent,
          barWidth: 2,
          dotData: const FlDotData(show: false),
          belowBarData: BarAreaData(show: false),
        ),
      ],
    ));
  }

  static double _parseDouble(dynamic v) {
    if (v == null) return 0.0;
    if (v is num) return v.toDouble();
    if (v is String) return double.tryParse(v) ?? 0.0;
    return 0.0;
  }

  static String _formatCurrency(double v) {
    if (v == 0) return '0.00';
    final neg = v < 0;
    final abs = v.abs();
    final parts = abs.toStringAsFixed(2).split('.');
    final buf = StringBuffer();
    for (int i = 0; i < parts[0].length; i++) {
      if (i > 0 && (parts[0].length - i) % 3 == 0) buf.write(',');
      buf.write(parts[0][i]);
    }
    return '${neg ? '-' : ''}${buf.toString()}.${parts[1]}';
  }
}

class _CategorySummary {
  final String path;
  final String displayName;
  final double amount;
  final List<String> accountIds;
  const _CategorySummary(
      {required this.path,
      required this.displayName,
      required this.amount,
      this.accountIds = const []});
}
