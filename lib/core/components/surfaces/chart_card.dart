import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

/// ChartCard per .pen spec (Z0vjy):
/// cornerRadius=$radius.lg, shadow blur=18, fill=$bg.card, stroke=$border.card 0.5
/// padding=[14,16], gap=8, width=161
/// Header (12px title + chevron) + chart area + bottom labels
class ChartCard extends StatelessWidget {
  const ChartCard({
    super.key,
    required this.title,
    this.chartWidget,
    this.bottomLeftLabel,
    this.bottomRightLabel,
    this.onTap,
  });

  final String title;
  final Widget? chartWidget;
  final String? bottomLeftLabel;
  final String? bottomRightLabel;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 161,
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: TokenSpacing.xl),
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
            // Chart area
            if (chartWidget != null)
              SizedBox(
                height: 100,
                width: double.infinity,
                child: chartWidget,
              ),
            // Bottom labels
            if (bottomLeftLabel != null || bottomRightLabel != null)
              Padding(
                padding: const EdgeInsets.only(top: TokenSpacing.sm),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      bottomLeftLabel ?? '',
                      style: TokenTypography.micro(color: tokens.textTertiary),
                    ),
                    if (bottomRightLabel != null)
                      Text(
                        bottomRightLabel!,
                        style: TokenTypography.micro(
                          fontWeight: FontWeight.w600,
                          color: TokenColors.textAccent,
                        ),
                      ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
