import 'package:flutter/foundation.dart';

import '../receipt_text_parser.dart';
import 'ai_semantic_extractor.dart';
import 'foundation_models_extractor.dart';
import 'gemini_nano_extractor.dart';
import 'line_reconstructor.dart';
import 'noop_extractor.dart';
import 'ocr_engine_interface.dart';
import '../../utils/logger.dart';

/// Orchestrates the full OCR pipeline: engine → line reconstruction → parsing → AI enhancement.
///
/// Usage:
/// ```dart
/// final pipeline = OcrPipeline();
/// final result = await pipeline.process(imagePath);
/// ```
class OcrPipeline {
  final SemanticExtractor _aiExtractor;

  OcrPipeline({SemanticExtractor? aiExtractor})
      : _aiExtractor = aiExtractor ?? _createDefaultExtractor();

  /// Process an image through the full OCR pipeline.
  ///
  /// Steps:
  /// 1. OCR engine recognition → [OcrEngineResult]
  /// 2. Line reconstruction → [List<ReconstructedLine>]
  /// 3. Rule-based parsing → [ParsedReceipt]
  /// 4. AI semantic enhancement (if available and low confidence)
  Future<OcrPipelineResult> process(OcrEngine engine, String imagePath) async {
    final engineResult = await engine.processImage(imagePath);

    // Step 2: Reconstruct logical lines from blocks
    final hasCoordinates = engineResult.blocks.isNotEmpty &&
        engineResult.blocks.every((b) =>
            b.boundingBox.width > 0 && b.boundingBox.height > 0);

    ParsedReceipt receipt;
    List<ReconstructedLine> reconstructedLines = [];

    if (hasCoordinates) {
      reconstructedLines = LineReconstructor.reconstruct(engineResult.blocks);
      final reconstructedText = reconstructedLines.map((l) => l.text).join('\n');
      receipt = ReceiptTextParser.instance.parse(reconstructedText);
    } else {
      receipt = ReceiptTextParser.instance.parse(engineResult.fullText);
    }

    // Step 3: AI enhancement for low-confidence results
    if (receipt.confidence < 70 && _aiExtractor.isAvailable) {
      logger.i('[OcrPipeline] Low confidence (${receipt.confidence.toStringAsFixed(1)}%), '
          'attempting AI enhancement via ${_aiExtractor.name}');

      try {
        final aiResult = await _aiExtractor.extract(engineResult.fullText);
        if (aiResult != null) {
          receipt = SemanticExtractor.merge(receipt, aiResult);
          logger.i('[OcrPipeline] AI enhancement applied, new confidence: '
              '${receipt.confidence.toStringAsFixed(1)}%');
        }
      } catch (e) {
        logger.w('[OcrPipeline] AI enhancement failed: $e');
      }
    }

    return OcrPipelineResult(
      receipt: receipt,
      engineResult: engineResult,
      engineName: engine.name,
      usedAiEnhancement: _aiExtractor.isAvailable && receipt.confidence < 70,
      reconstructedLines: reconstructedLines,
    );
  }

  /// Create the best available AI extractor for this platform.
  static SemanticExtractor _createDefaultExtractor() {
    if (kIsWeb) return NoopExtractor();
    if (defaultTargetPlatform == TargetPlatform.android) {
      return GeminiNanoExtractor();
    }
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return FoundationModelsExtractor();
    }
    return NoopExtractor();
  }
}

/// Result from the full OCR pipeline.
class OcrPipelineResult {
  /// Final parsed receipt (possibly AI-enhanced).
  final ParsedReceipt receipt;

  /// Raw OCR engine result with blocks and coordinates.
  final OcrEngineResult engineResult;

  /// Name of the OCR engine used.
  final String engineName;

  /// Whether AI enhancement was attempted.
  final bool usedAiEnhancement;

  /// Reconstructed lines from coordinate clustering (empty if no coordinates).
  final List<ReconstructedLine> reconstructedLines;

  const OcrPipelineResult({
    required this.receipt,
    required this.engineResult,
    required this.engineName,
    this.usedAiEnhancement = false,
    this.reconstructedLines = const [],
  });

  /// Processing time from the OCR engine.
  Duration get processingTime => engineResult.processingTime;
}
