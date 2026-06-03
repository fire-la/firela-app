import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';
import '../buttons/button_row.dart';

/// DialogOverlay per .pen spec (p0Cjb dialogRef):
/// Container: r=$radius.lg, fill=#00000066, layout=none
/// Card: r=$radius.lg, shadow blur=20 offset(0,4) #0000001A, fill=$bg.card
///   gap=16, padding=[24,20], w=275
///   title(h4 w600 $text.primary) + subtitle(caption $text.secondary) + ButtonRow
class DialogOverlay extends StatelessWidget {
  const DialogOverlay({
    super.key,
    required this.title,
    this.subtitle,
    required this.primaryLabel,
    this.primaryOnTap,
    required this.secondaryLabel,
    this.secondaryOnTap,
  });

  final String title;
  final String? subtitle;
  final String primaryLabel;
  final VoidCallback? primaryOnTap;
  final String secondaryLabel;
  final VoidCallback? secondaryOnTap;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0x66000000),
        borderRadius: TokenRadius.borderLg,
      ),
      child: Center(
        child: Container(
          width: 275,
          padding: const EdgeInsets.only(top: 24, left: 20, right: 20, bottom: 20),
          decoration: BoxDecoration(
            color: tokens.bgCard,
            borderRadius: TokenRadius.borderLg,
            boxShadow: [
              BoxShadow(
                color: tokens.shadow,
                blurRadius: 20,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TokenTypography.h4(
                  fontWeight: FontWeight.w600,
                  color: tokens.textPrimary,
                ),
              ),
              if (subtitle != null) ...[
                const SizedBox(height: TokenSpacing.xl),
                Text(
                  subtitle!,
                  style: TokenTypography.caption(
                    color: tokens.textSecondary,
                  ),
                ),
              ],
              const SizedBox(height: TokenSpacing.xl),
              ButtonRow(
                primaryLabel: primaryLabel,
                primaryOnTap: primaryOnTap,
                secondaryLabel: secondaryLabel,
                secondaryOnTap: secondaryOnTap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
