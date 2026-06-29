import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/network/auth_manager.dart';
import '../../../../core/services/ign_api_service.dart';
import '../../../../core/utils/logger.dart';
import '../../../../shared/widgets/section_header.dart';
import 'assets_tabs_page.dart';

class AccountsDetailPage extends HookWidget {
  const AccountsDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);
    final accounts = useState<List<AccountData>>([]);
    final totalAssets = useState('0.00');
    final totalLiabilities = useState('0.00');
    final netWorth = useState('0.00');
    final error = useState<String?>(null);

    Future<void> fetchData() async {
      if (!AuthManager.instance.isLoggedIn) return;
      isLoading.value = true;
      error.value = null;

      try {
        final results = await Future.wait([
          IgnApiService.instance.getNetWorth(),
          IgnApiService.instance.getDashboardAccounts(),
        ]);

        final netWorthData = results[0];
        final dashboardData = results[1];

        // Parse net worth
        if (netWorthData.containsKey('netWorth')) {
          final nw = _parseDouble(netWorthData['netWorth']);
          netWorth.value = _formatCurrency(nw);
          final liab = _parseDouble(netWorthData['liabilities'] ?? '0');
          totalLiabilities.value = _formatCurrency(liab);
          totalAssets.value = _formatCurrency(nw + liab.abs());
        }

        // Parse accounts
        final groups = dashboardData['groups'] as List<dynamic>? ?? [];
        final accountList = <AccountData>[];
        for (final group in groups) {
          final platform = group['platform'] as String? ?? '';
          final accts = group['accounts'] as List<dynamic>? ?? [];
          for (final acct in accts) {
            final fullName = acct['name'] as String? ?? '';
            final displayName = fullName.contains(':')
                ? fullName.split(':').last
                : fullName;
            accountList.add(AccountData(
              name: fullName,
              displayName: displayName,
              balance: _parseDouble(acct['balance']),
              currency: acct['currency'] as String? ?? 'CNY',
              platform: platform,
            ));
          }
        }
        accounts.value = accountList;
      } catch (e) {
        logger.e('[AccountsDetail] Failed to load: $e');
        error.value = '加载失败，请重试';
      } finally {
        isLoading.value = false;
      }
    }

    useEffect(() {
      fetchData();
      return null;
    }, []);

    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: false,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
              child: TopBar(title: '账户'),
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: fetchData,
                child: isLoading.value && accounts.value.isEmpty
                    ? const Center(child: CircularProgressIndicator())
                    : error.value != null && accounts.value.isEmpty
                        ? _buildError(error.value!, fetchData)
                        : _buildContent(context, accounts.value, totalAssets.value, totalLiabilities.value, netWorth.value),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildError(String message, VoidCallback onRetry) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 48, color: TokenColors.error),
          const SizedBox(height: TokenSpacing.xl),
          Text(message, style: TokenTypography.body(color: TokenColors.textTertiary)),
          const SizedBox(height: TokenSpacing.xl),
          SizedBox(width: 120, child: ButtonPrimary(label: '重试', onPressed: onRetry)),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context, List<AccountData> accounts, String totalAssets, String totalLiabilities, String netWorth) {
    // Group by platform
    final grouped = <String, List<AccountData>>{};
    for (final a in accounts) {
      final key = a.platform.isNotEmpty ? a.platform : 'other';
      grouped.putIfAbsent(key, () => []).add(a);
    }

    return ListView(
      padding: const EdgeInsets.all(TokenSpacing.xl),
      children: [
        // Summary card
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(TokenSpacing.xl),
          decoration: BoxDecoration(
            color: TokenColors.bgCard,
            borderRadius: TokenRadius.borderLg,
            border: Border.all(color: TokenColors.borderCard, width: 0.5),
            boxShadow: [
              const BoxShadow(color: TokenColors.neutral200, blurRadius: 18, offset: Offset(0, 2), spreadRadius: 2),
            ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('总资产', style: TokenTypography.caption(color: TokenColors.textSecondary)),
                  Text('总负债', style: TokenTypography.caption(color: TokenColors.textSecondary)),
                ],
              ),
              const SizedBox(height: TokenSpacing.xs),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(totalAssets, style: TokenTypography.h3(fontWeight: FontWeight.w700, color: TokenColors.textPrimary)),
                  Text(totalLiabilities == '0.00' ? '0.00' : '-$totalLiabilities', style: TokenTypography.h3(fontWeight: FontWeight.w700, color: TokenColors.textPrimary)),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: TokenSpacing.xl),

        // Account groups
        for (final entry in grouped.entries) ...[
          SectionHeader(
            title: _platformLabel(entry.key),
          ),
          const SizedBox(height: TokenSpacing.lg),
          for (final account in entry.value)
            Padding(
              padding: const EdgeInsets.only(bottom: TokenSpacing.lg),
              child: _buildAccountCard(context, account),
            ),
          const SizedBox(height: TokenSpacing.lg),
        ],

        if (accounts.isEmpty)
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: TokenSpacing.xxl * 2),
              child: Column(
                children: [
                  const Icon(Icons.account_balance_wallet_outlined, size: 48, color: TokenColors.textTertiary),
                  const SizedBox(height: TokenSpacing.lg),
                  Text('暂无账户数据', style: TokenTypography.body(color: TokenColors.textTertiary)),
                ],
              ),
            ),
          ),
      ],
    );
  }

  String _platformLabel(String platform) {
    switch (platform.toLowerCase()) {
      case 'bank': return '银行账户';
      case 'alipay': return '支付宝';
      case 'wechat': return '微信';
      case 'investment': return '投资账户';
      default: return '其他账户';
    }
  }

  IconData _platformIcon(String platform) {
    switch (platform.toLowerCase()) {
      case 'alipay': return Icons.account_balance_wallet;
      case 'wechat': return Icons.chat_bubble_outline;
      case 'bank': return Icons.account_balance;
      case 'investment': return Icons.trending_up;
      default: return Icons.account_balance;
    }
  }

  Color _platformColor(String platform) {
    switch (platform.toLowerCase()) {
      case 'alipay': return TokenColors.chartBlue;
      case 'wechat': return TokenColors.chartGreen;
      case 'bank': return TokenColors.chartAmber;
      default: return TokenColors.chartGrey;
    }
  }

  Widget _buildAccountCard(BuildContext context, AccountData account) {
    return Container(
      padding: const EdgeInsets.all(TokenSpacing.xl),
      decoration: BoxDecoration(
        color: TokenColors.bgCard,
        borderRadius: TokenRadius.borderLg,
        border: Border.all(color: TokenColors.borderCard, width: 0.5),
        boxShadow: [
          const BoxShadow(color: TokenColors.neutral200, blurRadius: 18, offset: Offset(0, 2), spreadRadius: 2),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: _platformColor(account.platform).withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(10),
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
                  style: TokenTypography.body(fontWeight: FontWeight.w500, color: TokenColors.textPrimary),
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
                account.balance.abs().toStringAsFixed(2),
                style: TokenTypography.body(fontWeight: FontWeight.w700, color: TokenColors.textPrimary),
              ),
              Text(
                account.currency,
                style: TokenTypography.micro(color: TokenColors.textTertiary),
              ),
            ],
          ),
        ],
      ),
    );
  }

  static double _parseDouble(dynamic value) {
    if (value == null) return 0.0;
    if (value is num) return value.toDouble();
    if (value is String) return double.tryParse(value) ?? 0.0;
    return 0.0;
  }

  static String _formatCurrency(double value) {
    if (value == 0) return '0.00';
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
