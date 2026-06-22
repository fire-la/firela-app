import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../shared/widgets/section_header.dart';
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
    final tokens = ThemeTokens.of(context);
    final state = useTransactionDetail(id);
    final addTagController = useTextEditingController();
    final addTagFocusNode = useFocusNode();

    // addTag: opens an input dialog, returns the entered tag, then merges it
    // into the CURRENT state.tags (closure captures the live state, so adding
    // several tags in a row does not clobber earlier ones via a stale snapshot).
    Future<void> addTag() async {
      addTagController.clear();
      // Guard: the dialog builder can run more than once (overlay/keyboard
      // rebuilds); focus the field only on the first build so the cursor
      // doesn't jump back mid-entry.
      var focused = false;
      final result = await showDialog<String>(
        context: context,
        builder: (dialogContext) {
          if (!focused) {
            focused = true;
            WidgetsBinding.instance.addPostFrameCallback(
              (_) => addTagFocusNode.requestFocus(),
            );
          }
          return Dialog(
            backgroundColor: tokens.bgCard,
            child: Padding(
              padding: const EdgeInsets.all(TokenSpacing.lg),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    l10n.txAddTag,
                    style: TokenTypography.h3(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: TokenSpacing.lg),
                  InputField(
                    controller: addTagController,
                    focusNode: addTagFocusNode,
                    placeholder: l10n.txAddTagPlaceholder,
                  ),
                  const SizedBox(height: TokenSpacing.lg),
                  ButtonRow(
                    primaryLabel: l10n.txAddTag,
                    primaryOnTap: () => Navigator.of(dialogContext)
                        .pop(addTagController.text.trim()),
                    secondaryLabel: l10n.txCancel,
                    secondaryOnTap: () => Navigator.of(dialogContext).pop(),
                  ),
                ],
              ),
            ),
          );
        },
      );
      if (!context.mounted) return;
      if (result != null &&
          result.isNotEmpty &&
          !state.tags.contains(result)) {
        state.setTags([...state.tags, result]);
      }
    }

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

    final tx = state.transaction ?? <String, dynamic>{};
    final postings = (tx['postings'] as List<dynamic>?) ?? const [];

    return SingleChildScrollView(
      padding: const EdgeInsets.all(TokenSpacing.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // amtCard — InputAmount, read-only display (postings cannot be modified)
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
          // descSection — editable narration
          InputField(
            controller: state.narrationController,
            label: l10n.txDescription,
            placeholder: l10n.txDescriptionPlaceholder,
            maxLines: 3,
          ),
          const SizedBox(height: TokenSpacing.xl),
          // tagsSection
          _TagsSection(tags: state.tags, l10n: l10n, onAddTag: addTag),
          const SizedBox(height: TokenSpacing.xl),
          // postingsSection — postings list + inline balance indicator
          _PostingsSection(state: state, postings: postings, l10n: l10n),
          const SizedBox(height: TokenSpacing.xl),
          // metaSection
          _MetaSection(tx: tx, id: id, l10n: l10n),
          const SizedBox(height: TokenSpacing.xxl),
          // buttonRow — Delete + Save
          ButtonRow(
            primaryLabel: state.isSaving ? '${l10n.actionSave}...' : l10n.actionSave,
            primaryOnTap: () async {
              final ok = await state.save();
              if (ok && context.mounted) context.pop();
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
    final rows = <Widget>[
      ListItemArrow.plain(
        icon: Icons.calendar_today_outlined,
        label: l10n.txDate,
        trailingText: state.selectedDate.isEmpty ? '—' : state.selectedDate,
      ),
      ListItemArrow.plain(
        icon: Icons.person_outline,
        label: l10n.txPayee,
        trailingText: state.payee.isEmpty ? '—' : state.payee,
      ),
      ListItemArrow.plain(
        icon: Icons.label_outline,
        label: l10n.txCategory,
        trailingText: '—', // TODO: derive category from postings/rules
      ),
      ListItemArrow.plain(
        icon: Icons.account_balance_outlined,
        label: l10n.txAccount,
        trailingText: state.firstAccount.isEmpty ? '—' : state.firstAccount,
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

class _TagsSection extends StatelessWidget {
  const _TagsSection({
    required this.tags,
    required this.l10n,
    required this.onAddTag,
  });

  final List<String> tags;
  final AppLocalizations l10n;
  final VoidCallback onAddTag;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.txTags, style: TokenTypography.caption(color: tokens.textSecondary)),
        const SizedBox(height: TokenSpacing.sm),
        Wrap(
          spacing: TokenSpacing.sm,
          runSpacing: TokenSpacing.sm,
          children: [
            for (final tag in tags) Tag(label: tag),
            // addTag button
            GestureDetector(
              onTap: onAddTag,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: TokenSpacing.xs, horizontal: TokenSpacing.lg),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(color: TokenColors.borderTag, width: 0.5),
                ),
                child: Text('+', style: TokenTypography.caption(color: tokens.textTertiary)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _PostingsSection extends StatelessWidget {
  const _PostingsSection({required this.state, required this.postings, required this.l10n});

  final TransactionDetailState state;
  final List<dynamic> postings;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
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
                PostingEditorRow(posting: postings[i] as Map<String, dynamic>, l10n: l10n),
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
    return GestureDetector(
      // TODO: add posting
      onTap: () {},
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

  final Map<String, dynamic> tx;
  final String id;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    final source = tx['sourceType']?.toString() ?? '—';
    final created = tx['createdAt']?.toString() ?? '—';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${l10n.txSource}: $source  ·  ${l10n.txCreated}: $created',
          style: TokenTypography.micro(color: tokens.textTertiary),
        ),
        const SizedBox(height: 4),
        Text(
          '${l10n.txId}: ${tx['id'] ?? id}',
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
