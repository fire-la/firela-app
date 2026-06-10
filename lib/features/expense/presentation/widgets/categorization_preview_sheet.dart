import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/components/components.dart';
import '../../../review_center/domain/models/confidence_level.dart';

/// Categorization item from parsed bill/OCR
class CategorizationItem {
  final String id;
  final String merchant;
  final double amount;
  final DateTime date;
  final String suggestedCategory;
  final double confidence;
  String selectedCategory;

  CategorizationItem({
    required this.id,
    required this.merchant,
    required this.amount,
    required this.date,
    required this.suggestedCategory,
    required this.confidence,
    required this.selectedCategory,
  });

  factory CategorizationItem.fromJson(Map<String, dynamic> json) {
    return CategorizationItem(
      id: json['id'] ?? '',
      merchant: json['merchant'] ?? json['description'] ?? '',
      amount: (json['amount'] ?? 0).toDouble(),
      date: DateTime.tryParse(json['date'] ?? '') ?? DateTime.now(),
      suggestedCategory: json['category'] ?? '',
      confidence: (json['confidence'] ?? 0).toDouble(),
      selectedCategory: json['category'] ?? '',
    );
  }

  ConfidenceLevel get confidenceLevel => ConfidenceLevel.fromPercentage(confidence);
}

/// Bottom sheet for reviewing and editing categorization before import
class CategorizationPreviewSheet extends StatefulWidget {
  final List<CategorizationItem> items;
  final List<String> availableCategories;
  final VoidCallback onConfirm;
  final VoidCallback onCancel;
  final Function(int index, String newCategory)? onCategoryChanged;

  const CategorizationPreviewSheet({
    super.key,
    required this.items,
    required this.availableCategories,
    required this.onConfirm,
    required this.onCancel,
    this.onCategoryChanged,
  });

  @override
  State<CategorizationPreviewSheet> createState() => _CategorizationPreviewSheetState();
}

class _CategorizationPreviewSheetState extends State<CategorizationPreviewSheet> {
  late List<String> _selectedCategories;

  @override
  void initState() {
    super.initState();
    _selectedCategories = widget.items.map((e) => e.selectedCategory).toList();
  }

  int get _needsReviewCount {
    return widget.items.where((e) => e.confidenceLevel != ConfidenceLevel.high).length;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Container(
    constraints: BoxConstraints(
      maxHeight: MediaQuery.of(context).size.height * 0.85,
    ),
    decoration: BoxDecoration(
      color: theme.colorScheme.surface,
      borderRadius: const BorderRadius.vertical(top: Radius.circular(TokenSpacing.xl)),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Handle bar
        Padding(
          padding: const EdgeInsets.symmetric(vertical: TokenSpacing.lg),
          child: Container(
            width: 40,
            height: TokenSpacing.xs,
            decoration: BoxDecoration(
              color: TokenColors.textTertiary.withValues(alpha: 0.3),
              borderRadius: TokenRadius.borderSm,
            ),
          ),
        ),

        // Header
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.categorizationPreviewTitle,
                style: TokenTypography.h4(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: TokenSpacing.sm),
              Row(
                children: [
                  Text(
                    '${widget.items.length} ${l10n.items}',
                    style: TokenTypography.body(
                      color: TokenColors.textTertiary,
                    ),
                  ),
                  const SizedBox(width: TokenSpacing.xl),
                  if (_needsReviewCount > 0)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.sm, vertical: 2),
                      decoration: BoxDecoration(
                        color: TokenColors.primary.withValues(alpha: 0.1),
                        borderRadius: TokenRadius.borderSm,
                      ),
                      child: Text(
                        '$_needsReviewCount ${l10n.needsReview}',
                        style: TokenTypography.caption(
                          color: TokenColors.primary,
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),

        const SizedBox(height: TokenSpacing.xl),

        // Items list
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
            itemCount: widget.items.length,
            itemBuilder: (context, index) => _buildItemCard(context, l10n, theme, index),
          ),
        ),

        // Footer actions
        Container(
          padding: const EdgeInsets.all(TokenSpacing.xl),
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            border: Border(
              top: BorderSide(color: TokenColors.textTertiary.withValues(alpha: 0.1)),
            ),
          ),
          child: SafeArea(
            child: ButtonRow(
              variant: ButtonRowVariant.twoButton,
              secondaryLabel: l10n.cancel,
              secondaryOnTap: widget.onCancel,
              primaryLabel: l10n.confirmImport,
              primaryOnTap: widget.onConfirm,
            ),
          ),
        ),
      ],
    ),
  );
  }

  Widget _buildItemCard(
    BuildContext context,
    AppLocalizations l10n,
    ThemeData theme,
    int index,
  ) {
    final item = widget.items[index];
    final selectedCategory = _selectedCategories[index];
    final wasEdited = selectedCategory != item.suggestedCategory;

    return Container(
      margin: const EdgeInsets.only(bottom: TokenSpacing.lg),
      padding: const EdgeInsets.all(TokenSpacing.lg),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: TokenRadius.borderMd,
        border: wasEdited
            ? Border.all(color: TokenColors.textAccent.withValues(alpha: 0.3))
            : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top row: merchant, amount, confidence
          Row(
            children: [
              Expanded(
                child: Text(
                  item.merchant,
                  style: TokenTypography.body(
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: TokenSpacing.sm),
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: _confidenceColor(item.confidenceLevel),
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: TokenSpacing.sm),
              Text(
                '¥${item.amount.toStringAsFixed(1)}',
                style: TokenTypography.body(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const SizedBox(height: TokenSpacing.sm),

          // Category dropdown
          Row(
            children: [
              Icon(
                Icons.category_outlined,
                size: 16,
                color: TokenColors.textTertiary,
              ),
              const SizedBox(width: TokenSpacing.sm),
              Expanded(
            child: DropdownButtonFormField<String>(
              value: selectedCategory,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
                hintText: l10n.pleaseSelect,
              ),
              style: TokenTypography.caption(),
              items: widget.availableCategories.map((category) {
                return DropdownMenuItem<String>(
                  value: category,
                  child: Text(
                    category,
                    style: TokenTypography.caption(),
                  ),
                );
              }).toList(),
              onChanged: (newCategory) {
                if (newCategory != null && newCategory != _selectedCategories[index]) {
                  setState(() {
                    _selectedCategories[index] = newCategory;
                    widget.items[index].selectedCategory = newCategory;
                  });
                  widget.onCategoryChanged?.call(index, newCategory);
                }
              },
            ),
          ),
          if (wasEdited)
            Padding(
              padding: const EdgeInsets.only(left: TokenSpacing.sm),
              child: Icon(
                Icons.edit,
                size: 14,
                color: TokenColors.textAccent,
              ),
            ),
        ],
      ),

      const SizedBox(height: TokenSpacing.xs),

      // Date
      Text(
        '${item.date.year}-${item.date.month.toString().padLeft(2, '0')}-${item.date.day.toString().padLeft(2, '0')}',
        style: TokenTypography.caption(
          color: TokenColors.textTertiary,
        ),
      ),
    ],
  ),
  );
  }

  Color _confidenceColor(ConfidenceLevel level) {
    switch (level) {
      case ConfidenceLevel.high:
        return TokenColors.success;
      case ConfidenceLevel.medium:
        return TokenColors.primary;
      case ConfidenceLevel.low:
        return TokenColors.error;
    }
  }
}
