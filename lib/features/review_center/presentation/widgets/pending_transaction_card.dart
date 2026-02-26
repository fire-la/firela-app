import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../domain/entities/pending_transaction.dart';
import 'confidence_indicator.dart';

/// Card widget for displaying a pending transaction
class PendingTransactionCard extends StatelessWidget {
  const PendingTransactionCard({
    super.key,
    required this.transaction,
    required this.onDelete,
    required this.onConfirm,
    required this.onTap,
  });

  final PendingTransaction transaction;
  final VoidCallback onDelete;
  final VoidCallback onConfirm;
  final VoidCallback onTap;

  /// Format amount with currency
  String _formatAmount() {
    final isNegative = transaction.amount < 0;
    final absAmount = transaction.amount.abs();
    final formatter = NumberFormat('#,##0.00');
    final formatted = formatter.format(absAmount);
    final sign = isNegative ? '-' : '';
    return '$sign${transaction.currency} $formatted';
  }

  /// Format transaction time
  String _formatTime() {
    final now = DateTime.now();
    final time = transaction.transactionTime;
    final diff = now.difference(time);

    if (diff.inDays == 0) {
      return DateFormat('HH:mm').format(time);
    } else if (diff.inDays < 7) {
      return '${diff.inDays}天前';
    } else {
      return DateFormat('MM-dd').format(time);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isExpense = transaction.amount < 0;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: theme.colorScheme.outline.withValues(alpha: 0.2),
        ),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top row: Merchant and confidence
              Row(
                children: [
                  Expanded(
                    child: Text(
                      transaction.merchantName,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  ConfidenceIndicator(
                    level: transaction.confidenceLevel,
                    showLabel: true,
                    size: 8,
                  ),
                ],
              ),
              const SizedBox(height: 8),

              // Account name
              Text(
                transaction.accountName,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 12),

              // Amount and time
              Row(
                children: [
                  Text(
                    _formatAmount(),
                    style: theme.textTheme.titleLarge?.copyWith(
                      color: isExpense ? theme.colorScheme.error : Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    _formatTime(),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Action buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Delete button
                  TextButton(
                    onPressed: onDelete,
                    style: TextButton.styleFrom(
                      foregroundColor: theme.colorScheme.error,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                    ),
                    child: const Text('删除'),
                  ),
                  const SizedBox(width: 8),
                  // Confirm button
                  FilledButton(
                    onPressed: onConfirm,
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                    ),
                    child: const Text('保留这笔'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
