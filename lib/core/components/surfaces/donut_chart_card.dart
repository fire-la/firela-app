import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../design_tokens/design_tokens.dart';

/// DonutChartCard per .pen spec (UuFaS):
/// cornerRadius=$radius.lg, shadow blur=18, fill=$bg.card, stroke=$border.card 0.5
/// Layout: header (12px title + chevron) + donut chart with legends, width=161
class DonutChartCard extends StatelessWidget {
  const DonutChartCard({
    super.key,
    required this.title,
    this.centerText,
    this.sections = const [],
    this.legends = const [],
    this.onTap,
  });

  final String title;
  final String? centerText;
  final List<PieChartSectionData> sections;
  final List<DonutLegendItem> legends;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 161,
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
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TokenTypography.caption(color: tokens.textSecondary),
                ),
                Icon(Icons.chevron_right, size: 16, color: tokens.textTertiary),
              ],
            ),
            const SizedBox(height: TokenSpacing.lg),
            // Donut chart
            SizedBox(
              height: 96,
              width: 96,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  PieChart(
                    PieChartData(
                      sections: sections.isNotEmpty
                          ? sections
                          : [
                              PieChartSectionData(
                                value: 1,
                                color: tokens.neutral200,
                                radius: 30,
                                title: '',
                              ),
                            ],
                      sectionsSpace: 1,
                      centerSpaceRadius: 30,
                    ),
                  ),
                  if (centerText != null)
                    Text(
                      centerText!,
                      style: TokenTypography.micro(color: tokens.textTertiary),
                    ),
                ],
              ),
            ),
            const SizedBox(height: TokenSpacing.lg),
            // Legends
            if (legends.isNotEmpty)
              Wrap(
                spacing: TokenSpacing.sm,
                runSpacing: TokenSpacing.xs,
                children: legends.map((l) => Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: l.color,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: TokenSpacing.xs),
                    Text(
                      l.label,
                      style: TokenTypography.micro(color: tokens.textSecondary),
                    ),
                  ],
                )).toList(),
              ),
          ],
        ),
      ),
    );
  }
}

class DonutLegendItem {
  final String label;
  final Color color;
  const DonutLegendItem({required this.label, required this.color});
}
