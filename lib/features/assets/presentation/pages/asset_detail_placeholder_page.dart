import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/design_tokens/design_tokens.dart';

/// Placeholder page for asset details and statistics
/// This will be replaced with actual implementation in future phases
class AssetDetailPlaceholderPage extends StatelessWidget {
  const AssetDetailPlaceholderPage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.construction,
              size: 64,
              color: TokenColors.textTertiary,
            ),
            const SizedBox(height: TokenSpacing.xl),
            Text(
              '$title Coming Soon',
              style: TokenTypography.h3(fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: TokenSpacing.sm),
            Text(
              'This feature is under development',
              style: TokenTypography.body(color: TokenColors.textTertiary),
            ),
          ],
        ),
      ),
    );
  }
}
