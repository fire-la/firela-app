import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';
import 'switch_toggle.dart';

class ListItemSwitch extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;

  const ListItemSwitch({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    return Container(
      height: 56,
      color: tokens.bgCard,
      padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
      child: Row(
        children: [
          Icon(icon, size: 20, color: TokenColors.textAccent),
          const SizedBox(width: TokenSpacing.lg),
          Expanded(
            child: Text(
              label,
              style: TokenTypography.body(color: tokens.textPrimary),
            ),
          ),
          DesignSwitch(
            value: value,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
