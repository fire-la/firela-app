import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../providers/use_recurring_setup.dart';

class RecurringTransactionSetupPage extends HookWidget {
  const RecurringTransactionSetupPage({super.key, this.transactionId});
  final String? transactionId;

  @override
  Widget build(BuildContext context) {
    final state = useRecurringSetup(transactionId: transactionId);

    final frequencyLabels = ['Daily', 'Weekly', 'Monthly', 'Quarterly', 'Yearly', 'Custom'];
    final endLabels = ['Never', 'After N occurrences', 'On specific date'];

    return Scaffold(
      body: Column(
        children: [
          TopBar(
            title: 'Setup',
            actions: [
              IconButton(
                icon: const Icon(Icons.more_horiz, size: 24),
                onPressed: () {},
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(TokenSpacing.xl),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CategoryCard(name: state.categoryName, icon: state.categoryIcon),
                  const SizedBox(height: TokenSpacing.xl),
                  InputAmount(controller: state.amountController, label: 'Amount'),
                  const SizedBox(height: TokenSpacing.xl),
                  SegmentControl(
                    segments: const ['Income', 'Expense', 'Transfer'],
                    selectedIndex: state.selectedSegment,
                    onChanged: state.onSegmentChanged,
                  ),
                  const SizedBox(height: TokenSpacing.xl),
                  ListItemArrow.card(
                    icon: Icons.calendar_today,
                    label: 'Start Date',
                    trailingText: state.startDate,
                  ),
                  const SizedBox(height: TokenSpacing.xl),
                  // Repeat section
                  _RadioCard(
                    title: 'Repeat',
                    options: frequencyLabels,
                    selectedIndex: state.frequencyIndex,
                    onChanged: state.onFrequencyChanged,
                  ),
                  const SizedBox(height: TokenSpacing.xl),
                  // End section
                  _RadioCard(
                    title: 'Ends',
                    options: endLabels,
                    selectedIndex: state.endTypeIndex,
                    onChanged: state.onEndTypeChanged,
                  ),
                  const SizedBox(height: TokenSpacing.xxl),
                  ButtonRow(
                    primaryLabel: state.isSubmitting ? 'Confirming...' : 'Confirm',
                    primaryOnTap: () async {
                      final ok = await state.createRule();
                      if (ok && context.mounted) context.pop();
                    },
                    secondaryLabel: 'Cancel',
                    secondaryOnTap: () => context.pop(),
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

class _RadioCard extends StatelessWidget {
  const _RadioCard({
    required this.title,
    required this.options,
    required this.selectedIndex,
    required this.onChanged,
  });

  final String title;
  final List<String> options;
  final int selectedIndex;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(TokenSpacing.xl),
      decoration: BoxDecoration(
        color: TokenColors.bgCard,
        borderRadius: TokenRadius.borderLg,
        border: Border.all(color: TokenColors.borderCard, width: 0.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TokenTypography.caption(color: TokenColors.textSecondary)),
          const SizedBox(height: TokenSpacing.xl),
          ...List.generate(options.length, (i) => Padding(
            padding: const EdgeInsets.only(bottom: TokenSpacing.lg),
            child: Tappable(
              onTap: () => onChanged(i),
              semanticLabel: options[i],
              selected: i == selectedIndex,
              child: Row(
                children: [
                  DesignRadio(value: i == selectedIndex, onChanged: (_) => onChanged(i)),
                  const SizedBox(width: TokenSpacing.lg),
                  Text(
                    options[i],
                    style: TokenTypography.body(
                      color: i == selectedIndex ? TokenColors.textPrimary : TokenColors.textTertiary,
                    ),
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
