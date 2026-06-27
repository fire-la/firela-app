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
    final tokens = ThemeTokens.of(context);
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      child: Container(
        height: 66,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: TokenSpacing.lg),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Nav bar. The design pins this to 260, but on narrow screens
          // (344px / 320px) 260 + gap + 56 FAB overflows the row. Wrap it in a
          // Flexible capped at 260 so it stays 260 on normal/wide screens and
          // shrinks to fit on narrow ones; the space-around icons reflow.
          Flexible(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 260),
              child: Container(
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                  color: tokens.bgCard,
                  borderRadius: BorderRadius.circular(28),
                  boxShadow: [
                    BoxShadow(
                      color: tokens.shadow,
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(items.length, (index) {
                    final item = items[index];
                    final isSelected = index == currentIndex;
                    return Flexible(
                      child: GestureDetector(
                        onTap: () => onTap(index),
                        behavior: HitTestBehavior.opaque,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: TokenSpacing.xxl),
                          child: Icon(
                            isSelected ? item.activeIcon : item.icon,
                            size: 24,
                            color: isSelected
                                ? tokens.textAccent
                                : tokens.textTertiary,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
          const SizedBox(width: TokenSpacing.lg),
          // FAB — accent color for contrast with dark tab bar
          if (onFabTap != null)
            GestureDetector(
              onTap: onFabTap,
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? TokenColors.textAccent
                      : tokens.textPrimary,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: tokens.shadow,
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.add,
                  size: 24,
                  color: TokenColors.white,
                ),
              ),
            ),
        ],
      ),
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
