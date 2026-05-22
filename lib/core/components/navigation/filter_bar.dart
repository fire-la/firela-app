import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

/// FilterBar: filter icon + label + clear button.
/// .pen spec: padding=[12,0], icon 16px $text.accent, label caption w500 $text.accent,
/// clear icon 16px $text.tertiary, gap=8
class FilterBar extends StatelessWidget {
  const FilterBar({
    super.key,
    required this.label,
    this.onClear,
    this.onTap,
  });

  final String label;
  final VoidCallback? onClear;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TokenSpacing.lg),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.tune, size: 16, color: TokenColors.textAccent),
                const SizedBox(width: TokenSpacing.lg),
                Text(
                  label,
                  style: TokenTypography.caption(
                    fontWeight: FontWeight.w500,
                    color: TokenColors.textAccent,
                  ),
                ),
              ],
            ),
            if (onClear != null)
              GestureDetector(
                onTap: onClear,
                child: Icon(Icons.close, size: 16, color: TokenColors.textTertiary),
              ),
          ],
        ),
      ),
    );
  }
}
