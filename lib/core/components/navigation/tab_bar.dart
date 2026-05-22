import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class DesignTabBar extends StatelessWidget {
  final List<String> tabs;
  final int selectedIndex;
  final ValueChanged<int> onTabChanged;

  const DesignTabBar({
    super.key,
    required this.tabs,
    required this.selectedIndex,
    required this.onTabChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: TokenSpacing.xxl,
        top: 0,
        bottom: 7,
      ),
      child: Row(
        children: List.generate(tabs.length, (index) {
          final isActive = index == selectedIndex;
          return GestureDetector(
            onTap: () => onTabChanged(index),
            child: Padding(
              padding: const EdgeInsets.only(right: 18),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    tabs[index],
                    style: TokenTypography.h4(
                      fontWeight: FontWeight.w600,
                      color: isActive
                          ? TokenColors.textPrimary
                          : TokenColors.textTab,
                    ),
                  ),
                  const SizedBox(height: TokenSpacing.sm),
                  Container(
                    width: isActive ? 64 : 32,
                    height: 2,
                    decoration: BoxDecoration(
                      color: isActive
                          ? TokenColors.textPrimary
                          : TokenColors.textTertiary,
                      borderRadius: BorderRadius.circular(1),
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
