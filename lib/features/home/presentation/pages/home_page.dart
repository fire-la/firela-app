import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/router/route_names.dart';
import '../widgets/net_worth_card.dart';
import '../widgets/pending_reviews_card.dart';
import '../widgets/fire_progress_card.dart';
import '../widgets/quick_actions_section.dart';
import '../widgets/feature_shortcuts_section.dart';
import '../widgets/savings_rate_indicator.dart';
import '../widgets/spending_insights_card.dart';
import '../widgets/recommendations_section.dart';
import '../providers/use_home_data.dart';

/// Home dashboard page with summary widgets
class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final homeData = useHomeData();

    Future<void> onRefresh() async {
      await homeData.refresh?.call();
    }

    return Scaffold(
      backgroundColor: TokenColors.bgPage,
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl, vertical: TokenSpacing.lg),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with greeting
              _buildHeader(context, l10n, homeData),
              const SizedBox(height: TokenSpacing.xxl),

              // Net Worth Card
              NetWorthCard(
                homeData: homeData,
                onTap: () => context.go(RouteNames.accounts),
              ),
              const SizedBox(height: TokenSpacing.xl),

              // Quick Actions Section
                    const QuickActionsSection(),
                    const SizedBox(height: TokenSpacing.xl),

                    // Pending Reviews and FIRE Progress Cards (side by side)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: PendingReviewsCard(
                            onTap: () => context.go(RouteNames.reviewCenter),
                          ),
                        ),
                        const SizedBox(width: TokenSpacing.lg),
                        Expanded(
                          child: FireProgressCard(
                            onTap: () {
                              // Navigate to FIRE journey (first tab in main page)
                              context.go(RouteNames.home);
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: TokenSpacing.xl),

                    // Feature Shortcuts Section
                    const FeatureShortcutsSection(),
                    const SizedBox(height: TokenSpacing.xl),

                    // Insights Section - Savings Rate and Spending Insights
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: SavingsRateIndicator(),
                        ),
                        SizedBox(width: TokenSpacing.lg),
                        Expanded(
                          child: SpendingInsightsCard(),
                        ),
                      ],
                    ),
                    const SizedBox(height: TokenSpacing.xl),

                    // Recommendations Section
                    const RecommendationsSection(),
                    const SizedBox(height: TokenSpacing.xl),

                    // Add padding at bottom for scroll
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
    );
  }

  Widget _buildHeader(BuildContext context, AppLocalizations l10n, HomeDataResult homeData) {
    final hour = DateTime.now().hour;
    String greeting;
    if (hour < 12) {
      greeting = l10n.homeGreetingMorning;
    } else if (hour < 18) {
      greeting = l10n.homeGreetingAfternoon;
    } else {
      greeting = l10n.homeGreetingEvening;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          greeting,
          style: TokenTypography.h2(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: TokenSpacing.xs),
        Watch((context) {
          final lastSync = homeData.lastSyncTime;
          if (lastSync != null) {
            final diff = DateTime.now().difference(lastSync);
            String syncText;
            if (diff.inMinutes < 1) {
              syncText = l10n.homeSyncedJustNow;
            } else if (diff.inMinutes < 60) {
              syncText = l10n.homeSyncedMinutes(diff.inMinutes);
            } else {
              syncText = l10n.homeSyncedHours(diff.inHours);
            }
            return Text(
              syncText,
              style: TokenTypography.caption(
                color: TokenColors.textTertiary,
              ),
            );
          }
          return const SizedBox.shrink();
        }),
      ],
    );
  }
}
