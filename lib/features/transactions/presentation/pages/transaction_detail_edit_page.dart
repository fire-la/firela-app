import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../providers/use_transaction_detail.dart';

class TransactionDetailEditPage extends HookWidget {
  const TransactionDetailEditPage({super.key, required this.id});
  final String id;

  @override
  Widget build(BuildContext context) {
    final state = useTransactionDetail(id);

    if (state.isLoading) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (state.error != null && state.transaction == null) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(state.error ?? '加载失败'),
              const SizedBox(height: 16),
              ButtonPrimary(label: '重试', onPressed: state.loadDetail),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          TopBar(title: 'Edit'),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(TokenSpacing.xl),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputAmount(controller: state.amountController, label: 'Amount'),
                  const SizedBox(height: TokenSpacing.xl),
                  SegmentControl(
                    segments: const ['Income', 'Expense', 'Transfer'],
                    selectedIndex: state.selectedSegment,
                    onChanged: state.setSelectedSegment,
                  ),
                  const SizedBox(height: TokenSpacing.xl),
                  ListItemArrow.card(
                    icon: Icons.calendar_today,
                    label: 'Date',
                    trailingText: state.selectedDate,
                  ),
                  const SizedBox(height: TokenSpacing.sm),
                  ListItemArrow.card(
                    icon: Icons.person_outline,
                    label: 'Payee',
                    trailingText: state.payee.isEmpty ? '—' : state.payee,
                  ),
                  const SizedBox(height: TokenSpacing.sm),
                  ListItemArrow.card(
                    icon: Icons.label_outline,
                    label: 'Tags',
                    trailingText: state.tags.isEmpty ? '—' : state.tags.join(', '),
                  ),
                  const SizedBox(height: TokenSpacing.sm),
                  ListItemArrow.card(
                    icon: Icons.account_balance_outlined,
                    label: 'Account',
                    trailingText: state.firstAccount.isEmpty ? '—' : state.firstAccount,
                  ),
                  const SizedBox(height: TokenSpacing.xl),
                  InputField(
                    controller: state.narrationController,
                    label: 'Description',
                    placeholder: 'Transaction description',
                  ),
                  if (state.transaction != null) ...[
                    const SizedBox(height: TokenSpacing.xl),
                    _MetaSection(data: state.transaction!),
                  ],
                  const SizedBox(height: TokenSpacing.xxl),
                  ButtonRow(
                    primaryLabel: state.isSaving ? 'Saving...' : 'Save',
                    primaryOnTap: () async {
                      final ok = await state.save();
                      if (ok && context.mounted) context.pop();
                    },
                    secondaryLabel: 'Delete',
                    secondaryOnTap: () async {
                      final confirmed = await showDialog<bool>(
                        context: context,
                        builder: (_) => AlertDialog(
                          title: const Text('确认删除'),
                          content: const Text('此操作不可撤销'),
                          actions: [
                            TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('取消')),
                            FilledButton(onPressed: () => Navigator.pop(context, true), child: const Text('删除')),
                          ],
                        ),
                      );
                      if (confirmed == true) {
                        final ok = await state.delete();
                        if (ok && context.mounted) context.pop();
                      }
                    },
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

class _MetaSection extends StatelessWidget {
  const _MetaSection({required this.data});
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(TokenSpacing.xl),
      decoration: BoxDecoration(
        color: TokenColors.neutral100,
        borderRadius: TokenRadius.borderMd,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Meta', style: TokenTypography.caption(color: TokenColors.textSecondary)),
          const SizedBox(height: TokenSpacing.sm),
          _row('Created', data['createdAt']?.toString() ?? '—'),
          _row('Source', data['sourceType']?.toString() ?? '—'),
          _row('Status', data['status']?.toString() ?? '—'),
        ],
      ),
    );
  }

  Widget _row(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TokenTypography.micro(color: TokenColors.textTertiary)),
          Text(value, style: TokenTypography.micro(color: TokenColors.textSecondary)),
        ],
      ),
    );
  }
}
