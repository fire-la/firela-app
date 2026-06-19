import 'package:flutter/material.dart';

/// Page header for top-level (tab) pages.
/// Per .pen spec (Ln7UG): leading entry (e.g. review center) on the left,
/// trailing entry (e.g. settings) on the right, no title, center empty.
/// height 56. Horizontal padding is provided by the host page (e.g. its
/// SingleChildScrollView padding), matching the original component contract.
class PageHeader extends StatelessWidget {
  final Widget? leading;
  final Widget? trailing;

  const PageHeader({
    super.key,
    this.leading,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Row(
        children: [
          if (leading != null) leading!,
          const Spacer(),
          if (trailing != null) trailing!,
        ],
      ),
    );
  }
}
