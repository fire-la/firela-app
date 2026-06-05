import 'dart:ui';

/// A single line of recognized text within a block.
class OcrLine {
  final String text;
  final Rect boundingBox;

  const OcrLine({required this.text, required this.boundingBox});
}

/// A block of recognized text (paragraph-level grouping from OCR engine).
class OcrBlock {
  final String text;
  final Rect boundingBox;
  final List<OcrLine> lines;

  const OcrBlock({required this.text, required this.boundingBox, required this.lines});
}

/// Result from an OCR engine, containing full text and structured blocks.
class OcrEngineResult {
  final String fullText;
  final List<OcrBlock> blocks;
  final Duration processingTime;

  const OcrEngineResult({
    required this.fullText,
    required this.blocks,
    required this.processingTime,
  });
}

/// Abstract interface for OCR engines.
///
/// Each platform (ML Kit mobile, Tesseract.js web, etc.) implements this
/// to provide a unified OCR API.
abstract class OcrEngine {
  /// Process the image at [imagePath] and return recognized text with blocks.
  Future<OcrEngineResult> processImage(String imagePath);

  /// Release engine resources.
  void dispose();

  /// Human-readable name of this engine (for debugging/logging).
  String get name;
}
