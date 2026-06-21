import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../shared/widgets/section_header.dart';
import '../../domain/entities/holding.dart';
import '../hooks/use_account_investment.dart';

/// AccountDetailInvestmentPage (.pen djH8l).
/// Investment account detail: AccountSummary + cost basis holdings + P&L summary.
class AccountDetailInvestmentPage extends HookWidget {
  const AccountDetailInvestmentPage({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final state = useAccountInvestment(id);
    final d = state.detail;
    final tokens = ThemeTokens.of(context);

    return Scaffold(
      body: Column(
        children: [
          TopBar(title: l10n.accountDetailTitle),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(TokenSpacing.xl),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AccountSummary(
                    emoji: d['emoji'] as String? ?? '',
                    name: d['name'] as String? ?? '',
                    accountPath: d['accountPath'] as String? ?? '',
                    balance: d['balance'] as String? ?? '',
                    currencyTag: d['currencyTag'] as String? ?? '',
                    statusLabel: d['statusLabel'] as String? ?? '',
                  ),
                  const SizedBox(height: TokenSpacing.md),
                  Text(
                    l10n.investCostBasisHint,
                    style: TokenTypography.body(color: tokens.textSecondary),
                  ),
                  const SizedBox(height: TokenSpacing.xl),
                  _InfoRows(detail: d, holdingsCount: state.holdings.length, l10n: l10n),
                  const SizedBox(height: TokenSpacing.xl),
                  _HoldingsCard(holdings: state.holdings, l10n: l10n),
                  const SizedBox(height: TokenSpacing.xl),
                  _PnlCard(state: state, l10n: l10n),
                  const SizedBox(height: TokenSpacing.xl),
                  ListItemArrow.card(
                    icon: Icons.scale_outlined,
                    label: l10n.reconcileEntry,
                    trailingText: '2026.06.20',
                    onTap: () => context.push('/reconciliation/$id'),
                  ),
                  const SizedBox(height: TokenSpacing.xl),
                  Row(
                    children: [
                      Expanded(child: ButtonSecondary(label: l10n.actionClose, onPressed: () => context.pop())),
                      const SizedBox(width: TokenSpacing.md),
                      Expanded(
                        child: ButtonText(
                          label: l10n.actionDelete,
                          // TODO(api): wire delete account
                          onPressed: null,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: TokenSpacing.lg),
                  ButtonPrimary(
                    label: l10n.actionSave,
                    // TODO(api): wire save account changes
                    onPressed: null,
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

class _InfoRows extends StatelessWidget {
  const _InfoRows({required this.detail, required this.holdingsCount, required this.l10n});

  final Map<String, dynamic> detail;
  final int holdingsCount;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final labels = [
      l10n.investInfoAccountType,
      l10n.investInfoCustodian,
      l10n.investInfoHoldingsCount,
      l10n.investInfoStandard,
    ];
    final values = [
      detail['accountType'] as String? ?? 'Assets',
      detail['custodian'] as String? ?? '—',
      '$holdingsCount',
      detail['standard'] as String? ?? '—',
    ];
    return DesignCard(
      child: Column(
        children: [
          for (var i = 0; i < labels.length; i++)
            _InfoRow(label: labels[i], value: values[i]),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TokenSpacing.sm),
      child: Row(
        children: [
          Text(label, style: TokenTypography.caption(color: tokens.textTertiary)),
          const Spacer(),
          Text(value, style: TokenTypography.body(fontWeight: FontWeight.w500, color: tokens.textPrimary)),
        ],
      ),
    );
  }
}

class _HoldingsCard extends StatelessWidget {
  const _HoldingsCard({required this.holdings, required this.l10n});

  final List<Holding> holdings;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return DesignCard(
      padding: const EdgeInsets.all(TokenSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(title: l10n.investHoldingsTitle),
          const SizedBox(height: TokenSpacing.md),
          for (var i = 0; i < holdings.length; i++) ...[
            if (i > 0) const _Divider(),
            _HoldingRow(h: holdings[i], l10n: l10n),
          ],
        ],
      ),
    );
  }
}

class _HoldingRow extends StatelessWidget {
  const _HoldingRow({required this.h, required this.l10n});

  final Holding h;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    final pnlColor = h.pnl >= 0 ? TokenColors.success : TokenColors.error;
    final pnlSign = h.pnl >= 0 ? '+' : '';
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TokenSpacing.sm),
      child: Column(
        children: [
          Row(
            children: [
              Text(h.emoji, style: TextStyle(fontSize: 18, color: tokens.textPrimary)),
              const SizedBox(width: TokenSpacing.sm),
              Text(
                '${h.name} · ${_qty(h.quantity)}',
                style: TokenTypography.body(fontWeight: FontWeight.w600, color: tokens.textPrimary),
              ),
              const Spacer(),
              Text(_money(h.marketTotal), style: TokenTypography.body(fontWeight: FontWeight.w700, color: tokens.textPrimary)),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text('${l10n.holdingCost} ${_money(h.costTotal)}', style: TokenTypography.caption(color: tokens.textTertiary)),
              const SizedBox(width: TokenSpacing.sm),
              Text('${l10n.holdingUnitPrice} ${_money(h.costUnit)}', style: TokenTypography.micro(color: tokens.textTertiary)),
              const Spacer(),
              Text(
                '$pnlSign${_money(h.pnl)} (${_pct(h.pnlPercent)})',
                style: TokenTypography.caption(fontWeight: FontWeight.w600, color: pnlColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _PnlCard extends StatelessWidget {
  const _PnlCard({required this.state, required this.l10n});

  final AccountInvestmentState state;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    final pnlColor = state.totalPnl >= 0 ? TokenColors.success : TokenColors.error;
    final pnlSign = state.totalPnl >= 0 ? '+' : '';
    return Row(
      children: [
        Expanded(child: _Stat(label: l10n.investTotalCost, value: _money(state.totalCost), color: tokens.textPrimary)),
        const SizedBox(width: TokenSpacing.md),
        Expanded(child: _Stat(label: l10n.investTotalMarketValue, value: _money(state.totalMarketValue), color: tokens.textPrimary)),
        const SizedBox(width: TokenSpacing.md),
        Expanded(child: _Stat(label: l10n.investTotalPnl, value: '$pnlSign${_money(state.totalPnl)}', color: pnlColor)),
      ],
    );
  }
}

class _Stat extends StatelessWidget {
  const _Stat({required this.label, required this.value, required this.color});

  final String label;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    return Container(
      padding: const EdgeInsets.all(TokenSpacing.lg),
      decoration: BoxDecoration(
        color: tokens.bgCard,
        borderRadius: TokenRadius.borderMd,
      ),
      child: Column(
        children: [
          Text(label, style: TokenTypography.caption(color: tokens.textTertiary)),
          const SizedBox(height: 4),
          Text(value, style: TokenTypography.body(fontWeight: FontWeight.w700, color: color)),
        ],
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) {
    return Container(height: 0.5, width: double.infinity, color: ThemeTokens.of(context).borderCard);
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

String _qty(double v) {
  if (v == v.roundToDouble()) return v.toStringAsFixed(0);
  return v.toStringAsFixed(4).replaceAll(RegExp(r'0+$'), '').replaceAll(RegExp(r'\.$'), '');
}

String _pct(double v) {
  final sign = v >= 0 ? '+' : '';
  return '$sign${v.toStringAsFixed(1)}%';
}
