import 'package:flutter/material.dart';
import '../../core/design_tokens/design_tokens.dart';

/// .pen spec: inbox icon 48px $text.tertiary, h3 title w600, body subtitle, pill button h=44
class EmptyView extends StatelessWidget {
  const EmptyView({
    super.key,
    this.title,
    required this.message,
    this.icon = Icons.inbox_outlined,
    this.actionLabel,
    this.onAction,
  });

  final String? title;
  final String message;
  final IconData icon;
  final String? actionLabel;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(TokenSpacing.xxl + TokenSpacing.xs),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 48,
              color: TokenColors.textTertiary,
            ),
            const SizedBox(height: TokenSpacing.xl),
            Text(
              title ?? '暂无数据',
              style: TokenTypography.h3(
                fontWeight: FontWeight.w600,
                color: TokenColors.textPrimary,
              ),
            ),
            const SizedBox(height: TokenSpacing.sm),
            Text(
              message,
              style: TokenTypography.body(
                color: TokenColors.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
            if (actionLabel != null && onAction != null) ...[
              const SizedBox(height: TokenSpacing.xl),
              SizedBox(
                height: 44,
                child: ElevatedButton(
                  onPressed: onAction,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: TokenColors.textAccent,
                    foregroundColor: TokenColors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(TokenRadius.pill),
                    ),
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                  ),
                  child: Text(
                    actionLabel!,
                    style: TokenTypography.body(
                      fontWeight: FontWeight.w500,
                      color: TokenColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
