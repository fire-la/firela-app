import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

/// ButtonRow per .pen spec (XxtvF / hMROF):
///
/// Variant A (two full-width buttons, pill shape h=50):
///   Secondary(fill=$bg.card, stroke=$text.accent 0.5, text 16px w600 $text.accent)
///   + Primary(fill=$text.accent, text 16px w600 $color.white)
///
/// Variant B (icon buttons, r=12 pad=12):
///   1× Primary(fill=$color.primary, icon+text 12px w500 #FFF)
///   + N× Secondary(fill=$bg.page, stroke=$border.card 0.5, icon+text 12px w500 $text.primary)
class ButtonRow extends StatelessWidget {
  const ButtonRow({
    super.key,
    required this.primaryLabel,
    this.primaryIcon,
    this.primaryOnTap,
    this.secondaryLabel,
    this.secondaryOnTap,
    this.tertiaryLabel,
    this.tertiaryIcon,
    this.tertiaryOnTap,
    this.variant = ButtonRowVariant.twoButton,
    this.gap = TokenSpacing.xl,
  });

  final String primaryLabel;
  final IconData? primaryIcon;
  final VoidCallback? primaryOnTap;

  final String? secondaryLabel;
  final VoidCallback? secondaryOnTap;

  final String? tertiaryLabel;
  final IconData? tertiaryIcon;
  final VoidCallback? tertiaryOnTap;

  final ButtonRowVariant variant;
  final double gap;

  @override
  Widget build(BuildContext context) {
    switch (variant) {
      case ButtonRowVariant.twoButton:
        return _TwoButtonRow(
          primaryLabel: primaryLabel,
          primaryOnTap: primaryOnTap,
          secondaryLabel: secondaryLabel ?? '',
          secondaryOnTap: secondaryOnTap,
          gap: gap,
        );
      case ButtonRowVariant.iconButton:
        return _IconButtonRow(
          primaryLabel: primaryLabel,
          primaryIcon: primaryIcon,
          primaryOnTap: primaryOnTap,
          secondaryLabel: secondaryLabel,
          secondaryIcon: null,
          secondaryOnTap: secondaryOnTap,
          tertiaryLabel: tertiaryLabel,
          tertiaryIcon: tertiaryIcon,
          tertiaryOnTap: tertiaryOnTap,
          gap: gap,
        );
    }
  }
}

enum ButtonRowVariant { twoButton, iconButton }

class _TwoButtonRow extends StatelessWidget {
  const _TwoButtonRow({
    required this.primaryLabel,
    this.primaryOnTap,
    required this.secondaryLabel,
    this.secondaryOnTap,
    this.gap = TokenSpacing.xl,
  });

  final String primaryLabel;
  final VoidCallback? primaryOnTap;
  final String secondaryLabel;
  final VoidCallback? secondaryOnTap;
  final double gap;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: secondaryOnTap,
            child: Container(
              height: TokenSize.buttonHeight,
              decoration: BoxDecoration(
                color: tokens.bgCard,
                borderRadius: TokenRadius.borderPill,
                border: Border.all(
                  color: TokenColors.textAccent,
                  width: TokenSize.strokeThin,
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                secondaryLabel,
                style: TokenTypography.body(
                  fontWeight: FontWeight.w600,
                  color: TokenColors.textAccent,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: gap),
        Expanded(
          child: GestureDetector(
            onTap: primaryOnTap,
            child: Container(
              height: TokenSize.buttonHeight,
              decoration: BoxDecoration(
                color: TokenColors.textAccent,
                borderRadius: TokenRadius.borderPill,
              ),
              alignment: Alignment.center,
              child: Text(
                primaryLabel,
                style: TokenTypography.body(
                  fontWeight: FontWeight.w600,
                  color: TokenColors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _IconButtonRow extends StatelessWidget {
  const _IconButtonRow({
    required this.primaryLabel,
    this.primaryIcon,
    this.primaryOnTap,
    this.secondaryLabel,
    this.secondaryIcon,
    this.secondaryOnTap,
    this.tertiaryLabel,
    this.tertiaryIcon,
    this.tertiaryOnTap,
    this.gap = TokenSpacing.xl,
  });

  final String primaryLabel;
  final IconData? primaryIcon;
  final VoidCallback? primaryOnTap;
  final String? secondaryLabel;
  final IconData? secondaryIcon;
  final VoidCallback? secondaryOnTap;
  final String? tertiaryLabel;
  final IconData? tertiaryIcon;
  final VoidCallback? tertiaryOnTap;
  final double gap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _IconButtonItem(
            label: primaryLabel,
            icon: primaryIcon,
            onTap: primaryOnTap,
            isPrimary: true,
          ),
        ),
        if (secondaryLabel != null) ...[
          SizedBox(width: gap),
          Expanded(
            child: _IconButtonItem(
              label: secondaryLabel!,
              icon: secondaryIcon,
              onTap: secondaryOnTap,
              isPrimary: false,
            ),
          ),
        ],
        if (tertiaryLabel != null) ...[
          SizedBox(width: gap),
          Expanded(
            child: _IconButtonItem(
              label: tertiaryLabel!,
              icon: tertiaryIcon,
              onTap: tertiaryOnTap,
              isPrimary: false,
            ),
          ),
        ],
      ],
    );
  }
}

class _IconButtonItem extends StatelessWidget {
  const _IconButtonItem({
    required this.label,
    this.icon,
    this.onTap,
    required this.isPrimary,
  });

  final String label;
  final IconData? icon;
  final VoidCallback? onTap;
  final bool isPrimary;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isPrimary ? TokenColors.primary : tokens.bgPage,
          borderRadius: BorderRadius.circular(12),
          border: isPrimary
              ? null
              : Border.all(color: tokens.borderCard, width: TokenSize.strokeThin),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Icon(
                icon,
                size: 20,
                color: isPrimary ? TokenColors.white : tokens.textPrimary,
              ),
              const SizedBox(width: TokenSpacing.sm),
            ],
            Text(
              label,
              style: TokenTypography.caption(
                fontWeight: FontWeight.w500,
                color: isPrimary ? TokenColors.white : tokens.textPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
