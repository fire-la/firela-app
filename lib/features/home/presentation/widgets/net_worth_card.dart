import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/components/components.dart';
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

    return Watch((context) {
      final trend = homeData.netWorthTrend;
      final isLoading = homeData.isLoading;
      final formattedValue = homeData.netWorthFormatted;
      final trendFormatted = homeData.trendFormatted;

      if (isLoading) {
        return const DesignCard(
          padding: EdgeInsets.all(24),
          child: Center(child: LoadingIndicator(size: 32)),
        );
      }

      final isPositiveTrend = trend >= 0;

      return Tappable(
        onTap: onTap,
        semanticLabel: '${l10n.homeNetWorth}, ¥$formattedValue, $trendFormatted',
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(TokenSpacing.xl),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                TokenColors.accentCream,
                TokenColors.primary.withValues(alpha: 0.8),
              ],
            ),
            borderRadius: TokenRadius.borderLg,
            boxShadow: TokenShadows.cardList,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    l10n.homeNetWorth,
                    style: TokenTypography.caption(
                      color: TokenColors.white.withValues(alpha: 0.7),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.sm, vertical: TokenSpacing.xs),
                    decoration: BoxDecoration(
                      color: (isPositiveTrend ? TokenColors.success : TokenColors.error).withValues(alpha: 0.2),
                      borderRadius: TokenRadius.borderMd,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          isPositiveTrend ? Icons.trending_up : Icons.trending_down,
                          size: 14,
                          color: isPositiveTrend ? TokenColors.success : TokenColors.error,
                        ),
                        const SizedBox(width: TokenSpacing.xs),
                        Text(
                          trendFormatted,
                          style: TokenTypography.caption(
                            fontWeight: FontWeight.bold,
                            color: isPositiveTrend ? TokenColors.success : TokenColors.error,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: TokenSpacing.sm),
              Text(
                '¥$formattedValue',
                style: TokenTypography.h2(
                  fontWeight: FontWeight.bold,
                  color: TokenColors.textPrimary,
                ),
              ),
              const SizedBox(height: TokenSpacing.xs),
              Text(
                l10n.homeThisMonth,
                style: TokenTypography.caption(
                  color: TokenColors.white.withValues(alpha: 0.6),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
