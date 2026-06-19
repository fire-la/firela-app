import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/router/route_names.dart';

/// Settings entry button used as PageHeader trailing on top-level pages.
/// Pushes the settings deep page (returns via TopBar).
class SettingsIconButton extends StatelessWidget {
  const SettingsIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.settings_outlined),
      onPressed: () => context.push(RouteNames.settings),
    );
  }
}
