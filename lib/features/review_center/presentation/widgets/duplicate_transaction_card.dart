import 'package:flutter/material.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/components/indicators/checkbox.dart';
import '../../../../core/components/buttons/button_secondary.dart';
import '../../../../core/components/buttons/button_primary.dart';

/// DuplicateTransactionCard per .pen spec:
/// cornerRadius=$radius.lg, shadow blur=18, fill=$bg.card, stroke=$border.card 0.5,
/// padding=$space.xl(16), gap=16
class DuplicateTransactionCard extends StatelessWidget {
  const DuplicateTransactionCard({
    super.key,
    required this.merchantName,
    required this.amount,
    required this.detailText,
    this.noteText,
    this.rememberRule = false,
    this.onRememberRuleChanged,
    required this.onDelete,
    required this.onKeep,
  });

  final String merchantName;
  final String amount;
  final String detailText;
  final String? noteText;
  final bool rememberRule;
  final ValueChanged<bool>? onRememberRuleChanged;
  final VoidCallback onDelete;
  final VoidCallback onKeep;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          // Title
          Text(
            'Duplicate Transaction',
            style: TokenTypography.caption(color: TokenColors.textPrimary),
          ),
          const SizedBox(height: TokenSpacing.xl),
          // Name + Amount row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                merchantName,
                style: TokenTypography.h4(
                  fontWeight: FontWeight.w600,
                  color: TokenColors.textPrimary,
                ),
              ),
              Text(
                amount,
                style: TokenTypography.h4(
                  fontWeight: FontWeight.w700,
                  color: TokenColors.textPrimary,
                ),
              ),
            ],
          ),
          const SizedBox(height: TokenSpacing.xs),
          // Detail
          Text(
            detailText,
            style: TokenTypography.caption(color: TokenColors.textSecondary),
          ),
          const SizedBox(height: TokenSpacing.xl),
          // Note frame
          if (noteText != null)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(TokenSpacing.lg),
              decoration: BoxDecoration(
                color: TokenColors.neutral100,
                borderRadius: TokenRadius.borderMd,
              ),
              child: Text(
                noteText!,
                style: TokenTypography.caption(color: TokenColors.textSecondary),
              ),
            ),
          if (noteText != null)
            const SizedBox(height: TokenSpacing.xl),
          // Checkbox row
          GestureDetector(
            onTap: () => onRememberRuleChanged?.call(!rememberRule),
            child: Row(
              children: [
                DesignCheckbox(
                  value: rememberRule,
                  onChanged: (v) => onRememberRuleChanged?.call(v ?? false),
                ),
                const SizedBox(width: TokenSpacing.lg),
                Expanded(
                  child: Text(
                    'Remember rule (auto-process next time)',
                    style: TokenTypography.caption(color: TokenColors.textPrimary),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: TokenSpacing.xl),
          // Button row
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ButtonSecondary(
                label: 'Delete',
                onPressed: onDelete,
              ),
              const SizedBox(width: TokenSpacing.lg),
              ButtonPrimary(
                label: 'Keep',
                onPressed: onKeep,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
