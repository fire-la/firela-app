/// Tag suggestion model for the transaction tag autocomplete.
///
/// Mirrors the backend `TagSuggestionDto` (`GET /:region/bean/transactions/tags`
/// response item). Hand-written (not from the dart-dio generator) because
/// incremental regeneration is a CI pipeline — see docs/api-types-migration.md.
class TagSuggestion {
  const TagSuggestion({required this.tag, required this.count});

  final String tag;
  final int count;

  factory TagSuggestion.fromJson(Map<String, dynamic> json) {
    return TagSuggestion(
      tag: json['tag'] as String? ?? '',
      // Backend returns count as a JSON number; coerce safely.
      count: (json['count'] as num?)?.toInt() ?? 0,
    );
  }
}
