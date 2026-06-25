import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../domain/entities/decision_option.dart';

/// DecisionButtonRow business component (.pen vr9EV).
///
/// Renders a review's `decisionOptions` as a vertical stack: the recommended
/// option (or the first) as a primary button, the rest as secondary buttons,
/// all in backend order. Button labels map the action `value` → a Flutter l10n
/// key (backend `labelKey` lives in an English key-space Flutter can't call
/// directly); unmapped actions fall back to a prettified raw value so a new
/// backend action still renders readably.
class DecisionButtonGroup extends StatelessWidget {
  const DecisionButtonGroup({
    super.key,
    required this.options,
    required this.onDecide,
    this.submittingOption,
  });

  final List<DecisionOption> options;
  final void Function(DecisionOption option) onDecide;

  /// The option currently being submitted, or null when idle. The spinner only
  /// appears on the tapped button (ButtonSecondary has no loading state, so a
  /// secondary tap just disables the row).
  final DecisionOption? submittingOption;

  @override
  Widget build(BuildContext context) {
    if (options.isEmpty) return const SizedBox.shrink();

    final l10n = AppLocalizations.of(context)!;
    final isBusy = submittingOption != null;
    // Primary = first recommended option, else the first.
    final recommendedIndex = options.indexWhere((o) => o.recommended);
    final primaryValue =
        options[recommendedIndex < 0 ? 0 : recommendedIndex].value;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (final option in options)
          Padding(
            padding: const EdgeInsets.only(bottom: TokenSpacing.sm),
            child: option.value == primaryValue
                ? ButtonPrimary(
                    label: reviewActionLabel(l10n, option.value),
                    isLoading: submittingOption?.value == option.value,
                    onPressed: isBusy ? null : () => onDecide(option),
                  )
                : ButtonSecondary(
                    label: reviewActionLabel(l10n, option.value),
                    onPressed: isBusy ? null : () => onDecide(option),
                  ),
          ),
      ],
    );
  }
}

/// Frontend mapping of backend action values → Flutter l10n labels.
///
/// Covers the 5 review types' actions per the backend contract. Action values
/// the backend may introduce later fall back to a prettified raw value rather
/// than crashing or showing an opaque key.
String reviewActionLabel(AppLocalizations l10n, String action) {
  switch (action) {
    // DUPLICATE
    case 'UPGRADE_REPLACE':
      return l10n.reviewActionUpgradeReplace;
    case 'LINK_KEEP_BOTH':
      return l10n.reviewActionLinkKeepBoth;
    case 'IGNORE_NEW':
      return l10n.reviewActionIgnoreNew;
    case 'CONFIRM_DIFFERENT':
      return l10n.reviewActionConfirmDifferent;
    // RULE_MATCH / PAYEE_MATCH / ACCOUNT_VALIDATION
    case 'ACCEPT':
      return l10n.reviewActionAccept;
    case 'REJECT':
      return l10n.reviewActionReject;
    case 'ACCEPT_AND_LEARN':
      return l10n.reviewActionAcceptAndLearn;
    case 'CHOOSE_OTHER':
      return l10n.reviewActionChooseOther;
    case 'CANCEL':
      return l10n.reviewActionCancel;
    // PIPELINE_ERROR
    case 'FIX':
      return l10n.reviewActionFix;
    case 'IGNORE':
      return l10n.reviewActionIgnore;
    default:
      // ponytail: prettify unknown action values ("KEEP_EXISTING" → "Keep Existing")
      return action
          .toLowerCase()
          .split('_')
          .where((w) => w.isNotEmpty)
          .map((w) => w[0].toUpperCase() + w.substring(1))
          .join(' ');
  }
}
