import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/components/components.dart';
import '../widgets/review_detail_content.dart';

/// ReviewDetailPage (.pen kFyEB): TopBar + ReviewDetailContent (POCuA).
/// Review center decision-style detail page. Thin shell — all structure lives
/// in the ReviewDetailContent component.
class ReviewDetailPage extends StatelessWidget {
  const ReviewDetailPage({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      body: Column(
        children: [
          TopBar(title: l10n.reviewCenterDetailTitle),
          Expanded(child: ReviewDetailContent(id: id)),
        ],
      ),
    );
  }
}
