import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class SegmentControl extends StatelessWidget {
  final List<String> segments;
  final int selectedIndex;
  final ValueChanged<int> onChanged;

  const SegmentControl({
    super.key,
    required this.segments,
    required this.selectedIndex,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: TokenColors.trackBackground,
        borderRadius: TokenRadius.borderMd,
      ),
      child: Row(
        children: List.generate(segments.length, (index) {
          final isActive = index == selectedIndex;
          return Expanded(
            child: GestureDetector(
              onTap: () => onChanged(index),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                height: 36,
                decoration: BoxDecoration(
                  color: isActive ? TokenColors.bgCard : null,
                  borderRadius: TokenRadius.borderSm,
                  boxShadow: isActive
                      ? [
                          const BoxShadow(
                            color: Color(0x0A000000),
                            blurRadius: 4,
                            offset: Offset(0, 1),
                          ),
                        ]
                      : null,
                ),
                child: Center(
                  child: Text(
                    segments[index],
                    style: TokenTypography.body(
                      fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
                      color: isActive
                          ? TokenColors.textPrimary
                          : TokenColors.textTertiary,
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
