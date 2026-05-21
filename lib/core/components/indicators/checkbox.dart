import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class DesignCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;

  const DesignCheckbox({
    super.key,
    required this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged?.call(!value),
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: value ? TokenColors.textAccent : Colors.transparent,
          borderRadius: TokenRadius.borderSm,
          border: Border.all(
            color: value ? TokenColors.textAccent : TokenColors.textTertiary,
            width: 1.5,
          ),
        ),
        child: value
            ? Icon(
                Icons.check,
                size: 14,
                color: TokenColors.white,
              )
            : null,
      ),
    );
  }
}
