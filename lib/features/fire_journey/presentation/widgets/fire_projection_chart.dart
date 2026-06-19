import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/design_tokens/design_tokens.dart';

/// Data class for a projection scenario
class ProjectionScenario {
  const ProjectionScenario({
    required this.name,
    required this.monthlySavings,
    required this.annualReturn,
    this.color = TokenColors.textPrimary,
  });

  final String name;
  final double monthlySavings;
  final double annualReturn;
  final Color color;
}

/// Projected data point
class ProjectionDataPoint {
  const ProjectionDataPoint({
    required this.month,
    required this.value,
    required this.date,
  });

  final int month;
  final double value;
  final DateTime date;
}

/// FIRE projection chart widget showing timeline to financial independence
class FireProjectionChart extends StatefulWidget {
  const FireProjectionChart({
    super.key,
    required this.currentNetWorth,
    required this.fireNumber,
    required this.scenarios,
    required this.targetYears,
    this.isLoading = false,
  });

  /// Current net worth
  final double currentNetWorth;

  /// Target FIRE number
  final double fireNumber;

  /// List of projection scenarios (baseline, aggressive, etc.)
  final List<ProjectionScenario> scenarios;

  /// Estimated years to FIRE for baseline scenario
  final double? targetYears;

  /// Loading state
  final bool isLoading;

  @override
  State<FireProjectionChart> createState() => _FireProjectionChartState();
}

class _FireProjectionChartState extends State<FireProjectionChart> {
  /// Maximum months to display (5 years = 60 months)
  static const int _maxMonths = 60;

  /// Currently hovered spot
  int? _hoveredMonth;
  double? _hoveredValue;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    if (widget.isLoading) {
      return _buildLoadingState();
    }

    if (widget.scenarios.isEmpty) {
      return _buildEmptyState(l10n);
    }

    final projectionData = _calculateProjections();
    final targetLineY = widget.fireNumber;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
      padding: const EdgeInsets.all(TokenSpacing.xl),
      decoration: BoxDecoration(
        color: TokenColors.neutral200,
        borderRadius: TokenRadius.borderSm,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                l10n.fireProjectionTitle,
                style: TokenTypography.h4(fontWeight: FontWeight.w600),
              ),
              if (widget.targetYears != null)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.sm, vertical: TokenSpacing.xs),
                  decoration: BoxDecoration(
                    color: TokenColors.textPrimary.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    l10n.yearsToFireValue(widget.targetYears!.toStringAsFixed(1)),
                    style: TokenTypography.micro(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: TokenSpacing.xl),

          // Chart
          SizedBox(
            height: 200,
            child: GestureDetector(
              onHorizontalDragUpdate: (details) {
                HapticFeedback.selectionClick();
              },
              child: LineChart(
                _buildChartData(projectionData, targetLineY, theme),
              ),
            ),
          ),

          // Legend
          const SizedBox(height: TokenSpacing.lg),
          _buildLegend(l10n),

          // Tooltip for hovered data
          if (_hoveredMonth != null && _hoveredValue != null)
            Padding(
              padding: const EdgeInsets.only(top: TokenSpacing.sm),
              child: _buildTooltip(l10n),
            ),
        ],
      ),
    );
  }

  Widget _buildLoadingState() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
      padding: const EdgeInsets.all(TokenSpacing.xl),
      height: 280,
      decoration: BoxDecoration(
        color: TokenColors.neutral200,
        borderRadius: TokenRadius.borderSm,
      ),
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _buildEmptyState(AppLocalizations l10n) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
      padding: const EdgeInsets.all(TokenSpacing.xl),
      height: 280,
      decoration: BoxDecoration(
        color: TokenColors.neutral200,
        borderRadius: TokenRadius.borderSm,
      ),
      child: Center(
        child: Text(
          l10n.fireGoal,
          style: TokenTypography.body(
            color: TokenColors.textTertiary,
          ),
        ),
      ),
    );
  }

  /// Calculate projection data for all scenarios
  Map<String, List<ProjectionDataPoint>> _calculateProjections() {
    final result = <String, List<ProjectionDataPoint>>{};

    for (final scenario in widget.scenarios) {
      final points = <ProjectionDataPoint>[];
      var balance = widget.currentNetWorth;
      final now = DateTime.now();
      final monthlyReturn = scenario.annualReturn / 12;

      for (var month = 0; month <= _maxMonths; month++) {
        points.add(ProjectionDataPoint(
          month: month,
          value: balance,
          date: DateTime(now.year, now.month + month, now.day),
        ));

        // Apply monthly return and savings
        balance *= (1 + monthlyReturn);
        balance += scenario.monthlySavings;

        // Stop if we've exceeded FIRE number significantly
        if (balance > widget.fireNumber * 1.5) {
          break;
        }
      }

      result[scenario.name] = points;
    }

    return result;
  }

  /// Build the LineChartData for the chart
  LineChartData _buildChartData(
    Map<String, List<ProjectionDataPoint>> projectionData,
    double targetLineY,
    ThemeData theme,
  ) {
    final lineBarsData = <LineChartBarData>[];

    for (var i = 0; i < widget.scenarios.length; i++) {
      final scenario = widget.scenarios[i];
      final points = projectionData[scenario.name] ?? [];

      lineBarsData.add(
        LineChartBarData(
          spots: points
              .map((p) => FlSpot(p.month.toDouble(), p.value))
              .toList(),
          isCurved: true,
          color: scenario.color,
          barWidth: i == 0 ? 3 : 2,
          dotData: const FlDotData(show: false),
          belowBarData: i == 0
              ? BarAreaData(
                  show: true,
                  color: scenario.color.withValues(alpha: 0.1),
                )
              : BarAreaData(show: false),
        ),
      );
    }

    // Calculate Y axis range
    final allValues = projectionData.values
        .expand((points) => points.map((p) => p.value))
        .toList();
    const minY = 0.0;
    final maxY = [widget.fireNumber * 1.1, ...allValues].reduce((a, b) => a > b ? a : b);

    return LineChartData(
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        horizontalInterval: maxY / 5,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: TokenColors.textTertiary.withValues(alpha: 0.2),
            strokeWidth: 1,
          );
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            interval: 12, // Every year
            getTitlesWidget: (value, meta) {
              final year = (value / 12).floor();
              if (value % 12 == 0 && year <= 5) {
                return Text(
                  '${year}Y',
                  style: TokenTypography.micro(
                    color: TokenColors.textTertiary,
                  ),
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 50,
            interval: maxY / 5,
            getTitlesWidget: (value, meta) {
              return Text(
                _formatCompactCurrency(value),
                style: TokenTypography.micro(
                  color: TokenColors.textTertiary,
                ),
              );
            },
          ),
        ),
      ),
      borderData: FlBorderData(show: false),
      minX: 0,
      maxX: _maxMonths.toDouble(),
      minY: minY,
      maxY: maxY,
      lineBarsData: lineBarsData,
      extraLinesData: ExtraLinesData(
        horizontalLines: [
          // Target FIRE line
          HorizontalLine(
            y: targetLineY,
            color: TokenColors.success.withValues(alpha: 0.8),
            strokeWidth: 2,
            dashArray: [5, 5],
            label: HorizontalLineLabel(
              show: true,
              alignment: Alignment.topRight,
              padding: const EdgeInsets.only(right: TokenSpacing.sm, bottom: TokenSpacing.xs),
              style: TokenTypography.micro(
                color: TokenColors.success,
                fontWeight: FontWeight.bold,
              ),
              labelResolver: (line) => 'FIRE',
            ),
          ),
        ],
      ),
      lineTouchData: LineTouchData(
        enabled: true,
        touchTooltipData: LineTouchTooltipData(
          getTooltipColor: (_) => TokenColors.textPrimary.withValues(alpha: 0.87),
          getTooltipItems: (touchedSpots) {
            return touchedSpots.map((spot) {
              final scenarioIndex = spot.barIndex;
              final scenario = widget.scenarios[scenarioIndex];
              return LineTooltipItem(
                '${scenario.name}\n',
                TokenTypography.caption(
                  color: scenario.color,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: _formatCurrency(spot.y),
                    style: TokenTypography.micro(
                      color: TokenColors.white,
                    ),
                  ),
                ],
              );
            }).toList();
          },
        ),
        touchCallback: (event, response) {
          if (response != null && response.lineBarSpots != null) {
            final spot = response.lineBarSpots!.first;
            setState(() {
              _hoveredMonth = spot.x.toInt();
              _hoveredValue = spot.y;
            });
          } else {
            setState(() {
              _hoveredMonth = null;
              _hoveredValue = null;
            });
          }
        },
      ),
    );
  }

  Widget _buildLegend(AppLocalizations l10n) {
    return Wrap(
      spacing: TokenSpacing.xl,
      runSpacing: TokenSpacing.sm,
      children: widget.scenarios.map((scenario) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: TokenSpacing.lg,
              height: 3,
              decoration: BoxDecoration(
                color: scenario.color,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(width: TokenSpacing.xs),
            Text(
              scenario.name,
              style: TokenTypography.micro(
                color: TokenColors.textTertiary,
              ),
            ),
          ],
        );
      }).toList(),
    );
  }

  Widget _buildTooltip(AppLocalizations l10n) {
    if (_hoveredMonth == null || _hoveredValue == null) {
      return const SizedBox.shrink();
    }

    final years = (_hoveredMonth! / 12).toStringAsFixed(1);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.lg, vertical: TokenSpacing.sm),
      decoration: BoxDecoration(
        color: TokenColors.bgCard,
        borderRadius: TokenRadius.borderSm,
        border: Border.all(color: TokenColors.textTertiary.withValues(alpha: 0.3)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.calendar_today,
            size: 14,
            color: TokenColors.textTertiary,
          ),
          const SizedBox(width: 6),
          Text(
            l10n.projectionYearValue(years),
            style: TokenTypography.micro(),
          ),
          const SizedBox(width: TokenSpacing.lg),
          const Icon(
            Icons.account_balance_wallet,
            size: 14,
            color: TokenColors.textTertiary,
          ),
          const SizedBox(width: 6),
          Text(
            _formatCurrency(_hoveredValue!),
            style: TokenTypography.micro(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  String _formatCurrency(double value) {
    if (value == 0) return '0';

    final isNegative = value < 0;
    final absValue = value.abs();
    final parts = absValue.toStringAsFixed(0).split('.');
    final intPart = parts[0];

    final buffer = StringBuffer();
    for (int i = 0; i < intPart.length; i++) {
      if (i > 0 && (intPart.length - i) % 3 == 0) {
        buffer.write(',');
      }
      buffer.write(intPart[i]);
    }

    return '${isNegative ? '-' : ''}${buffer.toString()}';
  }

  String _formatCompactCurrency(double value) {
    if (value == 0) return '0';

    if (value >= 1000000) {
      return '${(value / 1000000).toStringAsFixed(1)}M';
    } else if (value >= 1000) {
      return '${(value / 1000).toStringAsFixed(0)}K';
    }

    return value.toStringAsFixed(0);
  }
}
