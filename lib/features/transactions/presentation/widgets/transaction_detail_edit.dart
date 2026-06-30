import 'package:firela_api/firela_api.dart' as gen;
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/router/route_names.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../shared/widgets/account_picker_sheet.dart';
import '../../../../shared/widgets/section_header.dart';
import '../../domain/models/tag_suggestion.dart';
import '../../domain/transaction_audit.dart';
import '../../../../shared/hooks/use_debounce.dart';
import '../providers/use_transaction_detail.dart';
import 'posting_editor_row.dart';

/// TransactionDetailEdit business component (.pen G07oe).
/// Full editor structure aligned to the Pencil spec:
/// amount card → type segment → info card → description → tags →
/// postings section (with inline balance indicator) → meta → actions.
class TransactionDetailEdit extends HookWidget {
  const TransactionDetailEdit({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final state = useTransactionDetail(id);

    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (state.error != null && state.transaction == null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(state.error ?? l10n.loadFailed),
            const SizedBox(height: TokenSpacing.lg),
            ButtonPrimary(label: l10n.retry, onPressed: state.loadDetail),
          ],
        ),
      );
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(TokenSpacing.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // statusBanner (.pen G07oe yMFOn) — supersede/void audit chain.
          // Shown for SUPERSEDED (→ replacement), VOIDED, or an ACTIVE tx that
          // replaced an original (→ original). Hidden for plain ACTIVE txs.
          if (state.transaction != null && _StatusBanner.hasContent(state.transaction!)) ...[
            _StatusBanner(tx: state.transaction!, l10n: l10n),
            const SizedBox(height: TokenSpacing.xl),
          ],
          // amtCard — InputAmount. Editable for 2-posting ACTIVE txs (edits
          // rebuild the balanced pair); read-only otherwise (multi-posting needs
          // the deferred per-posting editor; non-ACTIVE cannot be corrected).
          if (state.canEditAmount)
            InputAmount(
              label: l10n.txAmount,
              controller: state.amountController,
              onChanged: state.onAmountChanged,
            )
          else
            AbsorbPointer(
              child: InputAmount(
                label: l10n.txAmount,
                controller: state.amountController,
              ),
            ),
          const SizedBox(height: TokenSpacing.xl),
          // typeSeg — SegmentControl, derived read-only display
          AbsorbPointer(
            child: SegmentControl(
              segments: [l10n.txTypeIncome, l10n.txTypeExpense, l10n.txTypeTransfer],
              selectedIndex: state.selectedSegment,
              onChanged: (_) {},
            ),
          ),
          const SizedBox(height: TokenSpacing.xl),
          // infoCard — Date / Payee / Category / Account (read-only)
          _InfoCard(state: state, l10n: l10n),
          const SizedBox(height: TokenSpacing.xl),
          // learnRuleRow (.pen qImbX) — "remember category" toggle (ADR-0064).
          // Gated to Expense/Income transactions: the rule engine only infers
          // categoryAccount for flow accounts (ADR-0064), so a Transfer /
          // asset-only tx has no category to learn — hide the row rather than
          // show a dead toggle. categoryAccount == null ⟺ no Expenses/Income posting.
          if (state.categoryAccount != null) ...[
            _LearnRuleRow(state: state, l10n: l10n),
            const SizedBox(height: TokenSpacing.xl),
          ],
          // descSection — editable narration
          InputField(
            controller: state.narrationController,
            label: l10n.txDescription,
            placeholder: l10n.txDescriptionPlaceholder,
            maxLines: 3,
          ),
          const SizedBox(height: TokenSpacing.xl),
          // tagsSection
          _TagsSection(state: state, l10n: l10n),
          const SizedBox(height: TokenSpacing.xl),
          // postingsSection — postings list + inline balance indicator
          _PostingsSection(state: state, l10n: l10n),
          if (!state.canEditStructural) ...[
            const SizedBox(height: TokenSpacing.xl),
            // readonlyHint (.pen MtcIK) — shown only when structural edits are off
            _ReadonlyHint(l10n: l10n),
          ],
          const SizedBox(height: TokenSpacing.xl),
          // metaSection
          _MetaSection(tx: state.transaction, id: id, l10n: l10n),
          const SizedBox(height: TokenSpacing.xxl),
          // buttonRow — Delete + Save
          ButtonRow(
            primaryLabel: state.isSaving ? '${l10n.actionSave}...' : l10n.actionSave,
            primaryOnTap: () async {
              if (!state.isBalanced) {
                DesignToast.show(
                  context,
                  message: l10n.txSaveBlockedUnbalanced,
                  icon: Icons.warning_amber_outlined,
                );
                return;
              }
              final ok = await state.save();
              if (!ok) {
                if (context.mounted) {
                  DesignToast.show(
                    context,
                    message: l10n.txSaveFailed,
                    icon: Icons.error_outline,
                  );
                }
                return;
              }
              // "Remember category" is an independent rule creation (ADR-0064),
              // not part of the transaction PATCH/correct save.
              if (state.learnRule) {
                final ruleOk = await state.createLearnRule();
                if (!ruleOk && context.mounted) {
                  DesignToast.show(
                    context,
                    message: l10n.txLearnRuleCreateFailed,
                    icon: Icons.error_outline,
                  );
                }
              }
              if (context.mounted) context.pop();
            },
            secondaryLabel: l10n.actionDelete,
            secondaryOnTap: () async {
              final confirmed = await showDialog<bool>(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text(l10n.actionDelete),
                  content: Text(l10n.txDeleteConfirmMessage),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: Text(l10n.txCancel),
                    ),
                    FilledButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      child: Text(l10n.actionDelete),
                    ),
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
    );
  }
}

/// Audit-chain banner (.pen G07oe statusBanner). Surfaces the supersede/void
/// lifecycle: SUPERSEDED → links to the replacement; an ACTIVE tx that replaced
/// an original → links back to the original; VOIDED → informational. Only
/// rendered when [hasContent] is true (see the build wiring). Hidden for plain
/// ACTIVE transactions. Fields stay read-only for non-ACTIVE txs via
/// `canEditStructural`; this banner explains why and offers the audit jump.
class _StatusBanner extends StatelessWidget {
  const _StatusBanner({required this.tx, required this.l10n});

  final gen.TransactionDetailDto tx;
  final AppLocalizations l10n;

  /// Whether the banner should render for [tx].
  static bool hasContent(gen.TransactionDetailDto tx) =>
      transactionAuditOf(tx).kind != TransactionAuditCase.none;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    final audit = transactionAuditOf(tx);
    final (String message, IconData icon) = switch (audit.kind) {
      TransactionAuditCase.superseded => (
        l10n.txAuditSupersededBy(audit.linkId ?? ''),
        Icons.swap_horiz_outlined,
      ),
      TransactionAuditCase.replacement => (
        l10n.txAuditReplaces(audit.linkId ?? ''),
        Icons.history_outlined,
      ),
      TransactionAuditCase.voided => (l10n.txAuditVoided, Icons.block),
      // Unreachable: hasContent() gates rendering so `none` never reaches here.
      // Fail fast if that guard is ever weakened — never silently render an
      // empty card (matches the generated enum's own ArgumentError for unknown
      // statuses).
      TransactionAuditCase.none =>
        throw StateError('_StatusBanner built for a none audit case'),
    };
    final card = Container(
      padding: const EdgeInsets.symmetric(
        horizontal: TokenSpacing.md,
        vertical: TokenSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: tokens.bgCard,
        borderRadius: TokenRadius.borderMd,
        border: Border.all(color: tokens.borderCard, width: 0.5),
      ),
      child: Row(
        children: [
          Icon(icon, size: 18, color: tokens.textSecondary),
          const SizedBox(width: TokenSpacing.sm),
          Expanded(
            child: Text(
              message,
              style: TokenTypography.caption(color: tokens.textSecondary),
            ),
          ),
        ],
      ),
    );
    final linkId = audit.linkId;
    if (linkId == null || linkId.isEmpty) return card;
    return Tappable(
      onTap: () => context.push('${RouteNames.transactions}/$linkId'),
      semanticLabel: message,
      child: card,
    );
  }
}

class _InfoCard extends StatelessWidget {
  const _InfoCard({required this.state, required this.l10n});

  final TransactionDetailState state;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    // .pen eC35n infoCard: a single card container (radius.lg + shadow +
    // bg.card + border.card 0.5 inner, clipped) holding 4 transparent rows
    // (AqRLj, fill #00000000) separated by 0.5 border.card dividers.
    final editable = state.canEditStructural;
    final primaryColor = tokens.textPrimary;
    final rows = <Widget>[
      ListItemArrow.plain(
        icon: Icons.calendar_today_outlined,
        label: l10n.txDate,
        trailingText: state.selectedDate.isEmpty ? '—' : state.selectedDate,
        trailingColor: editable ? primaryColor : null,
        onTap: editable
            ? () async {
                final lastDate = DateTime.now();
                final firstDate = DateTime(2000);
                DateTime initial;
                try {
                  initial = DateTime.parse(state.selectedDate);
                } catch (_) {
                  initial = lastDate;
                }
                // showDatePicker asserts firstDate <= initialDate <= lastDate;
                // a forward-dated tx would otherwise crash the picker.
                if (initial.isAfter(lastDate)) initial = lastDate;
                if (initial.isBefore(firstDate)) initial = firstDate;
                final picked = await showDatePicker(
                  context: context,
                  initialDate: initial,
                  firstDate: firstDate,
                  lastDate: lastDate,
                );
                if (picked != null) {
                  state.setDate(
                    '${picked.year}-${picked.month.toString().padLeft(2, '0')}-${picked.day.toString().padLeft(2, '0')}',
                  );
                }
              }
            : null,
      ),
      ListItemArrow.plain(
        icon: Icons.person_outline,
        label: l10n.txPayee,
        trailingText: state.payee.isEmpty ? '—' : state.payee,
      ),
      ListItemArrow.plain(
        icon: Icons.label_outline,
        label: l10n.txCategory,
        trailingText: state.categoryLeaf,
        trailingColor: editable ? primaryColor : null,
        onTap: editable
            ? () async {
                final path = await AccountPickerSheet.show(
                  context,
                  allowedTypes: const {
                    gen.AccountResponseDtoTypeEnum.expenses,
                    gen.AccountResponseDtoTypeEnum.income,
                  },
                  title: l10n.txCategoryPickerTitle,
                );
                if (path != null) state.setCategoryAccount(path);
              }
            : null,
      ),
      ListItemArrow.plain(
        icon: Icons.account_balance_outlined,
        label: l10n.txAccount,
        trailingText: state.paymentAccountLeaf,
        trailingColor: editable ? primaryColor : null,
        onTap: editable
            ? () async {
                final path = await AccountPickerSheet.show(
                  context,
                  allowedTypes: const {
                    gen.AccountResponseDtoTypeEnum.assets,
                    gen.AccountResponseDtoTypeEnum.liabilities,
                  },
                  title: l10n.txAccountPickerTitle,
                );
                if (path != null) state.setPaymentAccount(path);
              }
            : null,
      ),
    ];
    return Container(
      decoration: BoxDecoration(
        color: tokens.bgCard,
        borderRadius: TokenRadius.borderLg,
        border: Border.all(color: tokens.borderCard, width: 0.5),
        boxShadow: [
          BoxShadow(
            color: tokens.shadow,
            blurRadius: 18,
            offset: const Offset(0, 2),
            spreadRadius: 2,
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (var i = 0; i < rows.length; i++) ...[
            rows[i],
            if (i < rows.length - 1)
              Container(height: 0.5, width: double.infinity, color: tokens.borderCard),
          ],
        ],
      ),
    );
  }
}

class _TagsSection extends HookWidget {
  const _TagsSection({required this.state, required this.l10n});

  final TransactionDetailState state;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    final inputController = useTextEditingController();
    final inputFocusNode = useFocusNode();
    final inputText = useState('');
    final suggestions = useState<List<TagSuggestion>>(const []);
    final isLoading = useState(false);
    final isFocused = useState(false);

    useEffect(() {
      void listener() {
        inputText.value = inputController.text;
      }
      inputController.addListener(listener);
      return () => inputController.removeListener(listener);
    }, [inputController]);

    useEffect(() {
      void focusListener() {
        isFocused.value = inputFocusNode.hasFocus;
      }
      inputFocusNode.addListener(focusListener);
      return () => inputFocusNode.removeListener(focusListener);
    }, [inputFocusNode]);

    final debounced = useDebounce(
      inputText.value,
      const Duration(milliseconds: 300),
    );
    useEffect(() {
      if (!isFocused.value) return null;
      final q = debounced.trim();
      isLoading.value = true;
      state.suggestTags(q).then((result) {
        suggestions.value = result;
        isLoading.value = false;
      });
      return null;
    }, [debounced, isFocused.value]);

    void addTag(String tag) {
      final t = tag.trim();
      if (t.isNotEmpty && !state.tags.contains(t)) {
        state.setTags([...state.tags, t]);
      }
      inputController.clear();
      inputText.value = '';
      inputFocusNode.requestFocus();
    }

    final showPanel = isFocused.value;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.txTags, style: TokenTypography.caption(color: tokens.textSecondary)),
        const SizedBox(height: TokenSpacing.sm),
        Wrap(
          spacing: TokenSpacing.sm,
          runSpacing: TokenSpacing.sm,
          children: [
            for (final tag in state.tags)
              _RemovableTag(
                label: tag,
                onRemove: () {
                  state.setTags(state.tags.where((t) => t != tag).toList());
                  inputFocusNode.requestFocus();
                },
              ),
            _TagInputChip(
              controller: inputController,
              focusNode: inputFocusNode,
              placeholder: l10n.txTagSearchOrNew,
              onSubmitted: addTag,
            ),
          ],
        ),
        if (showPanel) ...[
          const SizedBox(height: TokenSpacing.sm),
          _TagSuggestionsPanel(
            query: inputText.value.trim(),
            suggestions: suggestions.value,
            isLoading: isLoading.value,
            existingTags: state.tags,
            l10n: l10n,
            onSelect: addTag,
          ),
        ],
      ],
    );
  }
}

/// A tag chip with a trailing × button. Tap × → removed (no confirm — tags
/// are low-risk, easily re-added). Uses onTapDown so removal fires before the
/// pointer-up blur can dismiss anything.
class _RemovableTag extends StatelessWidget {
  const _RemovableTag({required this.label, required this.onRemove});

  final String label;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    final l10n = AppLocalizations.of(context)!;
    return Container(
      height: 26,
      padding: const EdgeInsets.only(left: TokenSpacing.lg),
      decoration: BoxDecoration(
        color: tokens.bgCard,
        borderRadius: BorderRadius.circular(11),
        border: Border.all(color: TokenColors.borderTag, width: 0.5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(label, style: TokenTypography.caption(color: tokens.textPrimary)),
          const SizedBox(width: TokenSpacing.xs),
          Tappable(
            onTap: onRemove,
            activateOnPress: true,
            semanticLabel: l10n.txRemoveTag,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: TokenSpacing.xs,
                horizontal: TokenSpacing.xs,
              ),
              child: Icon(Icons.close, size: 14, color: tokens.textTertiary),
            ),
          ),
        ],
      ),
    );
  }
}

/// Input chip (.pen addTagInput): rounded chip with search icon + TextField.
/// Whole chip is tappable to focus the field (a min-size Row + Flexible would
/// leave dead zones where taps miss the TextField's hit area).
class _TagInputChip extends StatelessWidget {
  const _TagInputChip({
    required this.controller,
    required this.focusNode,
    required this.placeholder,
    required this.onSubmitted,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final String placeholder;
  final void Function(String) onSubmitted;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    return Container(
      height: 26,
      padding: const EdgeInsets.symmetric(
        vertical: TokenSpacing.xs,
        horizontal: TokenSpacing.lg,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        border: Border.all(color: TokenColors.borderTag, width: 0.5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Icon is decorative + a focus affordance; wrap in ExcludeSemantics so
          // its placeholder label doesn't double-read against the TextField's hint.
          // The TextField below stays a proper editable-text node.
          ExcludeSemantics(
            child: Tappable(
              onTap: focusNode.requestFocus,
              semanticLabel: placeholder,
              child: Icon(Icons.search, size: 14, color: tokens.textTertiary),
            ),
          ),
          const SizedBox(width: TokenSpacing.xs),
          // IntrinsicWidth makes the field track its content width (design's
          // fit_content). Flexible/Expanded here would let the field grab the
          // Wrap's full run width — that was the "still very wide" bug.
          IntrinsicWidth(
            child: TextField(
              controller: controller,
              focusNode: focusNode,
              style: TokenTypography.caption(color: tokens.textPrimary),
              decoration: InputDecoration(
                border: InputBorder.none,
                isCollapsed: true,
                contentPadding: EdgeInsets.zero,
                hintText: placeholder,
                hintStyle: TokenTypography.caption(color: tokens.textTertiary),
              ),
              textInputAction: TextInputAction.done,
              onSubmitted: onSubmitted,
            ),
          ),
        ],
      ),
    );
  }
}

/// Suggestions panel (.pen tagSuggestions): inline card below the input chip.
class _TagSuggestionsPanel extends StatelessWidget {
  const _TagSuggestionsPanel({
    required this.query,
    required this.suggestions,
    required this.isLoading,
    required this.existingTags,
    required this.l10n,
    required this.onSelect,
  });

  final String query;
  final List<TagSuggestion> suggestions;
  final bool isLoading;
  final List<String> existingTags;
  final AppLocalizations l10n;
  final void Function(String) onSelect;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    final isCommonMode = query.isEmpty;

    Widget body;
    if (isLoading && suggestions.isEmpty) {
      body = Padding(
        padding: const EdgeInsets.all(TokenSpacing.md),
        child: Text('…', style: TokenTypography.caption(color: tokens.textTertiary)),
      );
    } else if (isCommonMode) {
      // State 1: focused, no query → recent/common tags (no create-new row)
      final children = <Widget>[
        Padding(
          padding: const EdgeInsets.all(TokenSpacing.md),
          child: Text(l10n.txTagCommonTags,
              style: TokenTypography.caption(color: tokens.textTertiary)),
        ),
      ];
      if (suggestions.isEmpty) {
        children.add(Padding(
          padding: const EdgeInsets.all(TokenSpacing.md),
          child: Text(l10n.txTagNoResults,
              style: TokenTypography.caption(color: tokens.textTertiary)),
        ));
      } else {
        for (final s in suggestions) {
          children.add(_SuggestionRow(
            tag: s.tag,
            count: s.count,
            isExactMatch: false,
            isAdded: existingTags.contains(s.tag),
            onTap: () => onSelect(s.tag),
          ));
        }
      }
      body = Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: children);
    } else {
      // State 2/3: prefix match + create-new
      final exactExists =
          existingTags.contains(query) || suggestions.any((s) => s.tag == query);
      if (suggestions.isEmpty && exactExists) {
        body = Padding(
          padding: const EdgeInsets.all(TokenSpacing.md),
          child: Text(l10n.txTagNoResults,
              style: TokenTypography.caption(color: tokens.textTertiary)),
        );
      } else {
        body = Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (final s in suggestions)
              _SuggestionRow(
                tag: s.tag,
                count: s.count,
                isExactMatch: s.tag == query,
                isAdded: existingTags.contains(s.tag),
                onTap: () => onSelect(s.tag),
              ),
            if (!exactExists)
              _CreateNewRow(
                label: l10n.txTagCreateNew(query),
                onTap: () => onSelect(query),
              ),
          ],
        );
      }
    }

    return DesignCard(padding: EdgeInsets.zero, child: body);
  }
}

class _SuggestionRow extends StatelessWidget {
  const _SuggestionRow({
    required this.tag,
    required this.count,
    required this.isExactMatch,
    required this.isAdded,
    required this.onTap,
  });

  final String tag;
  final int count;
  final bool isExactMatch;
  final bool isAdded;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    final color = isAdded
        ? tokens.textTertiary
        : (isExactMatch ? TokenColors.textAccent : tokens.textPrimary);
    return Tappable(
      onTap: isAdded ? null : onTap,
      activateOnPress: true,
      semanticLabel: isExactMatch ? tag : '$tag, $count',
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: TokenSpacing.sm, horizontal: TokenSpacing.md),
        child: Row(
          children: [
            Icon(
              isExactMatch ? Icons.check : Icons.label_outline,
              size: 14,
              color: color,
            ),
            const SizedBox(width: TokenSpacing.sm),
            Expanded(
                child: Text(tag, style: TokenTypography.body(color: color))),
            if (!isExactMatch)
              Text('· $count',
                  style: TokenTypography.micro(color: tokens.textTertiary)),
          ],
        ),
      ),
    );
  }
}

class _CreateNewRow extends StatelessWidget {
  const _CreateNewRow({required this.label, required this.onTap});

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    return Tappable(
      onTap: onTap,
      activateOnPress: true,
      semanticLabel: label,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: TokenSpacing.sm, horizontal: TokenSpacing.md),
        child: Row(
          children: [
            const Icon(Icons.add, size: 14, color: TokenColors.textAccent),
            const SizedBox(width: TokenSpacing.sm),
            Text(
              label,
              style: TokenTypography.body(
                  fontWeight: FontWeight.w500, color: tokens.textAccent),
            ),
          ],
        ),
      ),
    );
  }
}

class _PostingsSection extends StatelessWidget {
  const _PostingsSection({required this.state, required this.l10n});

  final TransactionDetailState state;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    final postings = state.postings;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(title: l10n.txPostingsTitle),
        const SizedBox(height: TokenSpacing.sm),
        DesignCard(
          padding: const EdgeInsets.all(TokenSpacing.lg),
          child: Column(
            children: [
              for (var i = 0; i < postings.length; i++) ...[
                if (i > 0) const _Divider(),
                PostingEditorRow(posting: postings[i], l10n: l10n),
              ],
              if (postings.isNotEmpty) const _Divider(),
              _BalanceIndicator(state: state, l10n: l10n),
              const _Divider(),
              _AddPostingStub(l10n: l10n, tokens: tokens),
            ],
          ),
        ),
      ],
    );
  }
}

/// Balance indicator, inlined in postings card (.pen NpqoJ).
/// Pure boolean per ADR-0001 #1/#4: balanced → success; unbalanced → error.
/// No residual Δ number, no auto-fill button (postings are immutable here).
class _BalanceIndicator extends StatelessWidget {
  const _BalanceIndicator({required this.state, required this.l10n});

  final TransactionDetailState state;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final balanced = state.isBalanced;
    final color = balanced ? TokenColors.success : TokenColors.error;
    final bg = balanced ? TokenColors.successBg : TokenColors.errorBg;
    final icon = balanced ? Icons.check_circle_outline : Icons.warning_amber_outlined;
    final label = balanced ? l10n.balanceBalanced : l10n.balanceUnbalanced;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: TokenSpacing.lg),
      decoration: BoxDecoration(color: bg, borderRadius: TokenRadius.borderMd),
      child: Row(
        children: [
          Icon(icon, size: 18, color: color),
          const SizedBox(width: TokenSpacing.sm),
          Text(label, style: TokenTypography.body(fontWeight: FontWeight.w600, color: color)),
        ],
      ),
    );
  }
}

class _AddPostingStub extends StatelessWidget {
  const _AddPostingStub({required this.l10n, required this.tokens});

  final AppLocalizations l10n;
  final ThemeTokens tokens;

  @override
  Widget build(BuildContext context) {
    return Tappable(
      // TODO: add posting
      onTap: () {},
      semanticLabel: l10n.txAddPosting,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: TokenSpacing.md, horizontal: TokenSpacing.lg),
        decoration: BoxDecoration(
          borderRadius: TokenRadius.borderMd,
          border: Border.all(color: tokens.borderCard, width: 0.5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.add, size: 16, color: TokenColors.textAccent),
            const SizedBox(width: 6),
            Text(l10n.txAddPosting, style: TokenTypography.body(fontWeight: FontWeight.w500, color: tokens.textAccent)),
          ],
        ),
      ),
    );
  }
}

class _MetaSection extends StatelessWidget {
  const _MetaSection({required this.tx, required this.id, required this.l10n});

  final gen.TransactionDetailDto? tx;
  final String id;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    final source = tx?.sourceType ?? '—';
    final created = tx?.createdAt ?? '—';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${l10n.txSource}: $source  ·  ${l10n.txCreated}: $created',
          style: TokenTypography.micro(color: tokens.textTertiary),
        ),
        const SizedBox(height: 4),
        Text(
          '${l10n.txId}: ${tx?.id ?? id}',
          style: TokenTypography.micro(color: tokens.textTertiary),
        ),
      ],
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.5,
      width: double.infinity,
      color: ThemeTokens.of(context).borderCard,
    );
  }
}

/// "Remember category" row (.pen G07oe qImbX): sparkles icon + title/hint +
/// DesignSwitch, on accentCream. Creates a TransactionRule (ADR-0064) when
/// toggled on at save time — independent of the transaction PATCH/correct.
class _LearnRuleRow extends StatelessWidget {
  const _LearnRuleRow({required this.state, required this.l10n});

  final TransactionDetailState state;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    return Container(
      padding: const EdgeInsets.all(TokenSpacing.lg),
      decoration: BoxDecoration(
        color: tokens.accentCream,
        borderRadius: TokenRadius.borderMd,
      ),
      child: Row(
        children: [
          const Icon(Icons.auto_awesome, size: 20, color: TokenColors.textAccent),
          const SizedBox(width: TokenSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.txLearnRule,
                  style: TokenTypography.body(
                      fontWeight: FontWeight.w600, color: tokens.textPrimary),
                ),
                const SizedBox(height: 2),
                Text(
                  l10n.txLearnRuleHint,
                  style: TokenTypography.micro(color: tokens.textSecondary),
                ),
              ],
            ),
          ),
          DesignSwitch(
            value: state.learnRule,
            onChanged: state.setLearnRule,
          ),
        ],
      ),
    );
  }
}

/// Read-only hint (.pen G07oe MtcIK): lock icon + title/body on accentCream.
/// Explains that structural fields (amount/account/date/postings) are recorded
/// accounting facts and cannot be edited directly yet.
class _ReadonlyHint extends StatelessWidget {
  const _ReadonlyHint({required this.l10n});

  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    return Container(
      padding: const EdgeInsets.all(TokenSpacing.lg),
      decoration: BoxDecoration(
        color: tokens.accentCream,
        borderRadius: TokenRadius.borderMd,
      ),
      child: Row(
        children: [
          const Icon(Icons.lock_outline, size: 20, color: TokenColors.textAccent),
          const SizedBox(width: TokenSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.txReadonlyHintTitle,
                  style: TokenTypography.body(
                      fontWeight: FontWeight.w600, color: tokens.textPrimary),
                ),
                const SizedBox(height: 2),
                Text(
                  l10n.txReadonlyHintBody,
                  style: TokenTypography.micro(color: tokens.textSecondary),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
