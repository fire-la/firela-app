/// One decision option returned by the backend for a review item.
///
/// Mirrors the generated `DecisionOptionDto`:
/// `{value, labelKey, recommended?, descriptionKey?}`.
/// `labelKey`/`descriptionKey` are backend i18n keys (not directly callable
/// by Flutter l10n), so the UI maps `value` → a Flutter l10n key instead.
class DecisionOption {
  const DecisionOption({
    required this.value,
    required this.labelKey,
    this.recommended = false,
    this.descriptionKey,
  });

  /// Action value to submit on resolve, e.g. UPGRADE_REPLACE, ACCEPT.
  final String value;

  /// Backend i18n key for the label (e.g. review.payee.accept.label).
  final String labelKey;

  /// Whether the backend recommends this option (rendered as the primary button).
  final bool recommended;

  /// Optional backend i18n key for a description.
  final String? descriptionKey;

  @override
  String toString() => 'DecisionOption($value, recommended=$recommended)';
}
