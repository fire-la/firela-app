import 'matched_rule.dart';

/// RULE_MATCH branch data (backend `RuleMatchBranchData`).
///
/// Pure display — RULE_MATCH decisions (ACCEPT / REJECT / ACCEPT_AND_LEARN) take
/// no `data` payload, so this carries no selection state. [destination] is the
/// account the rule would classify the transaction to; it may be null when the
/// backend has no suggested target.
class RuleMatchData {
  const RuleMatchData({
    required this.matchedRule,
    this.destination,
  });

  final MatchedRule matchedRule;

  /// Target account the rule would apply (backend
  /// `suggestedAccounts.destination`), or null when unspecified.
  final String? destination;
}
