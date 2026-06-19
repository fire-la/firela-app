import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/services/analytics_service.dart';
import '../../../../core/services/analytics_events.dart';
import '../../domain/entities/pending_transaction.dart';
import '../../data/repositories/review_center_repository.dart';
import '../../../../core/components/components.dart';
import '../../domain/models/confidence_level.dart';
import '../signals/review_center_signal.dart';
import '../../../../core/utils/logger.dart';

/// Review Center detail/edit page
class ReviewDetailPage extends HookWidget {
  const ReviewDetailPage({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    // State
    final isLoading = useState(true);
    final isSaving = useState(false);
    final error = useState<String?>(null);
    final transaction = useState<PendingTransaction?>(null);

    // Form controllers
    final accountController = useTextEditingController();
    final merchantController = useTextEditingController();
    final amountController = useTextEditingController();
    final notesController = useTextEditingController();
    final selectedDate = useState<DateTime>(DateTime.now());

    // Load transaction detail
    Future<void> loadDetail() async {
      if (id.isEmpty) {
        error.value = '无效的交易ID';
        isLoading.value = false;
        return;
      }

      isLoading.value = true;
      error.value = null;

      try {
        final detail = await ReviewCenterRepository.instance
            .getPendingTransactionDetail(id);
        transaction.value = detail;

        // Pre-fill form
        accountController.text = detail.accountName;
        merchantController.text = detail.merchantName;
        amountController.text = detail.amount.abs().toStringAsFixed(2);
        notesController.text = '';
        selectedDate.value = detail.transactionTime;
      } catch (e) {
        logger.e('[ReviewDetail] Failed to load detail: $e');
        error.value = '加载失败，请重试';
      } finally {
        isLoading.value = false;
      }
    }

    // Show delete confirmation
    Future<bool> showDeleteConfirmation() async {
      final result = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('确认删除'),
          content: const Text('确定要删除这笔交易吗？此操作不可撤销。'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('取消'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, true),
              style: FilledButton.styleFrom(
                backgroundColor: TokenColors.error,
              ),
              child: const Text('删除'),
            ),
          ],
        ),
      );
      return result ?? false;
    }

    // Show toast
    void showToast(String message, {bool isError = false}) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: isError ? TokenColors.error : null,
          duration: const Duration(seconds: 2),
        ),
      );
    }

    // Handle delete
    Future<void> handleDelete() async {
      final confirmed = await showDeleteConfirmation();
      if (!confirmed) return;

      isSaving.value = true;
      try {
        await ReviewCenterRepository.instance.deleteTransaction(id);
        await fetchPendingCount();
        // Track transaction rejected
        AnalyticsService().trackReviewCenter(
          eventType: AnalyticsEvents.reviewTransactionRejected,
          transactionId: id,
          confidenceLevel: transaction.value?.confidenceLevel.name,
        );
        showToast('已删除');
        if (context.mounted) context.pop(true);
      } catch (e) {
        logger.e('[ReviewDetail] Failed to delete: $e');
        showToast('删除失败，请重试', isError: true);
      } finally {
        isSaving.value = false;
      }
    }

    // Handle save
    Future<void> handleSave() async {
      // Validate
      if (accountController.text.isEmpty) {
        showToast('请输入账户名称', isError: true);
        return;
      }
      if (merchantController.text.isEmpty) {
        showToast('请输入商户名称', isError: true);
        return;
      }
      final amount = double.tryParse(amountController.text);
      if (amount == null || amount <= 0) {
        showToast('请输入有效金额', isError: true);
        return;
      }

      isSaving.value = true;
      try {
        final original = transaction.value;
        final isExpense = (original?.amount ?? 0) < 0;

        await ReviewCenterRepository.instance.updateTransaction(id, {
          'account_name': accountController.text,
          'merchant_name': merchantController.text,
          'amount': isExpense ? -amount : amount,
          'transaction_time': selectedDate.value.toIso8601String(),
          'notes': notesController.text,
        });

        // Track transaction edited and approved
        AnalyticsService().trackReviewCenter(
          eventType: AnalyticsEvents.reviewTransactionEdited,
          transactionId: id,
          confidenceLevel: original?.confidenceLevel.name,
        );
        AnalyticsService().trackReviewCenter(
          eventType: AnalyticsEvents.reviewTransactionApproved,
          transactionId: id,
          confidenceLevel: original?.confidenceLevel.name,
        );

        showToast('保存成功');
        if (context.mounted) context.pop(true);
      } catch (e) {
        logger.e('[ReviewDetail] Failed to save: $e');
        showToast('保存失败，请重试', isError: true);
      } finally {
        isSaving.value = false;
      }
    }

    // Show date picker
    Future<void> pickDate() async {
      final picked = await showDatePicker(
        context: context,
        initialDate: selectedDate.value,
        firstDate: DateTime(2000),
        lastDate: DateTime.now().add(const Duration(days: 365)),
      );
      if (picked != null) {
        final time = await showTimePicker(
          context: context,
          initialTime: TimeOfDay.fromDateTime(selectedDate.value),
        );
        if (time != null) {
          selectedDate.value = DateTime(
            picked.year,
            picked.month,
            picked.day,
            time.hour,
            time.minute,
          );
        } else {
          selectedDate.value = picked;
        }
      }
    }

    // Load on init
    useEffect(() {
      loadDetail();
      return null;
    }, []);

    // Loading state
    if (isLoading.value) {
      return Scaffold(
        body: Column(
          children: [
            TopBar(title: l10n.reviewCenterDetailTitle),
            const Expanded(child: Center(child: CircularProgressIndicator())),
          ],
        ),
      );
    }

    // Error state
    if (error.value != null || transaction.value == null) {
      return Scaffold(
        body: Column(
          children: [
            TopBar(title: l10n.reviewCenterDetailTitle),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.error_outline,
                        size: 64, color: TokenColors.error),
                    const SizedBox(height: TokenSpacing.xl),
                    Text(error.value ?? '加载失败'),
                    const SizedBox(height: TokenSpacing.xl),
                    FilledButton(
                      onPressed: () => context.pop(),
                      child: const Text('返回'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    final tx = transaction.value!;
    final isExpense = tx.amount < 0;

    return Scaffold(
      body: Column(
        children: [
          TopBar(
            title: l10n.reviewCenterDetailTitle,
            actions: [
              IconButton(
                icon: const Icon(Icons.delete_outline),
                onPressed: isSaving.value ? null : handleDelete,
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(TokenSpacing.xl),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Confidence indicator (bare meter — no card-in-card)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'AI 识别置信度',
                        style: TokenTypography.caption(),
                      ),
                      const SizedBox(height: TokenSpacing.sm),
                      ConfidenceMeter(
                        confidence:
                            ConfidenceLevel.normalize(tx.confidenceScore),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Account field
                  _FormTextField(
                    label: '账户',
                    controller: accountController,
                    prefixIcon: Icons.account_balance_wallet,
                  ),
                  const SizedBox(height: TokenSpacing.xl),

                  // Merchant field
                  _FormTextField(
                    label: '商户',
                    controller: merchantController,
                    prefixIcon: Icons.store,
                  ),
                  const SizedBox(height: TokenSpacing.xl),

                  // Amount field
                  _FormTextField(
                    label: '金额',
                    controller: amountController,
                    prefixIcon: isExpense
                        ? Icons.remove_circle_outline
                        : Icons.add_circle_outline,
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    prefixText: '${tx.currency} ',
                    suffixText: isExpense ? '(支出)' : '(收入)',
                  ),
                  const SizedBox(height: TokenSpacing.xl),

                  // Date field
                  _FormField(
                    label: '日期时间',
                    prefixIcon: Icons.calendar_today,
                    child: InkWell(
                      onTap: pickDate,
                      borderRadius: TokenRadius.borderMd,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: TokenSpacing.lg),
                        child: Text(
                          DateFormat('yyyy-MM-dd HH:mm')
                              .format(selectedDate.value),
                          style: TokenTypography.body(),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: TokenSpacing.xl),

                  // Notes field
                  _FormTextField(
                    label: '备注',
                    controller: notesController,
                    prefixIcon: Icons.notes,
                    maxLines: 3,
                  ),
                  const SizedBox(height: 32),

                  // Action buttons
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: isSaving.value ? null : handleDelete,
                          style: OutlinedButton.styleFrom(
                            foregroundColor: TokenColors.error,
                            side: BorderSide(color: TokenColors.error),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                          ),
                          child: const Text('删除'),
                        ),
                      ),
                      const SizedBox(width: TokenSpacing.xl),
                      Expanded(
                        child: FilledButton(
                          onPressed: isSaving.value ? null : handleSave,
                          style: FilledButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                          ),
                          child: isSaving.value
                              ? const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    color: TokenColors.white,
                                  ),
                                )
                              : const Text('保存'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Form field widget
class _FormField extends StatelessWidget {
  const _FormField({
    required this.label,
    required this.prefixIcon,
    required this.child,
  });

  final String label;
  final IconData prefixIcon;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefixIcon),
        border: OutlineInputBorder(borderRadius: TokenRadius.borderMd),
        contentPadding: const EdgeInsets.symmetric(
            horizontal: TokenSpacing.xl, vertical: 4),
      ),
      child: child,
    );
  }
}

/// Form text field widget
class _FormTextField extends StatelessWidget {
  const _FormTextField({
    required this.label,
    required this.controller,
    required this.prefixIcon,
    this.keyboardType,
    this.prefixText,
    this.suffixText,
    this.maxLines = 1,
  });

  final String label;
  final TextEditingController controller;
  final IconData prefixIcon;
  final TextInputType? keyboardType;
  final String? prefixText;
  final String? suffixText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefixIcon),
        prefixText: prefixText,
        suffixText: suffixText,
        border: OutlineInputBorder(borderRadius: TokenRadius.borderMd),
      ),
    );
  }
}
