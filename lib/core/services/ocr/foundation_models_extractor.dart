import 'ai_semantic_extractor.dart';
import '../../utils/logger.dart';

/// Semantic extractor using Apple Foundation Models on iOS 18+.
///
/// Apple's Foundation Models framework provides on-device generative AI
/// capabilities starting with iOS 18. This extractor uses it for
/// structured receipt data extraction.
///
/// Prerequisites:
/// - iOS 18+ device
/// - `flutter_foundation_models` package in pubspec.yaml
class FoundationModelsExtractor implements SemanticExtractor {
  @override
  String get name => 'Foundation Models';

  @override
  bool get isAvailable {
    // TODO: Check device capabilities at runtime:
    // 1. Platform is iOS
    // 2. iOS version >= 18.0
    // 3. Device supports on-device foundation models
    // This requires the flutter_foundation_models package.
    return false;
  }

  @override
  Future<StructuredReceipt?> extract(String rawText) async {
    if (!isAvailable) return null;

    try {
      // TODO: Implement Foundation Models extraction:
      //
      // 1. Create a system prompt:
      //    final session = FoundationModel.session(
      //      instructions: 'Extract receipt data as structured JSON...',
      //    );
      //
      // 2. Run inference:
      //    final response = await session.respond(to: rawText);
      //
      // 3. Parse structured response:
      //    return StructuredReceipt.fromJson(jsonDecode(response.content));

      logger.i('[FoundationModels] Extraction not yet implemented');
      return null;
    } catch (e) {
      logger.w('[FoundationModels] Extraction failed: $e');
      return null;
    }
  }
}
