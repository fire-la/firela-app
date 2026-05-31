import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class TopBar extends StatelessWidget {
  final String title;
  final VoidCallback? onBack;
  final List<Widget>? actions;

  const TopBar({
    super.key,
    required this.title,
    this.onBack,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top + TokenSpacing.lg,
        left: TokenSpacing.xl,
        right: TokenSpacing.xl,
        bottom: TokenSpacing.lg,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onBack ?? () => Navigator.maybePop(context),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 24,
                  color: TokenColors.textPrimary,
                ),
                SizedBox(width: 8),
                Text(
                  title,
                  style: TokenTypography.h3(
                    fontWeight: FontWeight.w600,
                    color: TokenColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),
          if (actions != null) Row(children: actions!),
        ],
      ),
    );
  }
}
