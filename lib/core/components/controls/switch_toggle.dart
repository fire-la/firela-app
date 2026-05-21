import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class DesignSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;

  const DesignSwitch({
    super.key,
    required this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged?.call(!value),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 40,
        height: 22,
        decoration: BoxDecoration(
          color: value ? TokenColors.textAccent : TokenColors.borderTag,
          borderRadius: BorderRadius.circular(TokenRadius.pill),
        ),
        child: AnimatedAlign(
          duration: const Duration(milliseconds: 200),
          alignment: value ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            width: 18,
            height: 18,
            margin: const EdgeInsets.symmetric(horizontal: 2),
            decoration: BoxDecoration(
              color: TokenColors.white,
              shape: BoxShape.circle,
              boxShadow: [
                const BoxShadow(
                  color: Color(0x1A000000),
                  blurRadius: 3,
                  offset: Offset(0, 1),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
