import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../shared/widgets/section_header.dart';
import '../hooks/use_reconciliation.dart';

/// BalanceReconciliationPage (.pen oEpXT).
/// Book balance vs actual balance, with tolerance-aware assertion / pad entry.
class BalanceReconciliationPage extends HookWidget {
  const BalanceReconciliationPage({super.key, required this.accountId});

  final String accountId;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final state = useReconciliation(accountId);
    final tokens = ThemeTokens.of(context);

    return Scaffold(
      body: Column(
        children: [
          TopBar(title: l10n.reconcileTitle),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(TokenSpacing.xl),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // bookBalanceCard
                  InfoCard(
                    label: '${l10n.reconcileBookBalance} · ${l10n.reconcileBookBalanceHint}',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(state.accountName, style: TokenTypography.caption(color: tokens.textTertiary)),
                        const SizedBox(height: TokenSpacing.sm),
                        Text(
                          '${_money(state.bookBalance)} ${state.currency}',
                          style: TokenTypography.h2(fontWeight: FontWeight.w700, color: tokens.textPrimary),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: TokenSpacing.xl),
                  // formHeader
                  SectionHeader(title: l10n.reconcileFormTitle),
                  const SizedBox(height: TokenSpacing.sm),
                  // dateRow
                  ListItemArrow.card(
                    icon: Icons.calendar_today_outlined,
                    label: l10n.reconcileDate,
                    trailingText: state.date,
                  ),
                  const SizedBox(height: TokenSpacing.sm),
                  // actualAmount
                  InputAmount(
                    label: l10n.reconcileActual,
                    controller: state.actualController,
                    placeholder: l10n.reconcileActualPlaceholder,
                  ),
                  // diffCard (conditional on input)
                  if (state.hasInput) ...[
                    const SizedBox(height: TokenSpacing.xl),
                    InfoCard(
                      label: l10n.reconcileDifference,
                      child: Text(
                        '${_fmtDiff(state.difference!)} ${state.currency}',
                        style: TokenTypography.h2(
                          fontWeight: FontWeight.w700,
                          color: state.difference == 0 ? TokenColors.success : TokenColors.error,
                        ),
                      ),
                    ),
                  ],
                  const SizedBox(height: TokenSpacing.xl),
                  // toleranceHint
                  _ToleranceHint(text: l10n.reconcileToleranceHint),
                  const SizedBox(height: TokenSpacing.xxl),
                  // buttonRow — assertion (secondary) + pad entry (primary)
                  ButtonRow(
                    primaryLabel: l10n.reconcileGenerateEntry,
                    // TODO(api): generate Equity:Pad adjustment entry
                    primaryOnTap: null,
                    secondaryLabel: l10n.reconcileRecordAssertion,
                    // TODO(api): record balance assertion
                    secondaryOnTap: null,
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

class _ToleranceHint extends StatelessWidget {
  const _ToleranceHint({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: TokenSpacing.md, horizontal: TokenSpacing.lg),
      decoration: BoxDecoration(
        color: TokenColors.infoBg,
        borderRadius: TokenRadius.borderMd,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.straighten, size: 18, color: TokenColors.info),
          const SizedBox(width: TokenSpacing.sm),
          Expanded(
            child: Text(text, style: TokenTypography.caption(color: tokens.textSecondary)),
          ),
        ],
      ),
    );
  }
}

String _money(double v) {
  final isInt = v == v.roundToDouble();
  final s = isInt ? v.toStringAsFixed(0) : v.toStringAsFixed(2);
  final parts = s.split('.');
  final intPart = parts[0].replaceAllMapped(
    RegExp(r'(\d)(?=(\d{3})+$)'),
    (m) => '${m[1]},',
  );
  return parts.length > 1 ? '$intPart.${parts[1]}' : intPart;
}

String _fmtDiff(double v) {
  final sign = v > 0 ? '+' : '';
  return '$sign${_money(v)}';
}
