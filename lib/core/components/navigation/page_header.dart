import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class PageHeader extends StatelessWidget {
  final String title;
  final Widget? trailing;

  const PageHeader({
    super.key,
    required this.title,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
        child: Row(
          children: [
            Text(
              title,
              style: TokenTypography.h1(
                fontWeight: FontWeight.w700,
                color: TokenColors.textPrimary,
              ),
            ),
            if (trailing != null) ...[
              SizedBox(width: TokenSpacing.lg),
              trailing!,
            ],
          ],
        ),
      ),
    );
  }
}
