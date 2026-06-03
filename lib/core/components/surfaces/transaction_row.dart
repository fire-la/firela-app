import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

/// TransactionRow: icon in cream circle + title/subtitle + amount.
/// .pen spec: padding=[12,16], icon 18px in 36×36 cream circle r=10,
/// title body w500, subtitle micro, amount body w700
class TransactionRow extends StatelessWidget {
  const TransactionRow({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    required this.amount,
    this.amountColor,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final String? subtitle;
  final String amount;
  final Color? amountColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TokenSpacing.lg, horizontal: TokenSpacing.xl),
        child: Row(
          children: [
            // Icon frame
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: tokens.accentCream,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(icon, size: 18, color: tokens.textAccent),
              ),
            ),
            const SizedBox(width: 10),
            // Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TokenTypography.body(
                      fontWeight: FontWeight.w500,
                      color: tokens.textPrimary,
                    ),
                  ),
                  if (subtitle != null)
                    Text(
                      subtitle!,
                      style: TokenTypography.micro(color: tokens.textTertiary),
                    ),
                ],
              ),
            ),
            // Amount
            Text(
              amount,
              style: TokenTypography.body(
                fontWeight: FontWeight.w700,
                color: amountColor ?? tokens.textPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
