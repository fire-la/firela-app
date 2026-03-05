import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../../../../shared/widgets/loading_indicator.dart';
import '../providers/use_home_data.dart';

/// Net worth summary card displaying net worth and trend indicator
class NetWorthCard extends HookWidget {
  const NetWorthCard({
    super.key,
    required this.homeData,
    this.onTap,
  });

  final HomeDataResult homeData;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Watch((context) {
      final trend = homeData.netWorthTrend;
      final isLoading = homeData.isLoading;
      final formattedValue = homeData.netWorthFormatted;
      final trendFormatted = homeData.trendFormatted;

      if (isLoading) {
        return const Card(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Center(child: LoadingIndicator(size: 32)),
          ),
        );
      }

      final isPositiveTrend = trend >= 0;

      return GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                theme.colorScheme.primaryContainer,
                theme.colorScheme.primary.withValues(alpha: 0.8),
              ],
            ),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 8,
                offset: const Offset(2, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    l10n.homeNetWorth,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onPrimaryContainer.withValues(alpha: 0.7),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: (isPositiveTrend ? Colors.green : Colors.red).withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          isPositiveTrend ? Icons.trending_up : Icons.trending_down,
                          size: 14,
                          color: isPositiveTrend ? Colors.green : Colors.red,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          trendFormatted,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: isPositiveTrend ? Colors.green : Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                '¥$formattedValue',
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onPrimaryContainer,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                l10n.homeThisMonth,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onPrimaryContainer.withValues(alpha: 0.6),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
