import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/network/auth_manager.dart';
import '../../../../core/router/route_names.dart';
import '../../../../core/services/ign_api_service.dart';
import '../../../../core/utils/logger.dart';
import '../../../../shared/signals/asset_refresh_signal.dart';

class AccountsListPage extends HookWidget {
  const AccountsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);
    final totalAssets = useState(0.0);
    final totalLiabilities = useState(0.0);
    final groups = useState<List<AccountGroup>>([]);

    Future<void> fetchData() async {
      if (!AuthManager.instance.isLoggedIn) return;
      isLoading.value = true;

      try {
        final results = await Future.wait([
          IgnApiService.instance.getNetWorth().catchError((_) => <String, dynamic>{}),
          IgnApiService.instance.getBeanAccounts(type: 'Assets').catchError((_) => <String, dynamic>{'items': [], 'total': 0}),
          IgnApiService.instance.getDashboardAccounts().catchError((_) => <String, dynamic>{'groups': []}),
        ]);

        final netWorthData = results[0];
        final nw = _parseDouble(netWorthData['netWorth']);
        final liab = _parseDouble(netWorthData['liabilities'] ?? '0');
        totalAssets.value = nw + liab.abs();
        totalLiabilities.value = liab.abs();

        // Merge bean/accounts + dashboard/accounts
        // Build lookup by id (most reliable), then fallback to name
        final balanceById = <String, double>{};
        final balanceByName = <String, double>{};
        final dashGroups = results[2]['groups'] as List<dynamic>? ?? [];
        for (final group in dashGroups) {
          final accts = group['accounts'] as List<dynamic>? ?? [];
          for (final acct in accts) {
            final id = acct['id'] as String? ?? '';
            final name = acct['name'] as String? ?? '';
            final bal = _parseDouble(acct['balance']);
            if (id.isNotEmpty) balanceById[id] = bal;
            if (name.isNotEmpty) balanceByName[name] = bal;
          }
        }

        final items = (results[1]['items'] as List<dynamic>? ?? []);
        final accountList = <AccountItem>[];
        for (final item in items) {
          final path = item['path'] as String? ?? '';
          final id = item['id'] as String? ?? '';
          final displayName = path.contains(':') ? path.split(':').last : path;
          final parts = path.split(':');
          final institution = parts.length >= 3 ? parts[2] : (parts.length >= 2 ? parts[1] : '');
          // Match by id first, then by path name
          final balance = balanceById[id] ?? balanceByName[path] ?? 0.0;
          accountList.add(AccountItem(
            name: path,
            displayName: displayName,
            balance: balance,
            currency: 'CNY',
            platform: _inferPlatform(path),
            institutionName: institution,
            accountId: id,
          ));
        }

        // Group by institution
        final grouped = <String, List<AccountItem>>{};
        for (final acct in accountList) {
          final key = acct.institutionName.isNotEmpty ? acct.institutionName : '其他';
          grouped.putIfAbsent(key, () => []).add(acct);
        }

        groups.value = grouped.entries.map((e) => AccountGroup(
          institutionName: e.key,
          accounts: e.value,
          totalBalance: e.value.fold(0.0, (sum, a) => sum + a.balance),
        )).toList()
          ..sort((a, b) => b.totalBalance.abs().compareTo(a.totalBalance.abs()));
      } catch (e) {
        logger.e('[AccountsListPage] fetch failed: $e');
      } finally {
        isLoading.value = false;
      }
    }

    useEffect(() {
      fetchData();
      return null;
    }, []);

    useEffect(() {
      return effect(() {
        if (assetRefreshSignal.value > 0) {
          Future.microtask(() => fetchData());
        }
      });
    }, []);

    return Scaffold(
      backgroundColor: ThemeTokens.of(context).bgPage,
      body: Column(
        children: [
          const TopBar(title: '账户列表'),
          Expanded(
            child: RefreshIndicator(
              onRefresh: fetchData,
              child: isLoading.value && groups.value.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : ListView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
                      children: [
                        // Summary row
                        Container(
                          padding: const EdgeInsets.all(TokenSpacing.xl),
                          decoration: BoxDecoration(
                            color: TokenColors.bgCard,
                            borderRadius: TokenRadius.borderLg,
                            border: Border.all(color: TokenColors.borderCard, width: 0.5),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: _summaryItem('总资产', totalAssets.value, positive: true),
                              ),
                              Container(
                                width: 1,
                                height: 36,
                                color: TokenColors.borderCard,
                              ),
                              Expanded(
                                child: _summaryItem('总负债', totalLiabilities.value, positive: false),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: TokenSpacing.xl),

                        // Account groups
                        for (final group in groups.value) ...[
                          _buildGroupHeader(group),
                          const SizedBox(height: TokenSpacing.sm),
                          for (final account in group.accounts) ...[
                            _buildAccountCard(context, account),
                            const SizedBox(height: TokenSpacing.sm),
                          ],
                          const SizedBox(height: TokenSpacing.lg),
                        ],

                        const SizedBox(height: TokenSpacing.xxl),
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _summaryItem(String label, double value, {required bool positive}) {
    return Column(
      children: [
        Text(label, style: TokenTypography.caption(color: TokenColors.textTertiary)),
        const SizedBox(height: 4),
        Text(
          _formatAmount(value),
          style: TokenTypography.body(
            fontWeight: FontWeight.w700,
            color: positive ? TokenColors.textPrimary : TokenColors.error,
          ),
        ),
      ],
    );
  }

  Widget _buildGroupHeader(AccountGroup group) {
    return Padding(
      padding: const EdgeInsets.only(bottom: TokenSpacing.sm),
      child: Row(
        children: [
          Text(
            group.institutionName,
            style: TokenTypography.caption(
              color: TokenColors.textTertiary,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          Text(
            _formatAmount(group.totalBalance),
            style: TokenTypography.caption(color: TokenColors.textTertiary),
          ),
        ],
      ),
    );
  }

  Widget _buildAccountCard(BuildContext context, AccountItem account) {
    return GestureDetector(
      onTap: () {
        if (account.accountId.isNotEmpty) {
          context.push('${RouteNames.transactions}?accountId=${Uri.encodeComponent(account.accountId)}&accountName=${Uri.encodeComponent(account.displayName)}');
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: TokenSpacing.lg, horizontal: TokenSpacing.xl),
        decoration: BoxDecoration(
          color: TokenColors.bgCard,
          borderRadius: TokenRadius.borderMd,
          border: Border.all(color: TokenColors.borderCard, width: 0.5),
        ),
        child: Row(
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: _platformColor(account.platform).withValues(alpha: 0.12),
                borderRadius: TokenRadius.borderSm,
              ),
              child: Icon(
                _platformIcon(account.platform),
                size: 18,
                color: _platformColor(account.platform),
              ),
            ),
            const SizedBox(width: TokenSpacing.lg),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    account.displayName,
                    style: TokenTypography.body(fontWeight: FontWeight.w500),
                  ),
                  if (account.name != account.displayName)
                    Text(
                      account.name,
                      style: TokenTypography.micro(color: TokenColors.textTertiary),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${account.balance >= 0 ? '' : '-'}${_formatAmount(account.balance.abs())}',
                  style: TokenTypography.body(
                    fontWeight: FontWeight.w700,
                    color: account.balance >= 0 ? TokenColors.textPrimary : TokenColors.error,
                  ),
                ),
                Text(
                  account.currency,
                  style: TokenTypography.micro(color: TokenColors.textTertiary),
                ),
              ],
            ),
            const SizedBox(width: TokenSpacing.sm),
            const Icon(Icons.chevron_right, size: 16, color: TokenColors.textTertiary),
          ],
        ),
      ),
    );
  }

  static IconData _platformIcon(String platform) {
    switch (platform.toLowerCase()) {
      case 'alipay': return Icons.account_balance_wallet;
      case 'wechat': return Icons.chat_bubble_outline;
      case 'investment': return Icons.trending_up;
      case 'bank': return Icons.account_balance;
      default: return Icons.account_balance;
    }
  }

  static Color _platformColor(String platform) {
    switch (platform.toLowerCase()) {
      case 'alipay': return const Color(0xFF1677FF);
      case 'wechat': return const Color(0xFF07C160);
      case 'investment': return const Color(0xFFF5A623);
      case 'bank': return TokenColors.chartBlue;
      default: return TokenColors.chartBlue;
    }
  }

  static String _inferPlatform(String path) {
    final lower = path.toLowerCase();
    if (lower.contains('alipay') || lower.contains('支付宝')) return 'Alipay';
    if (lower.contains('wechat') || lower.contains('微信')) return 'WeChat';
    if (lower.contains('invest') || lower.contains('stock') || lower.contains('fund')) return 'Investment';
    if (lower.contains('bank')) return 'Bank';
    return 'Bank';
  }

  static double _parseDouble(dynamic value) {
    if (value == null) return 0.0;
    if (value is num) return value.toDouble();
    if (value is String) return double.tryParse(value) ?? 0.0;
    return 0.0;
  }

  static String _formatAmount(double value) {
    final isNegative = value < 0;
    final absValue = value.abs();
    final parts = absValue.toStringAsFixed(2).split('.');
    final intPart = parts[0];
    final decPart = parts[1];
    final buffer = StringBuffer();
    for (int i = 0; i < intPart.length; i++) {
      if (i > 0 && (intPart.length - i) % 3 == 0) buffer.write(',');
      buffer.write(intPart[i]);
    }
    return '${isNegative ? '-' : ''}${buffer.toString()}.$decPart';
  }
}

class AccountItem {
  final String name;
  final String displayName;
  final double balance;
  final String currency;
  final String platform;
  final String institutionName;
  final String accountId;

  const AccountItem({
    required this.name,
    required this.displayName,
    required this.balance,
    this.currency = 'CNY',
    this.platform = '',
    this.institutionName = '',
    this.accountId = '',
  });
}

class AccountGroup {
  final String institutionName;
  final List<AccountItem> accounts;
  final double totalBalance;

  const AccountGroup({
    required this.institutionName,
    required this.accounts,
    required this.totalBalance,
  });
}
