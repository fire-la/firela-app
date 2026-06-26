/// Matched rule from backend `RuleMatchBranchData.matchedRule`.
///
/// Only [name] is displayed (the rule name line of the suggestion card). [id]
/// mirrors the backend identity for faithfulness; the optional `pattern` is not
/// carried because the frontend never displays it.
class MatchedRule {
  const MatchedRule({
    required this.id,
    required this.name,
  });

  final String id;

  /// Display name of the rule, e.g. "餐饮·关键词规则".
  final String name;
}
