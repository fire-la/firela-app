import 'package:firela_api/firela_api.dart' as gen;

/// Review type wire values — the single source of truth for the 5 review kinds.
///
/// Unifies the two generated DTO enums ([gen.ReviewSummaryDtoTypeEnum] for list,
/// [gen.ReviewDetailDtoTypeEnum] for detail) and the free-form `byType` stats
/// keys behind one domain enum. Presentation switches on this, never on a raw
/// string — so a backend rename surfaces here instead of silently breaking UI
/// (IGN-287 item A).
enum ReviewType {
  duplicate('DUPLICATE'),
  ruleMatch('RULE_MATCH'),
  payeeMatch('PAYEE_MATCH'),
  accountValidation('ACCOUNT_VALIDATION'),
  pipelineError('PIPELINE_ERROR');

  const ReviewType(this.wireValue);

  /// Wire value shared with the backend enum and the `byType` stats keys.
  final String wireValue;

  /// Resolve from a wire string by matching [wireValue] (single source — no
  /// duplicated literals). Unknown/absent → null (e.g. a `byType` key we don't
  /// model yet is skipped rather than crashing).
  static ReviewType? fromWire(String? wire) {
    if (wire == null) return null;
    for (final t in ReviewType.values) {
      if (t.wireValue == wire) return t;
    }
    return null;
  }

  /// Map the list DTO's typed enum. The generated [EnumClass] isn't a sealed
  /// Dart enum, so Dart can't prove exhaustiveness. The named cases reference
  /// the generated constants directly — a backend rename breaks this at compile
  /// time. A value outside the known 5 (e.g. a new type added before
  /// [ReviewType] is extended) degrades to null instead of throwing, so one
  /// unknown item can't crash the whole list load.
  static ReviewType? fromSummary(gen.ReviewSummaryDtoTypeEnum t) => switch (t) {
        gen.ReviewSummaryDtoTypeEnum.DUPLICATE => duplicate,
        gen.ReviewSummaryDtoTypeEnum.RULE_MATCH => ruleMatch,
        gen.ReviewSummaryDtoTypeEnum.PAYEE_MATCH => payeeMatch,
        gen.ReviewSummaryDtoTypeEnum.ACCOUNT_VALIDATION => accountValidation,
        gen.ReviewSummaryDtoTypeEnum.PIPELINE_ERROR => pipelineError,
        _ => null,
      };

  /// Map the detail DTO's typed enum (same 5 values, separate generated type).
  static ReviewType? fromDetail(gen.ReviewDetailDtoTypeEnum t) => switch (t) {
        gen.ReviewDetailDtoTypeEnum.DUPLICATE => duplicate,
        gen.ReviewDetailDtoTypeEnum.RULE_MATCH => ruleMatch,
        gen.ReviewDetailDtoTypeEnum.PAYEE_MATCH => payeeMatch,
        gen.ReviewDetailDtoTypeEnum.ACCOUNT_VALIDATION => accountValidation,
        gen.ReviewDetailDtoTypeEnum.PIPELINE_ERROR => pipelineError,
        _ => null,
      };
}

/// Resolve-decision wire values — the single source of truth for review actions.
///
/// Centralizes the action strings that were scattered as bare literals across
/// the list page and datasource (IGN-287 item A). The detail page largely reads
/// actions dynamically from `decisionOptions`; this enum covers the values the
/// list/inline/batch paths hardcode plus the known decision set.
enum ReviewAction {
  ignoreNew('IGNORE_NEW'),
  accept('ACCEPT'),
  fix('FIX'),
  reject('REJECT'),
  upgradeReplace('UPGRADE_REPLACE'),
  chooseOther('CHOOSE_OTHER'),
  linkKeepBoth('LINK_KEEP_BOTH'),
  confirmDifferent('CONFIRM_DIFFERENT');

  const ReviewAction(this.wireValue);

  /// Wire value sent to `POST /reviews/:id/resolve` and `batch-resolve`.
  final String wireValue;

  /// Resolve from a wire string by matching [wireValue]. Unknown → null.
  static ReviewAction? fromWire(String? wire) {
    if (wire == null) return null;
    for (final a in ReviewAction.values) {
      if (a.wireValue == wire) return a;
    }
    return null;
  }
}
