import 'ai_semantic_extractor.dart';

/// No-op implementation of SemanticExtractor for devices that don't support
/// on-device AI models. Returns `null` for all extractions.
class NoopExtractor implements SemanticExtractor {
  @override
  String get name => 'None';

  @override
  bool get isAvailable => false;

  @override
  Future<StructuredReceipt?> extract(String rawText) async => null;
}
