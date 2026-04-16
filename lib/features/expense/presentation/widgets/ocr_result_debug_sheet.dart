import 'package:flutter/material.dart';
import '../../../../core/services/receipt_text_parser.dart';

/// Debug sheet showing OCR recognition results for accuracy verification
class OcrResultDebugSheet extends StatelessWidget {
  final ParsedReceipt receipt;
  final String ocrSource;
  final Duration processingTime;
  final VoidCallback? onConfirm;
  final VoidCallback? onRetry;

  const OcrResultDebugSheet({
    super.key,
    required this.receipt,
    required this.ocrSource,
    required this.processingTime,
    this.onConfirm,
    this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isValid = receipt.isValid && receipt.confidence >= 30;

    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      minChildSize: 0.5,
      maxChildSize: 0.9,
      expand: false,
      builder: (context, scrollController) => Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          children: [
            // Handle
            Container(
              margin: const EdgeInsets.only(top: 8),
              width: 40, height: 4,
              decoration: BoxDecoration(
                color: theme.colorScheme.outline.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            // Header
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(
                    isValid ? Icons.check_circle : Icons.warning,
                    color: isValid ? Colors.green : Colors.orange,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      isValid ? 'OCR 识别结果' : 'OCR 识别结果（低置信度）',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  _buildBadge(theme, ocrSource, processingTime),
                ],
              ),
            ),
            // Content
            Expanded(
              child: ListView(
                controller: scrollController,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  // Parsed fields
                  _buildSection(theme, '解析结果', [
                    _buildFieldRow(theme, '商家', receipt.merchant.isNotEmpty ? receipt.merchant : '(未识别)', receipt.merchant.isNotEmpty),
                    _buildFieldRow(theme, '金额', receipt.totalAmount > 0 ? '¥${receipt.totalAmount.toStringAsFixed(2)}' : '(未识别)', receipt.totalAmount > 0),
                    _buildFieldRow(theme, '日期', receipt.date != null ? _formatDate(receipt.date!) : '(未识别)', receipt.date != null),
                    _buildFieldRow(theme, '置信度', '${receipt.confidence.toStringAsFixed(1)}%', receipt.confidence >= 50),
                    _buildFieldRow(theme, '明细数', '${receipt.lineItems.length} 项', receipt.lineItems.isNotEmpty),
                  ]),
                  const SizedBox(height: 16),

                  // Confidence bar
                  _buildConfidenceBar(theme, receipt.confidence),
                  const SizedBox(height: 16),

                  // Debug matches
                  if (receipt.debugMatches.isNotEmpty) ...[
                    _buildSection(theme, '匹配调试', [
                      for (final entry in receipt.debugMatches.entries)
                        _buildFieldRow(theme, entry.key, entry.value, true),
                    ]),
                    const SizedBox(height: 16),
                  ],

                  // Line items
                  if (receipt.lineItems.isNotEmpty) ...[
                    _buildSection(theme, '明细项目', [
                      for (final item in receipt.lineItems)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Row(
                            children: [
                              Expanded(child: Text(item.name, style: theme.textTheme.bodySmall)),
                              Text('¥${item.totalPrice.toStringAsFixed(2)}', style: theme.textTheme.bodySmall),
                            ],
                          ),
                        ),
                    ]),
                    const SizedBox(height: 16),
                  ],

                  // Raw OCR text (collapsible)
                  _buildRawTextSection(theme),
                  const SizedBox(height: 24),
                ],
              ),
            ),
            // Action buttons
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: OutlinedButton.icon(
                        onPressed: () {
                          Navigator.pop(context);
                          onRetry?.call();
                        },
                        icon: const Icon(Icons.cloud),
                        label: const Text('用云端识别'),
                      ),
                    ),
                    if (onConfirm != null) ...[
                      const SizedBox(width: 12),
                      Expanded(
                        child: FilledButton.icon(
                          onPressed: () {
                            Navigator.pop(context);
                            onConfirm?.call();
                          },
                          icon: const Icon(Icons.check),
                          label: const Text('确认结果'),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBadge(ThemeData theme, String source, Duration time) {
    final color = source == 'local' ? Colors.blue : Colors.purple;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        '$source · ${time.inMilliseconds}ms',
        style: theme.textTheme.labelSmall?.copyWith(color: color),
      ),
    );
  }

  Widget _buildSection(ThemeData theme, String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: theme.textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.bold,
          color: theme.colorScheme.primary,
        )),
        const SizedBox(height: 8),
        ...children,
      ],
    );
  }

  Widget _buildFieldRow(ThemeData theme, String label, String value, bool isGood) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 60,
            child: Text(label, style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.outline,
            )),
          ),
          Expanded(
            child: Text(value, style: theme.textTheme.bodyMedium?.copyWith(
              color: isGood ? theme.colorScheme.onSurface : theme.colorScheme.error,
            )),
          ),
          Icon(
            isGood ? Icons.check_circle_outline : Icons.error_outline,
            size: 16,
            color: isGood ? Colors.green : Colors.red,
          ),
        ],
      ),
    );
  }

  Widget _buildConfidenceBar(ThemeData theme, double confidence) {
    final color = confidence >= 70
        ? Colors.green
        : confidence >= 40
            ? Colors.orange
            : Colors.red;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('置信度', style: theme.textTheme.bodySmall?.copyWith(
          color: theme.colorScheme.outline,
        )),
        const SizedBox(height: 4),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: confidence / 100,
            backgroundColor: color.withValues(alpha: 0.2),
            valueColor: AlwaysStoppedAnimation(color),
            minHeight: 8,
          ),
        ),
      ],
    );
  }

  Widget _buildRawTextSection(ThemeData theme) {
    return ExpansionTile(
      initiallyExpanded: true,
      tilePadding: EdgeInsets.zero,
      title: Text('原始 OCR 文本', style: theme.textTheme.titleSmall?.copyWith(
        fontWeight: FontWeight.bold,
        color: theme.colorScheme.primary,
      )),
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(8),
          ),
          constraints: const BoxConstraints(maxHeight: 250),
          child: SingleChildScrollView(
            child: Text(
              receipt.rawText,
              style: theme.textTheme.bodySmall?.copyWith(
                fontFamily: 'monospace',
                height: 1.5,
              ),
            ),
          ),
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
  }
}
