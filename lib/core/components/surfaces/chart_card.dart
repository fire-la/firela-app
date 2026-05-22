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
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 161,
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: TokenSpacing.xl),
        decoration: BoxDecoration(
          color: TokenColors.bgCard,
          borderRadius: TokenRadius.borderLg,
          border: Border.all(color: TokenColors.borderCard, width: 0.5),
          boxShadow: const [
            BoxShadow(
              color: Color(0x0D000000),
              blurRadius: 18,
              offset: Offset(0, 2),
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
                  style: TokenTypography.caption(color: TokenColors.textSecondary),
                ),
                Icon(Icons.chevron_right, size: 16, color: TokenColors.textTertiary),
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
                      style: TokenTypography.micro(color: TokenColors.textTertiary),
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
