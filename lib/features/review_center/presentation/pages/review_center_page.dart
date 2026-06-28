import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../../../../core/components/components.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../shared/widgets/section_header.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/services/analytics_events.dart';
import '../../../../core/services/analytics_service.dart';
import '../../domain/entities/pending_transaction.dart';
import '../../domain/models/confidence_level.dart';
import '../../domain/models/review_type.dart';
import '../providers/use_review_center.dart';
import '../signals/review_center_signal.dart';
import '../widgets/confidence_badge.dart';
import '../widgets/review_helpers.dart';
import '../widgets/review_summary_row.dart';
import '../widgets/review_type_chip.dart';

/// Review Center list page (.pen o2l3OK).
///
/// Unified type-filter chips + a single ReviewSummaryRow list, a conditional
/// batch bar, and a per-item undo bar. Heavy decisions go via tap to the detail
/// page; only high-confidence light items get a single inline action
/// (ADR-0002). All copy is l10n; no Material raw controls.
class ReviewCenterPage extends HookWidget {
  const ReviewCenterPage({super.key});

  /// Type filter order (null = all).
  static const List<ReviewType?> _types = [
    null,
    ReviewType.duplicate,
    ReviewType.ruleMatch,
    ReviewType.payeeMatch,
    ReviewType.accountValidation,
    ReviewType.pipelineError,
  ];

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final tokens = ThemeTokens.of(context);
    final state = useReviewCenter();
    final scrollController = useScrollController();
    // Horizontal scroll controller for the type-chip strip (.pen vrZAl).
    // Used to translate a vertical mouse wheel into horizontal scroll on web
    // (see the Listener wrapping the strip below).
    final chipScrollController = useScrollController();
    // Subscribe to stats so chips/header rebuild on count changes.
    final stats = pendingCountByTypeSignal.watch(context);

    // Infinite scroll → loadMore near the bottom.
    useEffect(() {
      void onScroll() {
        if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent - 200) {
          state.loadMore();
        }
      }

      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController, state]);

    void showToast(String msg, {bool isError = false}) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(msg),
          backgroundColor: isError ? TokenColors.error : null,
          duration: const Duration(seconds: 2),
        ),
      );
    }

    // Inline single-action config (ADR-0002: confidence >= 0.85, light type).
    ({bool show, String label, String action}) inlineConfig(
      PendingTransaction tx,
    ) {
      final t = tx.reviewType;
      final canInline = ConfidenceLevel.normalize(tx.confidenceScore) >= 0.85 &&
          (t == ReviewType.duplicate ||
              t == ReviewType.ruleMatch ||
              t == ReviewType.payeeMatch);
      if (!canInline) return (show: false, label: '', action: '');
      return switch (t) {
        ReviewType.duplicate => (
            show: true,
            label: l10n.reviewActionSkip,
            action: ReviewAction.ignoreNew.wireValue,
          ),
        ReviewType.ruleMatch => (
            show: true,
            label: l10n.reviewInlineApply,
            action: ReviewAction.accept.wireValue,
          ),
        ReviewType.payeeMatch => (
            show: true,
            label: l10n.reviewInlineSelect,
            action: ReviewAction.accept.wireValue,
          ),
        _ => (show: false, label: '', action: ''),
      };
    }

    Future<void> handleInline(PendingTransaction tx, String action) async {
      // IGN-286: single inline decision chosen
      await AnalyticsService().capture(
        AnalyticsEvents.duplicateDecisionChosen,
        properties: {
          AnalyticsProps.decisionAction: action,
          AnalyticsProps.decisionSource: 'single',
          if (tx.reviewType != null)
            AnalyticsProps.reviewType: tx.reviewType!.wireValue,
        },
      );
      final ok = await state.resolveInline(tx.id, action: action);
      if (!context.mounted) return;
      showToast(ok ? l10n.reviewCenterResolved : l10n.reviewCenterResolveFailed,
          isError: !ok);
    }

    Future<void> navigateToDetail(String id) async {
      await context.push('/review-center/$id');
      state.loadTransactions(refresh: true);
    }

    // Batch defaults are hardcoded safe actions — NEVER read `recommended`
    // (IGN-285: it statically points to a destructive action).
    String defaultBatchAction(ReviewType? type) => switch (type) {
          ReviewType.duplicate => ReviewAction.ignoreNew.wireValue,
          ReviewType.ruleMatch ||
          ReviewType.payeeMatch ||
          ReviewType.accountValidation =>
            ReviewAction.accept.wireValue,
          ReviewType.pipelineError => ReviewAction.fix.wireValue,
          null => ReviewAction.ignoreNew.wireValue,
        };
    String batchActionLabel(String action) =>
        switch (ReviewAction.fromWire(action)) {
          ReviewAction.ignoreNew => l10n.reviewActionSkip,
          ReviewAction.upgradeReplace => l10n.reviewActionReplace,
          ReviewAction.accept => l10n.reviewInlineApply,
          ReviewAction.fix => l10n.reviewActionFix,
          _ => action,
        };

    Future<void> applyBatch(String action) async {
      // IGN-287 item D: batch-resolve is rate-limited (5/min, max 50). The
      // provider chunks at 50, so up to 250 items (= 5 chunks) fit within the
      // window; beyond that the burst exceeds the limit. Cap and ask the user
      // to resolve some individually first.
      if (state.transactions.length > 250) {
        showToast(l10n.reviewBatchTooMany, isError: true);
        return;
      }
      // IGN-286: batch decision chosen + batch-size distribution
      await AnalyticsService().capture(
        AnalyticsEvents.duplicateDecisionChosen,
        properties: {
          AnalyticsProps.decisionAction: action,
          AnalyticsProps.decisionSource: 'batch',
          if (state.currentType != null)
            AnalyticsProps.reviewType: state.currentType!.wireValue,
        },
      );
      await AnalyticsService().capture(
        AnalyticsEvents.reviewBatchSize,
        properties: {
          AnalyticsProps.itemCount: state.transactions.length,
          if (state.currentType != null)
            AnalyticsProps.reviewType: state.currentType!.wireValue,
        },
      );
      final r = await state.applyBatch(action);
      if (!context.mounted) return;
      if (r.failedCount > 0) {
        showToast(l10n.reviewBatchPartial(r.successCount, r.failedCount),
            isError: true);
      } else {
        showToast(l10n.reviewBatchApplied(r.successCount));
      }
    }

    Future<void> onBatchTap() async {
      final type = state.currentType;
      if (type == ReviewType.duplicate) {
        final chosen = await showModalBottomSheet<String>(
          context: context,
          backgroundColor: tokens.bgCard,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(TokenRadius.lg),
            ),
          ),
          builder: (ctx) => SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                TokenSpacing.xl,
                TokenSpacing.xl,
                TokenSpacing.xl,
                TokenSpacing.lg,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    l10n.reviewBatchTitle,
                    style: TokenTypography.h3(
                      fontWeight: FontWeight.w600,
                      color: tokens.textPrimary,
                    ),
                  ),
                  const SizedBox(height: TokenSpacing.md),
                  _SheetOption(
                    label: l10n.reviewActionSkip,
                    hint: l10n.reviewActionSkipHint,
                    onTap: () =>
                        Navigator.pop(ctx, ReviewAction.ignoreNew.wireValue),
                  ),
                  _SheetOption(
                    label: l10n.reviewActionReplace,
                    hint: l10n.reviewActionReplaceHint,
                    onTap: () => Navigator.pop(
                        ctx, ReviewAction.upgradeReplace.wireValue),
                  ),
                ],
              ),
            ),
          ),
        );
        if (chosen != null) {
          // IGN-286: user overrode the safe default (IGNORE_NEW →
          // UPGRADE_REPLACE) in the batch sheet. No subset selection exists,
          // so this captures the override-intent signal, not a literal mixed batch.
          if (chosen != defaultBatchAction(ReviewType.duplicate)) {
            await AnalyticsService().capture(
              AnalyticsEvents.duplicateBatchMixedIntent,
              properties: {
                AnalyticsProps.decisionAction: chosen,
                AnalyticsProps.reviewType: ReviewType.duplicate.wireValue,
              },
            );
          }
          await applyBatch(chosen);
        }
      } else {
        await applyBatch(defaultBatchAction(type));
      }
    }

    Future<void> handleUndo() async {
      // IGN-286: per-item undo after a batch
      await AnalyticsService().capture(AnalyticsEvents.duplicateUndoPerItem);
      final ok = await state.undoLastResolved();
      if (!context.mounted) return;
      if (!ok) showToast(l10n.reviewUndoFailed, isError: true);
    }

    Widget rowWidget(PendingTransaction tx) {
      final inline = inlineConfig(tx);
      return ReviewSummaryRow(
        transaction: tx,
        badgeKind: resolveReviewBadgeKind(tx.reviewType, tx.confidenceLevel),
        onTap: () => navigateToDetail(tx.id),
        showInline: inline.show,
        inlineLabel: inline.show ? inline.label : null,
        onInline: inline.show ? () => handleInline(tx, inline.action) : null,
      );
    }

    final total = stats['total'] ?? 0;
    final showBatchBar =
        state.currentType != null && state.transactions.isNotEmpty;

    return Scaffold(
      backgroundColor: tokens.bgPage,
      body: SafeArea(
        child: Column(
          children: [
            TopBar(title: l10n.reviewCenterTitle),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () => state.loadTransactions(refresh: true),
                child: ListView(
                  controller: scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.fromLTRB(
                    TokenSpacing.xl,
                    0,
                    TokenSpacing.xl,
                    TokenSpacing.xl,
                  ),
                  children: [
                    // statsRow (.pen vrZAl): type chips.
                    // Translate a vertical mouse wheel into horizontal scroll:
                    // a horizontal Scrollable ignores a vertical wheel on web,
                    // and the parent ListView would otherwise steal the event
                    // and scroll the page instead (verified). Registering the
                    // signal claims it so the page stays put while the cursor
                    // is over the chips.
                    Listener(
                      onPointerSignal: (event) {
                        if (event is! PointerScrollEvent) return;
                        if (!chipScrollController.hasClients) return;
                        final pos = chipScrollController.position;
                        final target = (pos.pixels + event.scrollDelta.dy)
                            .clamp(pos.minScrollExtent, pos.maxScrollExtent)
                            .toDouble();
                        GestureBinding.instance.pointerSignalResolver.register(
                          event,
                          (_) => chipScrollController.jumpTo(target),
                        );
                      },
                      child: SingleChildScrollView(
                        controller: chipScrollController,
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (final t in _types) ...[
                              ReviewTypeChip(
                                icon: reviewTypeIcon(t),
                                label: reviewTypeChipLabel(l10n, t),
                                count: t == null
                                    ? total
                                    : (stats[t.wireValue] ?? 0),
                                selected: state.currentType == t,
                                onTap: () => state.changeType(t),
                              ),
                              const SizedBox(width: TokenSpacing.sm),
                            ],
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: TokenSpacing.md),
                    // batchBar (.pen mkTn3) — only when a single type is focused
                    if (showBatchBar) ...[
                      _BatchBar(
                        typeLabel: reviewTypeChipLabel(l10n, state.currentType),
                        count: state.transactions.length,
                        actionLabel: batchActionLabel(
                            defaultBatchAction(state.currentType)),
                        applying: state.isBatchApplying,
                        onTap: onBatchTap,
                      ),
                      const SizedBox(height: TokenSpacing.md),
                    ],
                    // SectionHeader (.pen IcPkp) — count label
                    SectionHeader(title: l10n.reviewPendingCount(total)),
                    const SizedBox(height: TokenSpacing.md),
                    // body: error / empty / list
                    if (state.hasError && state.transactions.isEmpty)
                      _StatusView(
                        icon: Icons.error_outline,
                        color: TokenColors.error,
                        message: l10n.reviewCenterError,
                        onRetry: () => state.loadTransactions(refresh: true),
                      )
                    else if (state.transactions.isEmpty && !state.isLoading)
                      _StatusView(
                        icon: Icons.check_circle_outline,
                        color: TokenColors.textAccent,
                        message: l10n.reviewCenterEmpty,
                      )
                    else
                      for (final tx in state.transactions) ...[
                        rowWidget(tx),
                        const SizedBox(height: TokenSpacing.sm),
                      ],
                    if (state.isLoading)
                      const Padding(
                        padding: EdgeInsets.all(TokenSpacing.xl),
                        child: Center(child: CircularProgressIndicator()),
                      ),
                    // resolvedUndo (.pen q8S86h) — per-item undo
                    if (state.resolvedIds.isNotEmpty) ...[
                      const SizedBox(height: TokenSpacing.md),
                      _ResolvedUndoBar(
                        count: state.resolvedIds.length,
                        onUndo: handleUndo,
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Batch bar (.pen mkTn3): count label + apply pill.
class _BatchBar extends StatelessWidget {
  const _BatchBar({
    required this.typeLabel,
    required this.count,
    required this.actionLabel,
    required this.applying,
    required this.onTap,
  });

  final String typeLabel;
  final int count;
  final String actionLabel;
  final bool applying;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final tokens = ThemeTokens.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            l10n.reviewBatchCount(typeLabel, count),
            style: TokenTypography.body(color: tokens.textSecondary),
          ),
        ),
        _PillButton(
          label: l10n.reviewBatchApply(count, actionLabel),
          onPressed: applying ? null : onTap,
          filled: true,
          isLoading: applying,
        ),
      ],
    );
  }
}

/// Resolved/undo bar (.pen q8S86h): check icon + hint + undo pill.
/// Undo is per-item (no batch undo endpoint) — each tap undoes one.
class _ResolvedUndoBar extends StatelessWidget {
  const _ResolvedUndoBar({required this.count, required this.onUndo});

  final int count;
  final VoidCallback onUndo;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final tokens = ThemeTokens.of(context);
    return Container(
      padding: const EdgeInsets.all(TokenSpacing.lg),
      decoration: BoxDecoration(
        color: tokens.bgCard,
        borderRadius: BorderRadius.circular(TokenRadius.md),
      ),
      child: Row(
        children: [
          const Icon(Icons.check_circle, size: 20, color: TokenColors.success),
          const SizedBox(width: TokenSpacing.md),
          Expanded(
            child: Text(
              l10n.reviewResolvedUndoHint(count),
              style: TokenTypography.body(color: tokens.textPrimary),
            ),
          ),
          _PillButton(
            label: l10n.reviewUndo,
            onPressed: onUndo,
            filled: false,
          ),
        ],
      ),
    );
  }
}

/// Fit-content pill button for the batch/undo bars (the base ButtonSmall is
/// fixed 80×32 and won't fit these labels; the design sizes these inline).
///
/// Disabled visual: `onPressed == null && !isLoading` is currently latent — the
/// batch bar couples disabled→isLoading (spinner shows), and the undo bar is
/// always enabled. If a disabled+!loading call site is ever added, mirror
/// ButtonPrimary: wrap the child in `Opacity(0.5)` (accent @ alpha 0.5).
class _PillButton extends StatelessWidget {
  const _PillButton({
    required this.label,
    this.onPressed,
    this.filled = true,
    this.isLoading = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool filled;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    final fg = filled ? TokenColors.white : tokens.textAccent;
    return Tappable(
      onTap: isLoading ? null : onPressed,
      semanticLabel: label,
      child: Container(
        height: 44,
        padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: filled ? TokenColors.primary : tokens.bgCard,
          borderRadius: TokenRadius.borderPill,
          border:
              filled ? null : Border.all(color: tokens.textAccent, width: 0.5),
        ),
        child: isLoading
            ? SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(strokeWidth: 2, color: fg),
              )
            : Text(
                label,
                style: TokenTypography.body(
                  fontWeight: FontWeight.w600,
                  color: fg,
                ),
              ),
      ),
    );
  }
}

/// A tappable option row inside the batch action sheet.
class _SheetOption extends StatelessWidget {
  const _SheetOption({
    required this.label,
    required this.hint,
    required this.onTap,
  });

  final String label;
  final String hint;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    return Tappable(
      onTap: onTap,
      semanticLabel: '$label. $hint',
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: TokenSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: TokenTypography.body(
                fontWeight: FontWeight.w600,
                color: tokens.textPrimary,
              ),
            ),
            const SizedBox(height: TokenSpacing.xs),
            Text(
              hint,
              style: TokenTypography.caption(color: tokens.textTertiary),
            ),
          ],
        ),
      ),
    );
  }
}

/// Empty / error state.
class _StatusView extends StatelessWidget {
  const _StatusView({
    required this.icon,
    required this.color,
    required this.message,
    this.onRetry,
  });

  final IconData icon;
  final Color color;
  final String message;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TokenSpacing.xxl * 3),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 64, color: color.withValues(alpha: 0.5)),
            const SizedBox(height: TokenSpacing.xl),
            Text(
              message,
              style: TokenTypography.body(),
              textAlign: TextAlign.center,
            ),
            if (onRetry != null) ...[
              const SizedBox(height: TokenSpacing.xl),
              ButtonPrimary(
                  label: AppLocalizations.of(context)!.retry,
                  onPressed: onRetry),
            ],
          ],
        ),
      ),
    );
  }
}
