import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/components/components.dart';

const _categoryIcons = {
  'food': Icons.restaurant,
  'cafe': Icons.coffee,
  'transport': Icons.directions_car,
  'shopping': Icons.shopping_bag,
  'entertainment': Icons.celebration,
  'salary': Icons.account_balance_wallet,
  'bonus': Icons.card_giftcard,
  'groceries': Icons.local_grocery_store,
  'health': Icons.local_hospital,
  'car': Icons.directions_car,
  'clothing': Icons.checkroom,
  'delivery': Icons.delivery_dining,
  'travel': Icons.flight,
  'utilities': Icons.bolt,
  'transfer': Icons.swap_horiz,
  'income_salary': Icons.account_balance_wallet,
  'income_bonus': Icons.card_giftcard,
  'income_dividend': Icons.trending_up,
  'income_interest': Icons.percent,
  'income_reimbursement': Icons.receipt_long,
  'investment_stock': Icons.show_chart,
  'investment_fund': Icons.pie_chart,
  'investment_bond': Icons.account_balance,
  'investment_etf': Icons.insights,
  'investment_fixed': Icons.lock,
  'investment_derivatives': Icons.candlestick_chart,
  'banking_deposit': Icons.savings,
  'banking_withdraw': Icons.money_off,
  'banking_savings': Icons.savings,
  'banking_fixed_deposit': Icons.lock,
  'banking_fixed_maturity': Icons.lock_clock,
  'banking_forex': Icons.currency_exchange,
  'transfer_credit_card': Icons.credit_card,
  'transfer_loan': Icons.real_estate_agent,
  'transfer_repay': Icons.payment,
  'transfer_redpacket': Icons.card_giftcard,
  'expense_credit_card': Icons.credit_card,
  'expense_huabei': Icons.credit_card,
  'expense_baitiao': Icons.credit_card,
};

const _categoryKeys = [
  'food',
  'cafe',
  'transport',
  'shopping',
  'entertainment',
  'groceries',
  'health',
  'car',
  'clothing',
  'delivery',
  'travel',
  'utilities',
  'salary',
  'bonus',
  'income_salary',
  'income_bonus',
  'income_dividend',
  'income_interest',
  'income_reimbursement',
  'transfer',
  'transfer_credit_card',
  'transfer_loan',
  'transfer_repay',
  'transfer_redpacket',
  'investment_stock',
  'investment_fund',
  'investment_bond',
  'investment_etf',
  'investment_fixed',
  'investment_derivatives',
  'banking_deposit',
  'banking_withdraw',
  'banking_savings',
  'banking_fixed_deposit',
  'banking_fixed_maturity',
  'banking_forex',
  'expense_credit_card',
  'expense_huabei',
  'expense_baitiao',
];

class NlpResultBottomSheet extends HookWidget {
  const NlpResultBottomSheet({
    super.key,
    required this.action,
    required this.response,
    this.onConfirm,
    this.onCancel,
    this.onDuplicateConfirm,
    this.onDuplicateReject,
  });

  final String action;
  final Map<String, dynamic> response;
  final Function(Map<String, dynamic> editedFormData)? onConfirm;
  final VoidCallback? onCancel;
  final VoidCallback? onDuplicateConfirm;
  final VoidCallback? onDuplicateReject;

  Map<String, dynamic> get _formData {
    if (action == 'created') {
      return Map<String, dynamic>.from(
        response['transaction'] as Map? ?? {},
      );
    }
    return Map<String, dynamic>.from(
      response['parsedData'] as Map? ??
          response['transaction'] as Map? ?? {},
    );
  }

  String get _intent => response['intent'] as String? ?? 'expense';
  double get _confidence =>
      (response['confidence'] as num?)?.toDouble() ?? 0.0;
  String? get _waitingFor => response['waitingFor'] as String?;
  String? get _message => response['message'] as String?;

  Map<String, dynamic>? get _payeeData =>
      response['payeeData'] as Map<String, dynamic>?;

  Map<String, dynamic>? get _duplicateData =>
      response['duplicateData'] as Map<String, dynamic>?;

  bool get _isCreated => action == 'created';
  bool get _isConfirm => action == 'confirm' || action == 'confirm_payee';
  bool get _isAsk => action == 'ask';
  bool get _isDuplicate => action == 'confirm_duplicate';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tokens = ThemeTokens.of(context);
    final l10n = AppLocalizations.of(context)!;
    final data = _formData;

    final amount = useState<double?>((data['amount'] as num?)?.toDouble());
    final date = useState<String?>(
      data['date'] as String? ??
          '${DateTime.now().year}.${DateTime.now().month.toString().padLeft(2, '0')}.${DateTime.now().day.toString().padLeft(2, '0')}',
    );
    final category = useState<String?>(data['category'] as String?);
    final payee = useState<String?>(data['payee'] as String?);
    final narration = useState<String?>(data['narration'] as String?);
    final isModified = useState(false);

    final amountController = useTextEditingController(
      text: amount.value != null
          ? '¥${amount.value!.toStringAsFixed(0)}'
          : '',
    );
    final payeeController = useTextEditingController(
      text: payee.value ?? '',
    );
    final narrationController = useTextEditingController(
      text: narration.value ?? '',
    );

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(TokenSpacing.xl),
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDragHandle(tokens),
              if (_isDuplicate)
                _buildDuplicateView(context, theme, tokens, l10n)
              else ...[
                // Pencil: headerRow [icon, title, confidence] → hint → divider → fields → buttons
                if (_isCreated)
                  _buildHeaderWithConfidence(context, tokens, l10n)
                else
                  _buildHeader(context, tokens, l10n),
                if (_isCreated) _buildConfidenceHint(l10n, tokens),
                if (_isAsk && _waitingFor != null)
                  _buildMissingFieldWarning(l10n, tokens),
                if (_isConfirm && _message != null)
                  _buildMessageBar(tokens),
                Divider(color: tokens.borderCard, height: 0.5),
                _buildFormFields(
                  context,
                  tokens,
                  l10n,
                  amount,
                  date,
                  category,
                  payee,
                  narration,
                  amountController,
                  payeeController,
                  narrationController,
                  isModified,
                ),
                _buildActionBar(
                  l10n, amount, category, payee, narration, isModified,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  // ─── Drag Handle ───────────────────────────────────────────────

  Widget _buildDragHandle(ThemeTokens tokens) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: TokenSpacing.sm),
        width: 40,
        height: TokenSpacing.xs,
        decoration: BoxDecoration(
          color: tokens.textTertiary.withValues(alpha: 0.3),
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    );
  }

  // ─── Header with inline ConfidenceIndicator (created action) ───

  Widget _buildHeaderWithConfidence(
    BuildContext context,
    ThemeTokens tokens,
    AppLocalizations l10n,
  ) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        TokenSpacing.xl, TokenSpacing.lg, TokenSpacing.xl, 0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(TokenSpacing.sm),
            decoration: BoxDecoration(
              color: tokens.bgCard,
              borderRadius: TokenRadius.borderMd,
            ),
            child: Icon(
              Icons.auto_awesome,
              size: 20,
              color: tokens.textPrimary,
            ),
          ),
          const SizedBox(width: TokenSpacing.sm),
          Text(
            l10n.nlpTitleCreated,
            style: TokenTypography.h4(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: TokenSpacing.sm),
          Expanded(
            child: ConfidenceMeter(confidence: _confidence),
          ),
        ],
      ),
    );
  }

  // ─── Header (confirm/ask actions) ──────────────────────────────

  Widget _buildHeader(
    BuildContext context,
    ThemeTokens tokens,
    AppLocalizations l10n,
  ) {
    final String title;
    if (_isAsk) {
      title = l10n.nlpTitleAsk;
    } else {
      title = l10n.nlpTitleConfirm;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: TokenSpacing.xl,
        vertical: TokenSpacing.lg,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(TokenSpacing.sm),
                decoration: BoxDecoration(
                  color: tokens.bgCard,
                  borderRadius: TokenRadius.borderMd,
                ),
                child: Icon(
                  Icons.auto_awesome,
                  size: 20,
                  color: tokens.textPrimary,
                ),
              ),
              const SizedBox(width: TokenSpacing.sm),
              Text(
                title,
                style: TokenTypography.h4(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => onCancel?.call(),
          ),
        ],
      ),
    );
  }

  // ─── Confidence Hint ───────────────────────────────────────────

  Widget _buildConfidenceHint(AppLocalizations l10n, ThemeTokens tokens) {
    final String hint;
    if (_confidence >= 0.85) {
      hint = l10n.nlpConfidenceHintHigh;
    } else if (_confidence >= 0.60) {
      hint = l10n.nlpConfidenceHintMedium;
    } else {
      hint = l10n.nlpConfidenceHintLow;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: TokenSpacing.xl,
        vertical: TokenSpacing.lg,
      ),
      child: Text(
        hint,
        style: TokenTypography.caption(color: tokens.textTertiary),
      ),
    );
  }

  // ─── Missing Field Warning ─────────────────────────────────────

  Widget _buildMissingFieldWarning(AppLocalizations l10n, ThemeTokens tokens) {
    final fieldName = _fieldLabel(l10n, _waitingFor);
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
      padding: const EdgeInsets.all(TokenSpacing.lg),
      decoration: BoxDecoration(
        color: TokenColors.primary.withValues(alpha: 0.1),
        borderRadius: TokenRadius.borderMd,
      ),
      child: Row(
        children: [
          Icon(Icons.auto_awesome, size: 18, color: tokens.textPrimary),
          const SizedBox(width: TokenSpacing.sm),
          Expanded(
            child: Text(
              l10n.nlpMissingFieldWarning(fieldName),
              style: TokenTypography.body(color: tokens.textPrimary),
            ),
          ),
        ],
      ),
    );
  }

  // ─── Message Bar ───────────────────────────────────────────────

  Widget _buildMessageBar(ThemeTokens tokens) {
    if (_message == null || _message!.isEmpty) return const SizedBox.shrink();
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: TokenSpacing.xl,
        vertical: TokenSpacing.lg,
      ),
      decoration: BoxDecoration(
        color: TokenColors.primary.withValues(alpha: 0.1),
      ),
      child: Row(
        children: [
          Icon(Icons.auto_awesome, size: 18, color: tokens.textPrimary),
          const SizedBox(width: TokenSpacing.sm),
          Expanded(
            child: Text(
              _message!,
              style: TokenTypography.body(color: tokens.textPrimary),
            ),
          ),
        ],
      ),
    );
  }

  // ─── Form Fields ───────────────────────────────────────────────

  Widget _buildFormFields(
    BuildContext context,
    ThemeTokens tokens,
    AppLocalizations l10n,
    ValueNotifier<double?> amount,
    ValueNotifier<String?> date,
    ValueNotifier<String?> category,
    ValueNotifier<String?> payee,
    ValueNotifier<String?> narration,
    TextEditingController amountController,
    TextEditingController payeeController,
    TextEditingController narrationController,
    ValueNotifier<bool> isModified,
  ) {
    final fields = <Widget>[];

    // Amount field (Pencil: 18px w700 value)
    final isAmountMissing = _isAsk && _waitingFor == 'amount';
    fields.add(
      NlpFieldRow(
        label: l10n.nlpFieldAmount,
        isMissing: isAmountMissing,
        showChevron: false,
        valueChild: TextField(
          controller: amountController,
          decoration: InputDecoration(
            hintText: l10n.nlpEnterAmount,
            border: InputBorder.none,
            isDense: true,
            contentPadding: EdgeInsets.zero,
          ),
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          style: TokenTypography.h3(fontWeight: FontWeight.bold),
          textAlign: TextAlign.right,
          onChanged: (v) {
            final cleaned = v.replaceAll('¥', '').trim();
            amount.value =
                cleaned.isNotEmpty ? double.tryParse(cleaned) : null;
            isModified.value = true;
          },
        ),
      ),
    );

    // Date field
    if (date.value != null || !_isAsk) {
      fields.add(
        NlpFieldRow(
          label: l10n.nlpFieldDate,
          onTap: () async {
            DateTime currentDate = DateTime.now();
            if (date.value != null) {
              try {
                currentDate = DateTime.parse(date.value!);
              } catch (_) {}
            }
            final picked = await showDatePicker(
              context: context,
              initialDate: currentDate,
              firstDate: DateTime(2020),
              lastDate: DateTime.now(),
            );
            if (picked != null) {
              date.value =
                  '${picked.year}.${picked.month.toString().padLeft(2, '0')}.${picked.day.toString().padLeft(2, '0')}';
              isModified.value = true;
            }
          },
          valueChild: Text(
            date.value ?? '',
            style: TokenTypography.body(fontWeight: FontWeight.w600),
          ),
        ),
      );
    }

    // Category field — always show for non-created actions (user can select category)
    if (!_isCreated) {
      fields.add(
        NlpFieldRow(
          label: l10n.nlpFieldCategory,
          onTap: () async {
            final selected = await showModalBottomSheet<String>(
              context: context,
              builder: (ctx) => Container(
                padding: const EdgeInsets.all(TokenSpacing.xl),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: _categoryKeys
                      .map(
                        (key) => ListTile(
                          leading: Icon(
                            _categoryIcons[key],
                            color: category.value == key
                                ? tokens.textPrimary
                                : tokens.textTertiary,
                          ),
                          title: Text(_getCategoryLabel(l10n, key)),
                          trailing: category.value == key
                              ? Icon(Icons.check, color: tokens.textPrimary)
                              : null,
                          onTap: () => Navigator.pop(ctx, key),
                        ),
                      )
                      .toList(),
                ),
              ),
            );
            if (selected != null) {
              category.value = selected;
              isModified.value = true;
            }
          },
          valueChild: category.value != null
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      _categoryIcons[category.value] ?? Icons.category,
                      size: 18,
                      color: tokens.textTertiary,
                    ),
                    const SizedBox(width: TokenSpacing.sm),
                    Text(
                      _getCategoryLabel(l10n, category.value!),
                      style: TokenTypography.body(fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.category, size: 18, color: tokens.textTertiary),
                    const SizedBox(width: TokenSpacing.sm),
                    Text(
                      l10n.nlpSelectCategory,
                      style: TokenTypography.body(
                        color: tokens.textTertiary,
                      ),
                    ),
                    const SizedBox(width: TokenSpacing.xs),
                    Icon(Icons.chevron_right, size: 16, color: tokens.textTertiary),
                  ],
                ),
        ),
      );
    }

    // Payee field
    final String payeeLabel;
    if (_intent == 'income') {
      payeeLabel = l10n.nlpFieldPayeeIncome;
    } else if (_intent == 'expense') {
      payeeLabel = l10n.nlpFieldPayeeExpense;
    } else {
      payeeLabel = l10n.nlpFieldPayeeDefault;
    }

    final isPayeeMissing = _isAsk && _waitingFor == 'payee';
    if (payee.value != null || isPayeeMissing) {
      fields.add(
        NlpFieldRow(
          label: payeeLabel,
          isMissing: isPayeeMissing,
          showChevron: false,
          valueChild: TextField(
            controller: payeeController,
            decoration: const InputDecoration(
              border: InputBorder.none,
              isDense: true,
              contentPadding: EdgeInsets.zero,
            ),
            style: TokenTypography.body(fontWeight: FontWeight.w600),
            textAlign: TextAlign.right,
            onChanged: (v) {
              payee.value = v.isEmpty ? null : v;
              isModified.value = true;
            },
          ),
        ),
      );
    }

    // Payee suggestions (confirm_payee)
    if (_payeeData != null && _payeeData!['alternatives'] != null) {
      final alternatives = _payeeData!['alternatives'] as List? ?? [];
      if (alternatives.isNotEmpty) {
        fields.add(
          Padding(
            padding: const EdgeInsets.only(bottom: TokenSpacing.sm),
            child: Wrap(
              spacing: TokenSpacing.sm,
              children: alternatives.whereType<Map>().map((alt) {
                final name = alt['name'] ?? alt['originalPayee'] ?? '';
                return ActionChip(
                  label: Text(name, style: TokenTypography.caption()),
                  onPressed: () => payee.value = name,
                );
              }).toList(),
            ),
          ),
        );
      }
    }

    // Narration field (Pencil: lighter value color, no chevron)
    if (narration.value != null || _isAsk && _waitingFor == 'narration') {
      fields.add(
        NlpFieldRow(
          label: l10n.nlpFieldNarration,
          isMissing: _isAsk && _waitingFor == 'narration',
          showChevron: false,
          valueChild: TextField(
            controller: narrationController,
            maxLines: 2,
            decoration: const InputDecoration(
              border: InputBorder.none,
              isDense: true,
              contentPadding: EdgeInsets.zero,
            ),
            style: TokenTypography.body(
              fontWeight: FontWeight.w600,
              color: tokens.textTertiary,
            ),
            textAlign: TextAlign.right,
            onChanged: (v) {
              narration.value = v.isEmpty ? null : v;
              isModified.value = true;
            },
          ),
        ),
      );
    }

    if (fields.isEmpty) {
      fields.add(
        Padding(
          padding: const EdgeInsets.all(TokenSpacing.xl),
          child: Text(
            l10n.nlpNoParsedData,
            style: TokenTypography.body(color: tokens.textTertiary),
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
      child: Column(children: fields),
    );
  }

  // ─── Duplicate Comparison View ─────────────────────────────────

  Widget _buildDuplicateView(
    BuildContext context,
    ThemeData theme,
    ThemeTokens tokens,
    AppLocalizations l10n,
  ) {
    final dup = _duplicateData;
    final source = dup?['sourceTransaction'] as Map? ?? _formData;
    final target = dup?['targetTransaction'] as Map? ?? {};

    return Padding(
      padding: const EdgeInsets.all(TokenSpacing.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.copy, size: 20, color: tokens.textPrimary),
                  const SizedBox(width: TokenSpacing.sm),
                  Text(
                    l10n.nlpTitleDuplicate,
                    style: TokenTypography.h4(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => onCancel?.call(),
              ),
            ],
          ),
          const SizedBox(height: TokenSpacing.lg),

          if (_message != null)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(TokenSpacing.lg),
              margin: const EdgeInsets.only(bottom: TokenSpacing.lg),
              decoration: BoxDecoration(
                color: tokens.textAccent.withValues(alpha: 0.1),
                borderRadius: TokenRadius.borderMd,
              ),
              child: Row(
                children: [
                  Icon(Icons.copy, size: 16, color: tokens.textAccent),
                  const SizedBox(width: TokenSpacing.sm),
                  Expanded(
                    child: Text(
                      _message!,
                      style: TokenTypography.caption(
                        color: tokens.textPrimary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ...() {
            final reasons = (dup?['reasons'] as List?)?.cast<String>() ?? [];
            if (reasons.isEmpty) return <Widget>[];
            return [
              Padding(
                padding: const EdgeInsets.only(bottom: TokenSpacing.lg),
                child: Wrap(
                  spacing: TokenSpacing.sm,
                  runSpacing: TokenSpacing.xs,
                  children: reasons
                      .map((r) => _buildReasonChip(tokens, r))
                      .toList(),
                ),
              ),
            ];
          }(),

          Text(
            l10n.nlpDuplicateNew,
            style: TokenTypography.caption(
              color: tokens.textAccent,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: TokenSpacing.xs),
          _buildComparisonCard(theme, tokens, source),

          const SizedBox(height: TokenSpacing.lg),
          Divider(
            color: tokens.borderCard,
            height: TokenSpacing.lg,
            thickness: TokenSize.strokeThin,
          ),

          Text(
            l10n.nlpDuplicateExisting,
            style: TokenTypography.caption(
              color: tokens.textSecondary,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: TokenSpacing.xs),
          _buildComparisonCard(theme, tokens, target, isDimmed: true),

          const SizedBox(height: TokenSpacing.xl),

          ButtonRow(
            variant: ButtonRowVariant.twoButton,
            gap: TokenSpacing.lg,
            secondaryLabel: l10n.nlpBtnIsDuplicate,
            secondaryOnTap: onDuplicateConfirm,
            primaryLabel: l10n.nlpBtnNotDuplicate,
            primaryOnTap: onDuplicateReject,
          ),
        ],
      ),
    );
  }

  Widget _buildComparisonCard(
    ThemeData theme,
    ThemeTokens tokens,
    Map data, {
    bool isDimmed = false,
  }) {
    final textColor = isDimmed ? tokens.textSecondary : tokens.textPrimary;
    final datePayee = [data['date'], data['payee']]
        .where((e) => e != null)
        .join(' · ');

    return DesignCard(
      padding: const EdgeInsets.all(TokenSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (datePayee.isNotEmpty)
                Expanded(
                  child: Text(
                    datePayee,
                    style: TokenTypography.h4(
                      fontWeight: FontWeight.w600,
                      color: textColor,
                    ),
                  ),
                ),
              if (data['amount'] != null)
                Text(
                  '¥${data['amount']}',
                  style: TokenTypography.h3(
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
            ],
          ),
          if (data['narration'] != null) ...[
            const SizedBox(height: TokenSpacing.xs),
            Text(
              data['narration'].toString(),
              style: TokenTypography.caption(
                color: tokens.textTertiary,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildReasonChip(ThemeTokens tokens, String label) {
    return Tag(
      label: label,
      backgroundColor: tokens.neutral200,
      textColor: tokens.textSecondary,
    );
  }

  // ─── Action Bar ────────────────────────────────────────────────

  Widget _buildActionBar(
    AppLocalizations l10n,
    ValueNotifier<double?> amount,
    ValueNotifier<String?> category,
    ValueNotifier<String?> payee,
    ValueNotifier<String?> narration,
    ValueNotifier<bool> isModified,
  ) {
    if (_isCreated) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(
          TokenSpacing.xl, TokenSpacing.xl, TokenSpacing.xl, TokenSpacing.xl,
        ),
        child: ButtonRow(
          variant: ButtonRowVariant.twoButton,
          gap: TokenSpacing.lg,
          secondaryLabel: l10n.nlpBtnEditDetails,
          secondaryOnTap: () {
            onConfirm?.call({
              '_action': 'edit',
              'transactionId': response['transaction']?['id'],
            });
          },
          primaryLabel: l10n.nlpBtnConfirmEntry,
          primaryOnTap: () {
            onConfirm?.call({'_action': 'confirm'});
          },
        ),
      );
    }

    final String positiveLabel =
        _isAsk ? l10n.nlpBtnComplete : l10n.nlpBtnConfirmEntry;

    return Padding(
      padding: const EdgeInsets.fromLTRB(
        TokenSpacing.xl, TokenSpacing.xl, TokenSpacing.xl, TokenSpacing.xl,
      ),
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: TokenSize.buttonHeight,
              child: Center(
                child: ButtonText(
                  label: l10n.cancel,
                  onPressed: () => onCancel?.call(),
                ),
              ),
            ),
          ),
          const SizedBox(width: TokenSpacing.lg),
          Expanded(
            child: ButtonPrimary(
              label: positiveLabel,
              onPressed: () {
                final editedData = <String, dynamic>{
                  if (amount.value != null) 'amount': amount.value,
                  'category': category.value,
                  if (payee.value != null) 'payee': payee.value,
                  if (narration.value != null) 'narration': narration.value,
                  '_modified': isModified.value,
                };
                onConfirm?.call(editedData);
              },
            ),
          ),
        ],
      ),
    );
  }

  // ─── Helpers ───────────────────────────────────────────────────

  String _getCategoryLabel(AppLocalizations l10n, String key) {
    switch (key) {
      // Expenses
      case 'food':
        return l10n.categoryFood;
      case 'cafe':
        return l10n.categoryCafe;
      case 'transport':
        return l10n.categoryTransport;
      case 'shopping':
        return l10n.categoryShopping;
      case 'entertainment':
        return l10n.categoryEntertainment;
      case 'groceries':
        return l10n.categoryGroceries;
      case 'health':
        return l10n.categoryHealth;
      case 'car':
        return l10n.categoryCar;
      case 'clothing':
        return l10n.categoryClothing;
      case 'delivery':
        return l10n.categoryDelivery;
      case 'travel':
        return l10n.categoryTravel;
      case 'utilities':
        return l10n.categoryUtilities;
      // Income
      case 'salary':
        return l10n.categorySalary;
      case 'bonus':
        return l10n.categoryBonus;
      case 'income_salary':
        return l10n.categoryIncomeSalary;
      case 'income_bonus':
        return l10n.categoryIncomeBonus;
      case 'income_dividend':
        return l10n.categoryIncomeDividend;
      case 'income_interest':
        return l10n.categoryIncomeInterest;
      case 'income_reimbursement':
        return l10n.categoryIncomeReimbursement;
      // Investment
      case 'investment_stock':
        return l10n.categoryInvestmentStock;
      case 'investment_fund':
        return l10n.categoryInvestmentFund;
      case 'investment_bond':
        return l10n.categoryInvestmentBond;
      case 'investment_etf':
        return l10n.categoryInvestmentEtf;
      case 'investment_fixed':
        return l10n.categoryInvestmentFixed;
      case 'investment_derivatives':
        return l10n.categoryInvestmentDerivatives;
      // Banking
      case 'banking_deposit':
        return l10n.categoryBankingDeposit;
      case 'banking_withdraw':
        return l10n.categoryBankingWithdraw;
      case 'banking_savings':
        return l10n.categoryBankingSavings;
      case 'banking_fixed_deposit':
        return l10n.categoryBankingFixedDeposit;
      case 'banking_fixed_maturity':
        return l10n.categoryBankingFixedMaturity;
      case 'banking_forex':
        return l10n.categoryBankingForex;
      // Transfer
      case 'transfer':
        return l10n.categoryTransfer;
      case 'transfer_credit_card':
        return l10n.categoryTransferCreditCard;
      case 'transfer_loan':
        return l10n.categoryTransferLoan;
      case 'transfer_repay':
        return l10n.categoryTransferRepay;
      case 'transfer_redpacket':
        return l10n.categoryTransferRedpacket;
      // Credit
      case 'expense_credit_card':
        return l10n.categoryExpenseCreditCard;
      case 'expense_huabei':
        return l10n.categoryExpenseHuabei;
      case 'expense_baitiao':
        return l10n.categoryExpenseBaitiao;
      default:
        return key;
    }
  }

  String _fieldLabel(AppLocalizations l10n, String? fieldKey) {
    switch (fieldKey) {
      case 'amount':
        return l10n.nlpFieldAmount;
      case 'payee':
        return _intent == 'income'
            ? l10n.nlpFieldPayeeIncome
            : l10n.nlpFieldPayeeExpense;
      case 'date':
        return l10n.nlpFieldDate;
      case 'category':
        return l10n.nlpFieldCategory;
      case 'narration':
        return l10n.nlpFieldNarration;
      default:
        return fieldKey ?? '';
    }
  }
}
