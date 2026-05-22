import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class DesignBottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  final List<BottomNavItem> items;
  final VoidCallback? onFabTap;

  const DesignBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.items,
    this.onFabTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: TokenSpacing.lg),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Nav bar
          Container(
            width: 260,
            height: 56,
            decoration: BoxDecoration(
              color: TokenColors.bgCard,
              borderRadius: BorderRadius.circular(28),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x0D000000),
                  blurRadius: 8,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(items.length, (index) {
                final item = items[index];
                final isSelected = index == currentIndex;
                return GestureDetector(
                  onTap: () => onTap(index),
                  behavior: HitTestBehavior.opaque,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xxl),
                    child: Icon(
                      isSelected ? item.activeIcon : item.icon,
                      size: 24,
                      color: isSelected
                          ? TokenColors.textAccent
                          : TokenColors.textTertiary,
                    ),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(width: TokenSpacing.lg),
          // FAB
          if (onFabTap != null)
            GestureDetector(
              onTap: onFabTap,
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: TokenColors.textPrimary,
                  shape: BoxShape.circle,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x26000000),
                      blurRadius: 12,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.add,
                  size: 24,
                  color: TokenColors.white,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class BottomNavItem {
  final IconData icon;
  final IconData activeIcon;
  final String label;

  const BottomNavItem({
    required this.icon,
    required this.activeIcon,
    required this.label,
  });
}
