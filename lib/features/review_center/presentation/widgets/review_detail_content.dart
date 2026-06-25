import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/services/analytics_service.dart';
import '../../../../core/services/analytics_events.dart';
import '../../../../core/utils/logger.dart';
import '../../data/repositories/review_center_repository.dart';
import '../../domain/entities/decision_option.dart';
import '../../domain/entities/pending_transaction.dart';
import '../../domain/models/confidence_level.dart';
import '../signals/review_center_signal.dart';
import 'decision_button_group.dart';

/// ReviewDetailContent business component (.pen POCuA).
///
/// Decision-style review detail: a type header with a confidence badge,
/// read-only transaction info, match-reason chips, and a decision button row.
/// Submitting a decision calls `POST /bean/reviews/:id/resolve` (not the old
/// field-edit PUT, which 404'd) and pops back to refresh the list.
class ReviewDetailContent extends HookWidget {
  const ReviewDetailContent({super.key, required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final tokens = ThemeTokens.of(context);

    final isLoading = useState(true);
    final submittingOption = useState<DecisionOption?>(null);
    final error = useState<String?>(null);
    final transaction = useState<PendingTransaction?>(null);

    // Read-only display controllers (no editing — the decision model has no PUT).
    final accountController = useTextEditingController();
    final merchantController = useTextEditingController();
    final amountController = useTextEditingController();

    Future<void> loadDetail() async {
      if (id.isEmpty) {
        error.value = l10n.reviewCenterInvalidId;
        isLoading.value = false;
        return;
      }
      isLoading.value = true;
      error.value = null;
      try {
        final detail = await ReviewCenterRepository.instance
            .getPendingTransactionDetail(id);
        transaction.value = detail;
        accountController.text = detail.accountName;
        merchantController.text = detail.merchantName;
        amountController.text =
            '${detail.currency} ${NumberFormat('#,##0.00').format(detail.amount)}';
      } catch (e) {
        logger.e('[ReviewDetail] Failed to load: $e');
        error.value = l10n.reviewCenterLoadFailed;
      } finally {
        isLoading.value = false;
      }
    }

    void showToast(String message, {bool isError = false}) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: isError ? TokenColors.error : null,
          duration: const Duration(seconds: 2),
        ),
      );
    }

    Future<void> handleResolve(DecisionOption option) async {
      submittingOption.value = option;
      try {
        await ReviewCenterRepository.instance.resolveReview(
          id,
          action: option.value,
        );
        AnalyticsService().trackReviewCenter(
          eventType: option.recommended
              ? AnalyticsEvents.reviewTransactionApproved
              : AnalyticsEvents.reviewTransactionRejected,
          transactionId: id,
          confidenceLevel: transaction.value?.confidenceLevel.name,
        );
        // Count refresh is best-effort: a failure must not mask a successful resolve.
        try {
          await fetchPendingCount();
        } catch (e) {
          logger.w('[ReviewDetail] fetchPendingCount failed (non-fatal): $e');
        }
        if (!context.mounted) return;
        showToast(l10n.reviewCenterResolved);
        context.pop(true);
      } catch (e) {
        logger.e('[ReviewDetail] Failed to resolve: $e');
        if (context.mounted) {
          showToast(l10n.reviewCenterResolveFailed, isError: true);
        }
      } finally {
        submittingOption.value = null;
      }
    }

    useEffect(() {
      loadDetail();
      return null;
    }, [id]);

    if (isLoading.value) {
      return const Center(child: CircularProgressIndicator());
    }

    if (error.value != null || transaction.value == null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: TokenColors.error),
            const SizedBox(height: TokenSpacing.xl),
            Text(error.value ?? l10n.loadFailed),
            const SizedBox(height: TokenSpacing.xl),
            ButtonPrimary(label: l10n.retry, onPressed: loadDetail),
          ],
        ),
      );
    }

    final tx = transaction.value!;
    final hasConfidence = tx.confidenceLevel != ConfidenceLevel.low ||
        tx.confidenceScore > 0;
    final reasons = tx.matchReasons;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(TokenSpacing.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // headerSection (.pen LuzRB) — type icon + title + confidence
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: TokenColors.accentBg,
                  borderRadius: TokenRadius.borderMd,
                ),
                alignment: Alignment.center,
                child: Icon(
                  reviewTypeIcon(tx.reviewType),
                  size: 22,
                  color: TokenColors.textAccent,
                ),
              ),
              const SizedBox(width: TokenSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      reviewTypeTitle(l10n, tx.reviewType),
                      style: TokenTypography.h3(
                        fontWeight: FontWeight.w700,
                        color: tokens.textPrimary,
                      ),
                    ),
                    if (hasConfidence) ...[
                      const SizedBox(height: TokenSpacing.xs),
                      Row(
                        children: [
                          _ConfidenceBadge(level: tx.confidenceLevel),
                          const SizedBox(width: TokenSpacing.sm),
                          Flexible(
                            child: Text(
                              l10n.reviewCenterConfidenceScore(
                                (ConfidenceLevel.normalize(tx.confidenceScore) *
                                        100)
                                    .round(),
                              ),
                              style: TokenTypography.micro(
                                color: tokens.textTertiary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: TokenSpacing.xl),
          // txHeader (.pen naxtr) — "Transaction Info"
          Padding(
            padding: const EdgeInsets.symmetric(vertical: TokenSpacing.xs),
            child: Text(
              l10n.reviewCenterTxInfo,
              style: TokenTypography.h4(
                fontWeight: FontWeight.w600,
                color: tokens.textPrimary,
              ),
            ),
          ),
          const SizedBox(height: TokenSpacing.sm),
          // acctField / payeeField / amtField — read-only
          InputField(
            controller: accountController,
            readOnly: true,
            label: l10n.reviewCenterAccount,
          ),
          const SizedBox(height: TokenSpacing.lg),
          InputField(
            controller: merchantController,
            readOnly: true,
            label: l10n.reviewCenterMerchant,
          ),
          const SizedBox(height: TokenSpacing.lg),
          InputField(
            controller: amountController,
            readOnly: true,
            label: l10n.reviewCenterAmount,
          ),
          // reasonHeader + reasonsRow (.pen X6Z1W + s0og6F) — match reasons
          if (reasons.isNotEmpty) ...[
            const SizedBox(height: TokenSpacing.xl),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: TokenSpacing.xs),
              child: Text(
                l10n.reviewCenterReasonHeader,
                style: TokenTypography.h4(
                  fontWeight: FontWeight.w600,
                  color: tokens.textPrimary,
                ),
              ),
            ),
            const SizedBox(height: TokenSpacing.sm),
            Wrap(
              spacing: TokenSpacing.sm,
              runSpacing: TokenSpacing.sm,
              children: [
                for (final reason in reasons)
                  Tag(
                    label: reason,
                    backgroundColor: TokenColors.neutral100,
                  ),
              ],
            ),
          ],
          // decisionHeader + decisionGroup (.pen IgkLV + s8I9l)
          const SizedBox(height: TokenSpacing.xl),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: TokenSpacing.xs),
            child: Text(
              l10n.reviewCenterDecisionHeader,
              style: TokenTypography.h4(
                fontWeight: FontWeight.w600,
                color: tokens.textPrimary,
              ),
            ),
          ),
          const SizedBox(height: TokenSpacing.md),
          DecisionButtonGroup(
            options: tx.decisionOptions,
            submittingOption: submittingOption.value,
            onDecide: handleResolve,
          ),
        ],
      ),
    );
  }
}

/// ConfidenceBadge (.pen PMjgX) — pill with level-colored icon + label.
/// Inline here because it is currently single-use in the detail header.
class _ConfidenceBadge extends StatelessWidget {
  const _ConfidenceBadge({required this.level});

  final ConfidenceLevel level;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final (color, bg, label) = switch (level) {
      ConfidenceLevel.high => (
          TokenColors.success,
          TokenColors.successBg,
          l10n.reviewCenterHigh,
        ),
      ConfidenceLevel.medium => (
          TokenColors.info,
          TokenColors.infoBg,
          l10n.reviewCenterMedium,
        ),
      ConfidenceLevel.low => (
          TokenColors.neutral700,
          TokenColors.neutral100,
          l10n.reviewCenterLow,
        ),
    };
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: TokenSpacing.md,
        vertical: TokenSpacing.xs,
      ),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: TokenRadius.borderPill,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.check_circle, size: 14, color: color),
          const SizedBox(width: TokenSpacing.sm),
          Text(
            label,
            style: TokenTypography.caption(
              fontWeight: FontWeight.w600,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}

/// Review type wire value → localized title.
String reviewTypeTitle(AppLocalizations l10n, String? type) {
  switch (type) {
    case 'DUPLICATE':
      return l10n.reviewTypeDuplicate;
    case 'RULE_MATCH':
      return l10n.reviewTypeRuleMatch;
    case 'PAYEE_MATCH':
      return l10n.reviewTypePayeeMatch;
    case 'ACCOUNT_VALIDATION':
      return l10n.reviewTypeAccountValidation;
    case 'PIPELINE_ERROR':
      return l10n.reviewTypePipelineError;
    default:
      return l10n.reviewCenterDetailTitle;
  }
}

/// Review type wire value → leading icon (Material, .pen uses lucide).
IconData reviewTypeIcon(String? type) {
  switch (type) {
    case 'DUPLICATE':
      return Icons.copy_outlined;
    case 'RULE_MATCH':
      return Icons.auto_awesome_outlined;
    case 'PAYEE_MATCH':
      return Icons.storefront_outlined;
    case 'ACCOUNT_VALIDATION':
      return Icons.account_balance_outlined;
    case 'PIPELINE_ERROR':
      return Icons.error_outline;
    default:
      return Icons.fact_check_outlined;
  }
}
