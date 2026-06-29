import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../domain/models/net_worth_history_point.dart';

/// Liabilities trend mini-chart widget
/// Shows last 6 months of liabilities data with trend indicator
class LiabilitiesTrendChart extends StatelessWidget {
  const LiabilitiesTrendChart({
    super.key,
    required this.history,
    this.isLoading = false,
    this.onTap,
  });

  /// List of net worth history points (last 6 months)
  final List<NetWorthHistoryPoint> history;

  /// Loading state
  final bool isLoading;

  /// Callback when chart is tapped
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Tappable(
      onTap: onTap,
      semanticLabel: isLoading || history.isEmpty
          ? l10n.liabilities
          : '${l10n.liabilities}, ${_formatCurrency(_getCurrentLiabilities())}',
      child: Container(
        height: 80,
        margin: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
        padding: const EdgeInsets.all(TokenSpacing.xl),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerHighest,
          borderRadius: TokenRadius.borderSm,
        ),
        child: Row(
          children: [
            // Current amount and trend indicator
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    l10n.liabilities,
                    style: TokenTypography.caption(color: TokenColors.textTertiary),
                  ),
                  const SizedBox(height: TokenSpacing.xs),
                  if (isLoading)
                    const SizedBox(
                      height: 16,
                      width: 60,
                      child: LinearProgressIndicator(),
                    )
                  else
                    Row(
                      children: [
                        Text(
                          _formatCurrency(_getCurrentLiabilities()),
                          style: TokenTypography.body(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: TokenSpacing.sm),
                        _buildTrendIndicator(theme),
                      ],
                    ),
                ],
              ),
            ),

            // Mini chart
            Expanded(
              flex: 3,
              child: isLoading || history.isEmpty
                  ? _buildEmptyChart(theme)
                  : _buildLineChart(theme),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrendIndicator(ThemeData theme) {
    if (history.length < 2) {
      return const SizedBox.shrink();
    }

    final trend = _calculateTrend();
    final isIncreasing = trend > 0;
    final trendColor = isIncreasing ? TokenColors.error : TokenColors.success;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: trendColor.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(TokenSpacing.xs),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isIncreasing ? Icons.arrow_upward : Icons.arrow_downward,
            size: 12,
            color: trendColor,
          ),
          const SizedBox(width: 2),
          Text(
            '${trend.abs().toStringAsFixed(1)}%',
            style: TokenTypography.micro(
              color: trendColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyChart(ThemeData theme) {
    return Center(
      child: Text(
        '--',
        style: TokenTypography.caption(color: TokenColors.textTertiary),
      ),
    );
  }

  Widget _buildLineChart(ThemeData theme) {
    final spots = _buildSpots();

    return LineChart(
      LineChartData(
        gridData: const FlGridData(show: false),
        titlesData: const FlTitlesData(show: false),
        borderData: FlBorderData(show: false),
        minX: 0,
        maxX: (history.length - 1).toDouble(),
        minY: _getMinY(),
        maxY: _getMaxY(),
        lineBarsData: [
          LineChartBarData(
            spots: spots,
            isCurved: true,
            color: TokenColors.primary,
            barWidth: 2,
            dotData: const FlDotData(show: false),
            belowBarData: BarAreaData(
              show: true,
              color: TokenColors.primary.withValues(alpha: 0.1),
            ),
          ),
        ],
      ),
    );
  }

  List<FlSpot> _buildSpots() {
    if (history.isEmpty) return [];

    return history.asMap().entries.map((entry) {
      return FlSpot(
        entry.key.toDouble(),
        entry.value.totalLiabilities.abs(),
      );
    }).toList();
  }

  double _getCurrentLiabilities() {
    if (history.isEmpty) return 0;
    return history.last.totalLiabilities.abs();
  }

  double _calculateTrend() {
    if (history.length < 2) return 0;

    final current = history.last.totalLiabilities.abs();
    final previous = history[history.length - 2].totalLiabilities.abs();

    if (previous == 0) return 0;
    return ((current - previous) / previous) * 100;
  }

  double _getMinY() {
    if (history.isEmpty) return 0;
    final values = history.map((h) => h.totalLiabilities.abs()).toList();
    final min = values.reduce((a, b) => a < b ? a : b);
    // Add 10% padding
    return min * 0.9;
  }

  double _getMaxY() {
    if (history.isEmpty) return 1;
    final values = history.map((h) => h.totalLiabilities.abs()).toList();
    final max = values.reduce((a, b) => a > b ? a : b);
    // Add 10% padding
    return max * 1.1;
  }

  String _formatCurrency(double value) {
    if (value == 0) return '0';

    // Shorten large numbers
    if (value >= 10000) {
      final formatted = (value / 10000).toStringAsFixed(1);
      return '$formatted w';
    }

    return value.toStringAsFixed(0);
  }
}
