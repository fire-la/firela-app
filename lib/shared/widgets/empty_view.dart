import 'package:flutter/material.dart';
import '../../core/design_tokens/design_tokens.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({
    super.key,
    required this.message,
    this.icon = Icons.inbox_outlined,
    this.actionLabel,
    this.onAction,
  });

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
              size: 64,
              color: TokenColors.textTertiary,
            ),
            SizedBox(height: TokenSpacing.xl),
            Text(
              message,
              style: TokenTypography.body(
                color: TokenColors.textSecondary,
              ),
              textAlign: TextAlign.center,
            ),
            if (actionLabel != null && onAction != null) ...[
              SizedBox(height: TokenSpacing.xxl + TokenSpacing.xs),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onAction,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: TokenColors.textAccent,
                    foregroundColor: TokenColors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(TokenRadius.pill),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    actionLabel!,
                    style: TokenTypography.h4(color: TokenColors.white),
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
