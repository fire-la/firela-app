import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

/// SummaryCard per .pen spec (Ww4gM):
/// cornerRadius=$radius.lg, shadow blur=18, fill=$bg.card, stroke=$border.card 0.5
/// padding=16, gap=12, width=fill_container
/// Layout: vertical — cardLabel(12px normal $text.secondary) + cardValue(h2 w700 $text.primary)
class SummaryCard extends StatelessWidget {
  const SummaryCard({
    super.key,
    required this.label,
    required this.value,
    this.onTap,
  });

  final String label;
  final String value;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(TokenSpacing.xl),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TokenTypography.caption(color: TokenColors.textSecondary),
            ),
            const SizedBox(height: TokenSpacing.lg),
            Text(
              value,
              style: TokenTypography.h2(
                fontWeight: FontWeight.w700,
                color: TokenColors.textPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
