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
import '../../domain/entities/similar_account.dart';
import '../../domain/models/confidence_level.dart';
import '../signals/review_center_signal.dart';
import 'account_correction_card.dart';
import 'confidence_badge.dart';
import 'decision_button_group.dart';
import 'duplicate_compare_card.dart';
import 'review_helpers.dart';
import 'rule_suggestion_card.dart';

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

    // Selected candidate account for ACCOUNT_VALIDATION (CHOOSE_OTHER payload).
    final selectedAccount = useState<String?>(null);

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
        // Pre-select the suggested account for ACCOUNT_VALIDATION — but only
        // if it is actually in the candidate list (the resolve endpoint
        // requires chosenAccount to come from similarAccounts, ADR-0027).
        final av = detail.accountValidation;
        final candidates = av?.similarAccounts ?? const <SimilarAccount>[];
        final suggested = av?.suggestedAccount;
        selectedAccount.value =
            (suggested != null && candidates.any((c) => c.name == suggested))
                ? suggested
                : (candidates.isNotEmpty ? candidates.first.name : null);
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
      // Only ACCOUNT_VALIDATION decisions consume a chosen account from the
      // picker. Other types' ACCEPT_AND_LEARN (RULE_MATCH / PAYEE_MATCH) learn
      // patterns/aliases, not accounts — they take no `data` payload.
      final needsAccount =
          transaction.value?.reviewType == 'ACCOUNT_VALIDATION' &&
              (option.value == 'CHOOSE_OTHER' ||
                  option.value == 'ACCEPT_AND_LEARN');
      Map<String, dynamic>? data;
      if (needsAccount) {
        final chosen = selectedAccount.value;
        if (chosen == null || chosen.isEmpty) {
          showToast(l10n.reviewCenterNoCandidates, isError: true);
          return;
        }
        data = {'chosenAccount': chosen};
      }

      submittingOption.value = option;
      try {
        await ReviewCenterRepository.instance.resolveReview(
          id,
          action: option.value,
          data: data,
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
                          ConfidenceBadge(
                            kind: resolveReviewBadgeKind(
                              tx.reviewType,
                              tx.confidenceLevel,
                            ),
                          ),
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
          // accountCorrectionCard (.pen LW39J) — ACCOUNT_VALIDATION type card.
          if (tx.reviewType == 'ACCOUNT_VALIDATION' &&
              tx.accountValidation != null) ...[
            const SizedBox(height: TokenSpacing.xl),
            AccountCorrectionCard(
              invalidAccount: tx.accountValidation!.invalidAccount,
              suggestedAccount: tx.accountValidation!.suggestedAccount,
              candidates: tx.accountValidation!.similarAccounts,
              selectedAccount: selectedAccount.value,
              onSelect: (name) => selectedAccount.value = name,
            ),
          ],
          // duplicateCompareCard (.pen umtLO) — DUPLICATE type card.
          if (tx.reviewType == 'DUPLICATE' && tx.duplicateData != null) ...[
            const SizedBox(height: TokenSpacing.xl),
            DuplicateCompareCard(
              source: tx.duplicateData!.sourceTransaction,
              target: tx.duplicateData!.targetTransaction,
              similarityPct:
                  (ConfidenceLevel.normalize(tx.confidenceScore) * 100).round(),
            ),
          ],
          // ruleSuggestionCard (.pen yiJrC) — RULE_MATCH type card.
          if (tx.reviewType == 'RULE_MATCH' && tx.ruleMatchData != null) ...[
            const SizedBox(height: TokenSpacing.xl),
            RuleSuggestionCard(
              ruleName: tx.ruleMatchData!.matchedRule.name,
              destination: tx.ruleMatchData!.destination,
              matchPct:
                  (ConfidenceLevel.normalize(tx.confidenceScore) * 100).round(),
            ),
          ],
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

/// ConfidenceBadge (.pen PMjgX) lives in confidence_badge.dart and is shared
/// with the summary row; do not re-inline it here.
/// reviewTypeIcon / reviewTypeTitle live in review_helpers.dart (shared with
/// the summary row).
