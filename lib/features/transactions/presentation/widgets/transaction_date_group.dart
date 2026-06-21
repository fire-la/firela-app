import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/utils/formatters.dart';
import '../../domain/entities/transaction.dart';

class TransactionDateGroup extends StatelessWidget {
  const TransactionDateGroup({
    super.key,
    required this.date,
    required this.transactions,
    required this.onTransactionTap,
  });

  final String date;
  final List<Transaction> transactions;
  final ValueChanged<String> onTransactionTap;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: TokenSpacing.xl,
            vertical: TokenSpacing.sm,
          ),
          child: Text(
            _formatDateHeader(date, Localizations.localeOf(context)),
            style: TokenTypography.body(
              fontWeight: FontWeight.w600,
              color: tokens.textPrimary,
            ),
          ),
        ),
        ...transactions.map((tx) => _buildRow(tx, tokens)),
      ],
    );
  }

  Widget _buildRow(Transaction tx, ThemeTokens tokens) {
    return TransactionRow(
      icon: _sourceIcon(tx.sourceType),
      title: tx.narration,
      subtitle: tx.payee,
      amount: Formatters.formatSignedCurrency(
        tx.displayAmount,
        currency: tx.currency,
      ),
      amountColor: tx.isExpense ? TokenColors.error : tokens.textPrimary,
      onTap: () => onTransactionTap(tx.id),
    );
  }

  /// Source-type → icon. Falls back to the design default (lucide receipt)
  /// when sourceType is absent.
  IconData _sourceIcon(String? sourceType) {
    switch (sourceType?.toUpperCase()) {
      case 'NLP':
        return Icons.chat_bubble_outline;
      case 'CSV':
        return Icons.table_chart;
      case 'OCR':
        return Icons.camera_alt_outlined;
      case 'API':
        return Icons.api;
      default:
        return Icons.receipt_outlined;
    }
  }

  String _formatDateHeader(String date, Locale locale) {
    final parsed = DateTime.tryParse(date);
    if (parsed == null) return date;
    return DateFormat.yMMMd(locale.toLanguageTag()).format(parsed);
  }
}
