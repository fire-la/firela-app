import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../shared/widgets/section_header.dart';
import '../providers/use_transaction_detail.dart';

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
          _TagsSection(tags: state.tags, l10n: l10n),
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
    return Column(
      children: [
        ListItemArrow.card(
          icon: Icons.calendar_today_outlined,
          label: l10n.txDate,
          trailingText: state.selectedDate.isEmpty ? '—' : state.selectedDate,
        ),
        ListItemArrow.card(
          icon: Icons.person_outline,
          label: l10n.txPayee,
          trailingText: state.payee.isEmpty ? '—' : state.payee,
        ),
        ListItemArrow.card(
          icon: Icons.label_outline,
          label: l10n.txCategory,
          trailingText: '—', // TODO: derive category from postings/rules
        ),
        ListItemArrow.card(
          icon: Icons.account_balance_outlined,
          label: l10n.txAccount,
          trailingText: state.firstAccount.isEmpty ? '—' : state.firstAccount,
        ),
      ],
    );
  }
}

class _TagsSection extends StatelessWidget {
  const _TagsSection({required this.tags, required this.l10n});

  final List<String> tags;
  final AppLocalizations l10n;

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
            // addTag stub
            GestureDetector(
              // TODO: add tag editor
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: TokenSpacing.md),
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
                _PostingRow(postings[i] as Map<String, dynamic>, l10n: l10n),
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

class _PostingRow extends StatelessWidget {
  const _PostingRow(this.posting, {required this.l10n});

  final Map<String, dynamic> posting;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    final account = (posting['accountName'] as String?) ?? (posting['account'] as String?) ?? '—';
    final units = posting['units']?.toString();
    final currency = (posting['currency'] as String?) ?? '';
    return TransactionRow(
      icon: _accountIcon(account),
      title: account,
      subtitle: currency,
      amount: units ?? l10n.txPostingInterpolated,
      amountColor: tokens.textPrimary,
    );
  }
}

IconData _accountIcon(String account) {
  if (account.startsWith('Liabilities')) return Icons.credit_card;
  if (account.startsWith('Income')) return Icons.south_west;
  if (account.startsWith('Expenses')) return Icons.shopping_cart_outlined;
  return Icons.account_balance_wallet_outlined;
}

/// Balance indicator, inlined in postings card (.pen NpqoJ).
/// Balanced → success; unbalanced → error + auto-fill stub.
class _BalanceIndicator extends StatelessWidget {
  const _BalanceIndicator({required this.state, required this.l10n});

  final TransactionDetailState state;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    if (state.isBalanced) {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: TokenSpacing.lg),
        decoration: BoxDecoration(
          color: TokenColors.successBg,
          borderRadius: TokenRadius.borderMd,
        ),
        child: Row(
          children: [
            const Icon(Icons.check_circle_outline, size: 18, color: TokenColors.success),
            const SizedBox(width: TokenSpacing.sm),
            Text(
              'Δ = 0 · ${l10n.balanceBalanced}',
              style: TokenTypography.body(fontWeight: FontWeight.w600, color: TokenColors.success),
            ),
          ],
        ),
      );
    }

    final first = state.postingBalances.firstWhere(
      (b) => !b.isZero,
      orElse: () => state.postingBalances.first,
    );
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: TokenSpacing.lg),
      decoration: BoxDecoration(
        color: TokenColors.errorBg,
        borderRadius: TokenRadius.borderMd,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(Icons.warning_amber_outlined, size: 18, color: TokenColors.error),
              const SizedBox(width: TokenSpacing.sm),
              Text(
                'Δ = ${_fmtDelta(first.delta)} ${first.currency}',
                style: TokenTypography.body(fontWeight: FontWeight.w700, color: TokenColors.error),
              ),
              const SizedBox(width: TokenSpacing.sm),
              Text(l10n.balanceUnbalanced, style: TokenTypography.caption(color: ThemeTokens.of(context).textSecondary)),
            ],
          ),
          ButtonSmall(
            label: l10n.balanceAutoFill,
            // TODO: auto-fill interpolated posting to balance
            onPressed: () {},
          ),
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

String _fmtDelta(double v) {
  if (v == v.roundToDouble()) return v.toStringAsFixed(0);
  return v.toStringAsFixed(2);
}
