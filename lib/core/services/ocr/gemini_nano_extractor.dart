import 'ai_semantic_extractor.dart';
import '../../utils/logger.dart';

/// Semantic extractor using Gemini Nano on Android 15+.
///
/// Gemini Nano is a small on-device model available through the
/// Google Generative AI SDK. It can run inference locally on
/// supported Android devices.
///
/// Prerequisites:
/// - Android 15+ device
/// - Google AI Edge plugin
/// - `gemini_nano_android` package in pubspec.yaml
class GeminiNanoExtractor implements SemanticExtractor {
  @override
  String get name => 'Gemini Nano';

  @override
  bool get isAvailable {
    // TODO: Check device capabilities at runtime:
    // 1. Platform is Android
    // 2. Android API level >= 35 (Android 15)
    // 3. Device has sufficient on-device ML capabilities
    // This requires the google_generative_ai or gemini_nano_android package.
    return false;
  }

  @override
  Future<StructuredReceipt?> extract(String rawText) async {
    if (!isAvailable) return null;

    try {
      // TODO: Implement Gemini Nano extraction:
      //
      // 1. Initialize on-device model:
      //    final model = GenerativeModel(model: 'gemini-nano', ...);
      //
      // 2. Construct prompt:
      //    final prompt = '''
      //    Extract receipt data as JSON:
      //    - merchant: store name
      //    - totalAmount: total as number
      //    - date: ISO format or null
      //    - items: [{name, totalPrice}]
      //    - confidence: 0-100
      //
      //    Receipt text:
      //    $rawText
      //    ''';
      //
      // 3. Run inference:
      //    final response = await model.generateContent([Content.text(prompt)]);
      //
      // 4. Parse JSON response:
      //    return StructuredReceipt.fromJson(jsonDecode(response.text));

      logger.i('[GeminiNano] Extraction not yet implemented');
      return null;
    } catch (e) {
      logger.w('[GeminiNano] Extraction failed: $e');
      return null;
    }
  }
}
