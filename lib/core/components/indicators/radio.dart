import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class DesignRadio extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;

  const DesignRadio({
    super.key,
    required this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged?.call(true),
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: value ? TokenColors.textAccent : TokenColors.textTertiary,
            width: 1.5,
          ),
        ),
        child: value
            ? Center(
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    color: TokenColors.textAccent,
                    shape: BoxShape.circle,
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
