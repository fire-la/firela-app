import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import '../../../review_center/domain/models/confidence_level.dart';

/// Summary of a batch import operation
class BatchImportResult {
  final int successfullyImported;
  final int duplicatesSkipped;
  final int requiresReview;
  final List<String> importedIds;
  final List<String> reviewIds;

  const BatchImportResult({
    required this.successfullyImported,
    this.duplicatesSkipped = 0,
    this.requiresReview = 0,
    this.importedIds = const [],
    this.reviewIds = const [],
  });

  factory BatchImportResult.fromJson(Map<String, dynamic> json) {
    return BatchImportResult(
      successfullyImported: json['imported'] ?? 0,
      duplicatesSkipped: json['skipped'] ?? 0,
      requiresReview: json['needsReview'] ?? 0,
      importedIds: (json['importedIds'] as List<dynamic>?)
              ?.map((e) => e.toString())
              .toList() ??
          [],
      reviewIds:
          (json['reviewIds'] as List<dynamic>?)?.map((e) => e.toString()).toList() ??
              [],
    );
  }

  int get total => successfullyImported + duplicatesSkipped + requiresReview;

  bool get hasSuccess => successfullyImported > 0;

  bool get hasDuplicates => duplicatesSkipped > 0;

  bool get hasReviewItems => requiresReview > 0;

  bool get isSuccess => successfullyImported > 0;
}

/// Widget showing batch import summary with navigation options
class BatchImportSummary extends StatelessWidget {
  const BatchImportSummary({
    super.key,
    required this.result,
    this.onViewImported,
    this.onReviewLowConfidence,
    this.onContinueImport,
    this.onDone,
  });

  final BatchImportResult result;
  final VoidCallback? onViewImported;
  final VoidCallback? onReviewLowConfidence;
  final VoidCallback? onContinueImport;
  final VoidCallback? onDone;

  /// Trigger haptic feedback for successful import
  static void triggerSuccessHaptic() {
    HapticFeedback.mediumImpact();
    // Delayed second feedback for celebration feel
    Future.delayed(const Duration(milliseconds: 100), () {
      HapticFeedback.lightImpact();
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    // Trigger haptic feedback on successful import
    if (result.hasSuccess) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        triggerSuccessHaptic();
      });
    }

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: result.isSuccess
            ? Colors.green.withValues(alpha: 0.1)
            : Colors.orange.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Success icon with animation
          TweenAnimationBuilder<double>(
            tween: Tween(begin: 0.0, end: 1.0),
            duration: const Duration(milliseconds: 500),
            curve: Curves.elasticOut,
            builder: (context, value, child) {
              return Transform.scale(
                scale: value,
                child: Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    color: result.isSuccess
                        ? Colors.green.withValues(alpha: 0.2)
                        : Colors.orange.withValues(alpha: 0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    result.isSuccess ? Icons.check_circle : Icons.info_outline,
                    size: 40,
                    color: result.isSuccess ? Colors.green : Colors.orange,
                  ),
                ),
              );
            },
          ),

          const SizedBox(height: 16),

          // Title
          Text(
            l10n.batchImportSummaryTitle,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          // Summary message
          Text(
            l10n.batchImportItemsImported(result.successfullyImported),
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.outline,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 24),

          // Statistics row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (result.hasSuccess)
                _buildStatItem(
                  theme,
                  l10n.batchImportSuccessfullyImported,
                  result.successfullyImported.toString(),
                  Colors.green,
                  Icons.check_circle_outline,
                ),
              if (result.hasDuplicates)
                _buildStatItem(
                  theme,
                  l10n.batchImportDuplicatesSkipped,
                  result.duplicatesSkipped.toString(),
                  Colors.orange,
                  Icons.content_copy,
                ),
              if (result.hasReviewItems)
                _buildStatItem(
                  theme,
                  l10n.batchImportRequiresReview,
                  result.requiresReview.toString(),
                  Colors.blue,
                  Icons.rate_review_outlined,
                ),
            ],
          ),

          const SizedBox(height: 24),

          // Quick navigation buttons
          if (result.hasReviewItems)
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: () {
                  if (onReviewLowConfidence != null) {
                    onReviewLowConfidence!();
                  } else {
                    // Default: navigate to review center
                    context.push('/review-center?filter=low_confidence');
                  }
                },
                icon: const Icon(Icons.rate_review_outlined, size: 18),
                label: Text(l10n.batchImportReviewLowConfidence),
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ),

          if (result.hasSuccess && result.hasReviewItems)
            const SizedBox(height: 8),

          if (result.hasSuccess)
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                  if (onViewImported != null) {
                    onViewImported!();
                  } else {
                    // Default: navigate to income/expense page
                    context.push('/income-expense');
                  }
                },
                icon: const Icon(Icons.receipt_long_outlined, size: 18),
                label: Text(l10n.batchImportViewImported),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ),

          const SizedBox(height: 16),

          // Bottom action row
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: onContinueImport ??
                      () {
                        // Default: just pop and let parent handle it
                        Navigator.pop(context);
                      },
                  child: Text(l10n.batchImportContinueImport),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: FilledButton(
                  onPressed: onDone ??
                      () {
                        Navigator.pop(context);
                      },
                  child: Text(l10n.batchImportDone),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatItem(
    ThemeData theme,
    String label,
    String value,
    Color color,
    IconData icon,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: color,
            size: 24,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.outline,
          ),
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

/// Categorization result with confidence levels
class CategorizationResult {
  final List<CategorizedItem> items;

  const CategorizationResult({required this.items});

  /// Get items with high confidence (no review needed)
  List<CategorizedItem> get highConfidenceItems =>
      items.where((i) => i.confidenceLevel == ConfidenceLevel.high).toList();

  /// Get items that need review
  List<CategorizedItem> get needsReviewItems =>
      items.where((i) => i.confidenceLevel != ConfidenceLevel.high).toList();

  /// Create from list of items with confidence scores
  factory CategorizationResult.fromItems(List<dynamic> items) {
    return CategorizationResult(
      items: items.map((i) {
        final confidence = (i['confidence'] ?? 0.0).toDouble();
        return CategorizedItem(
          id: i['id'] ?? '',
          confidence: confidence,
          confidenceLevel: ConfidenceLevel.fromPercentage(confidence),
          category: i['category'] ?? '',
        );
      }).toList(),
    );
  }
}

/// Individual categorized item
class CategorizedItem {
  final String id;
  final double confidence;
  final ConfidenceLevel confidenceLevel;
  final String category;

  const CategorizedItem({
    required this.id,
    required this.confidence,
    required this.confidenceLevel,
    required this.category,
  });
}
