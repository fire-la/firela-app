import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../domain/entities/pending_transaction.dart';
import '../../domain/models/confidence_level.dart';

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

  String _formatAmount() {
    final isNegative = transaction.amount < 0;
    final absAmount = transaction.amount.abs();
    final formatter = NumberFormat('#,##0.00');
    final formatted = formatter.format(absAmount);
    final sign = isNegative ? '-' : '';
    return '$sign${transaction.currency} $formatted';
  }

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
    final isExpense = transaction.amount < 0;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl, vertical: TokenSpacing.sm),
        padding: const EdgeInsets.all(TokenSpacing.xl),
        decoration: BoxDecoration(
          color: TokenColors.bgCard,
          borderRadius: TokenRadius.borderLg,
          border: Border.all(color: TokenColors.borderCard, width: 0.5),
          boxShadow: const [
            BoxShadow(
              color: Color(0x0D000000),
              blurRadius: 18,
              offset: Offset(0, 2),
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    transaction.merchantName,
                    style: TokenTypography.h4(
                      fontWeight: FontWeight.w600,
                      color: TokenColors.textPrimary,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: TokenSpacing.sm),
            Text(
              transaction.accountName,
              style: TokenTypography.caption(
                color: TokenColors.textSecondary,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: TokenSpacing.lg),
            ConfidenceMeter(
              confidence:
                  ConfidenceLevel.normalize(transaction.confidenceScore),
            ),
            const SizedBox(height: TokenSpacing.lg),
            Row(
              children: [
                Text(
                  _formatAmount(),
                  style: TokenTypography.h4(
                    color: isExpense ? TokenColors.error : TokenColors.success,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(width: TokenSpacing.lg),
                Text(
                  _formatTime(),
                  style: TokenTypography.caption(
                    color: TokenColors.textSecondary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: TokenSpacing.xl),
            Row(
              children: [
                Expanded(
                  child: ButtonSecondary(
                    label: '删除',
                    onPressed: onDelete,
                  ),
                ),
                const SizedBox(width: TokenSpacing.xl),
                Expanded(
                  child: ButtonPrimary(
                    label: '保留',
                    onPressed: onConfirm,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
