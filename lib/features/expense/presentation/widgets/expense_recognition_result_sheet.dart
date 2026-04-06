import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';

/// Recognition result data model
class RecognitionResult {
  const RecognitionResult({
    required this.confidence,
    this.date,
    this.expenseType,
    this.amount,
    this.notes,
    this.isExpense = true,
  });

  final double confidence;
  final DateTime? date;
  final String? expenseType;
  final double? amount;
  final String? notes;
  final bool isExpense;
}

/// Expense recognition result bottom sheet
class ExpenseRecognitionResultSheet extends HookWidget {
  const ExpenseRecognitionResultSheet({
    super.key,
    required this.result,
    this.onConfirm,
    this.onCancel,
  });

  final RecognitionResult result;
  final Function(RecognitionResult)? onConfirm;
  final VoidCallback? onCancel;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final isExpense = useState(result.isExpense);
    final date = useState(result.date ?? DateTime.now());
    final expenseType = useState(result.expenseType);
    final amount = useState(result.amount);
    final notes = useState(result.notes ?? '');
    final amountController = useTextEditingController(
      text: amount.value != null ? '¥${amount.value!.toStringAsFixed(0)}' : '',
    );

    final isHighConfidence = result.confidence >= 0.75;
    final hasMissingFields = expenseType.value == null || amount.value == null;

    // High confidence: auto import
    if (isHighConfidence && !hasMissingFields) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        onConfirm?.call(result);
        Navigator.of(context).pop();
      });
      return const SizedBox.shrink();
    }

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header with warning if needed
          if (hasMissingFields) _buildWarningHeader(context, l10n, theme),

          // Title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surface,
                        borderRadius: BorderRadius.circular(12) // Design: 12px,
                      ),
                      child: const Icon(Icons.auto_awesome, size: 20),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      l10n.aiParseSuccess,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    onCancel?.call();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),

          // Expense/Income toggle
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: _buildExpenseIncomeToggle(
              context,
              l10n,
              theme,
              isExpense,
            ),
          ),

          const SizedBox(height: 16),

          // Form fields
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                _buildDateField(context, l10n, theme, date),
                const SizedBox(height: 12),
                _buildExpenseTypeField(
                  context,
                  l10n,
                  theme,
                  expenseType,
                  hasMissingFields && result.expenseType == null,
                ),
                const SizedBox(height: 12),
                _buildAmountField(
                  context,
                  l10n,
                  theme,
                  amountController,
                  amount,
                  hasMissingFields && result.amount == null,
                ),
                const SizedBox(height: 12),
                _buildNotesField(context, l10n, theme, notes),
              ],
            ),
          ),

          const SizedBox(height: 24),

          // Confirm button
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ElevatedButton(
                  onPressed: (expenseType.value != null && amount.value != null)
                      ? () {
                          final finalResult = RecognitionResult(
                            confidence: result.confidence,
                            date: date.value,
                            expenseType: expenseType.value,
                            amount: amount.value,
                            notes: notes.value,
                            isExpense: isExpense.value,
                          );
                          onConfirm?.call(finalResult);
                          Navigator.of(context).pop();
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF000000),
                    foregroundColor: const Color(0xFFFFFFFF),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12) // Design: 12px,
                    ),
                    elevation: 0,
                  ),
                  child: Text(l10n.confirm),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWarningHeader(
    BuildContext context,
    AppLocalizations l10n,
    ThemeData theme,
  ) {
    String message = '';
    if (result.expenseType == null && result.amount == null) {
      message = l10n.missingRequiredFields;
    } else if (result.expenseType == null) {
      message = l10n.expenseTypeNotRecognized;
    } else if (result.amount == null) {
      message = l10n.expenseAmountNotRecognized;
    }

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFFF9800).withValues(alpha: 0.1),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.auto_awesome,
            size: 20,
            color: Color(0xFFFF9800),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              message,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: const Color(0xFFFF9800),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.close, size: 18),
            onPressed: () {},
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
          ),
        ],
      ),
    );
  }

  Widget _buildExpenseIncomeToggle(
    BuildContext context,
    AppLocalizations l10n,
    ThemeData theme,
    ValueNotifier<bool> isExpense,
  ) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => isExpense.value = true,
              child: Container(
                decoration: BoxDecoration(
                  color: isExpense.value
                      ? const Color(0xFF000000)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: Text(
                  l10n.expense,
                  style: TextStyle(
                    color: isExpense.value
                        ? const Color(0xFFFFFFFF)
                        : theme.colorScheme.onSurface,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => isExpense.value = false,
              child: Container(
                decoration: BoxDecoration(
                  color: !isExpense.value
                      ? const Color(0xFF000000)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: Text(
                  l10n.income,
                  style: TextStyle(
                    color: !isExpense.value
                        ? const Color(0xFFFFFFFF)
                        : theme.colorScheme.onSurface,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateField(
    BuildContext context,
    AppLocalizations l10n,
    ThemeData theme,
    ValueNotifier<DateTime> date,
  ) {
    return InkWell(
      onTap: () async {
        final picked = await showDatePicker(
          context: context,
          initialDate: date.value,
          firstDate: DateTime(2020),
          lastDate: DateTime.now(),
        );
        if (picked != null) {
          date.value = picked;
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(12) // Design: 12px,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.date,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.outline,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '${date.value.year}.${date.value.month.toString().padLeft(2, '0')}.${date.value.day.toString().padLeft(2, '0')}',
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
            Icon(
              Icons.chevron_right,
              color: theme.colorScheme.outline,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExpenseTypeField(
    BuildContext context,
    AppLocalizations l10n,
    ThemeData theme,
    ValueNotifier<String?> expenseType,
    bool isMissing,
  ) {
    return InkWell(
      onTap: () async {
        final selected = await showModalBottomSheet<String>(
          context: context,
          builder: (context) => Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: const Icon(Icons.restaurant),
                  title: Text(l10n.food),
                  onTap: () => Navigator.pop(context, l10n.food),
                ),
                ListTile(
                  leading: const Icon(Icons.directions_car),
                  title: Text(l10n.transportation),
                  onTap: () => Navigator.pop(context, l10n.transportation),
                ),
                ListTile(
                  leading: const Icon(Icons.celebration),
                  title: Text(l10n.entertainment),
                  onTap: () => Navigator.pop(context, l10n.entertainment),
                ),
              ],
            ),
          ),
        );
        if (selected != null) {
          expenseType.value = selected;
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(12) // Design: 12px,
          border: isMissing
              ? Border.all(color: const Color(0xFFFF9800), width: 1)
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.expenseType,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.outline,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    if (expenseType.value != null) ...[
                      Container(
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                          color: Color(0xFFE0E0E0),
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(width: 8),
                    ],
                    Text(
                      expenseType.value ?? l10n.pleaseSelect,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: expenseType.value == null
                            ? theme.colorScheme.outline
                            : theme.colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Icon(
              Icons.chevron_right,
              color: theme.colorScheme.outline,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAmountField(
    BuildContext context,
    AppLocalizations l10n,
    ThemeData theme,
    TextEditingController controller,
    ValueNotifier<double?> amount,
    bool isMissing,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(12) // Design: 12px,
        border: isMissing
            ? Border.all(color: const Color(0xFFFF9800), width: 1)
            : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.expenseAmount,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.outline,
            ),
          ),
          const SizedBox(height: 4),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: l10n.enterAmount,
              hintStyle: TextStyle(
                color: theme.colorScheme.outline,
              ),
              border: InputBorder.none,
              isDense: true,
              contentPadding: EdgeInsets.zero,
            ),
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            style: theme.textTheme.bodyLarge,
            onChanged: (value) {
              final cleaned = value.replaceAll('¥', '').trim();
              if (cleaned.isNotEmpty) {
                amount.value = double.tryParse(cleaned);
              } else {
                amount.value = null;
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildNotesField(
    BuildContext context,
    AppLocalizations l10n,
    ThemeData theme,
    ValueNotifier<String> notes,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(12) // Design: 12px,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.notes,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.outline,
            ),
          ),
          const SizedBox(height: 4),
          TextField(
            onChanged: (value) => notes.value = value,
            controller: TextEditingController(text: notes.value),
            decoration: const InputDecoration(
              border: InputBorder.none,
              isDense: true,
              contentPadding: EdgeInsets.zero,
            ),
            maxLines: 2,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
