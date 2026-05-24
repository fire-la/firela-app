import 'package:flutter/material.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';

class TransactionDateGroup extends StatelessWidget {
  const TransactionDateGroup({
    super.key,
    required this.date,
    required this.transactions,
    required this.onTransactionTap,
  });

  final String date;
  final List<Map<String, dynamic>> transactions;
  final ValueChanged<String> onTransactionTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: TokenSpacing.xl,
            vertical: TokenSpacing.sm,
          ),
          child: Text(
            _formatDate(date),
            style: TokenTypography.body(
              fontWeight: FontWeight.w600,
              color: TokenColors.textPrimary,
            ),
          ),
        ),
        ...transactions.map((tx) => _buildRow(tx)),
      ],
    );
  }

  Widget _buildRow(Map<String, dynamic> tx) {
    final postings = tx['postings'] as List<dynamic>? ?? [];
    final firstPosting = postings.isNotEmpty ? postings[0] as Map<String, dynamic> : <String, dynamic>{};
    final units = firstPosting['units'];
    final amountStr = units != null ? units.toString() : '0';
    final isExpense = amountStr.startsWith('-');

    final sourceType = tx['sourceType'] as String? ?? '';
    final icon = _sourceIcon(sourceType);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl, vertical: TokenSpacing.xs),
      child: TransactionRow(
        icon: icon,
        title: tx['narration'] as String? ?? '',
        subtitle: tx['payee'] as String? ?? '',
        amount: amountStr,
        amountColor: isExpense ? TokenColors.error : TokenColors.success,
        onTap: () => onTransactionTap(tx['id'] as String? ?? ''),
      ),
    );
  }

  IconData _sourceIcon(String sourceType) {
    switch (sourceType.toUpperCase()) {
      case 'NLP': return Icons.chat_bubble_outline;
      case 'CSV': return Icons.table_chart;
      case 'OCR': return Icons.camera_alt_outlined;
      case 'API': return Icons.api;
      default: return Icons.receipt_outlined;
    }
  }

  String _formatDate(String date) {
    try {
      final parts = date.split('-');
      if (parts.length == 3) {
        return '${parts[0]}年${int.parse(parts[1])}月${int.parse(parts[2])}日';
      }
    } catch (_) {}
    return date;
  }
}
