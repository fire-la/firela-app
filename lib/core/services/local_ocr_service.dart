import 'dart:ui';

import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

import '../utils/logger.dart';

/// Recognized text block with position info for debugging
class RecognizedBlock {
  final String text;
  final Rect boundingBox;
  final List<String> lines;

  RecognizedBlock({required this.text, required this.boundingBox, required this.lines});
}

/// Result of local OCR processing
class LocalOcrResult {
  final String fullText;
  final List<RecognizedBlock> blocks;
  final Duration processingTime;

  LocalOcrResult({
    required this.fullText,
    required this.blocks,
    required this.processingTime,
  });
}

/// Local OCR service using Google ML Kit for on-device text recognition
class LocalOcrService {
  LocalOcrService._();
  static final LocalOcrService instance = LocalOcrService._();

  TextRecognizer? _recognizer;

  TextRecognizer get _textRecognizer {
    return _recognizer ??= TextRecognizer(script: TextRecognitionScript.chinese);
  }

  /// Process an image and extract text
  Future<LocalOcrResult> processImage(String imagePath) async {
    final stopwatch = Stopwatch()..start();

    final inputImage = InputImage.fromFilePath(imagePath);
    final recognizedText = await _textRecognizer.processImage(inputImage);

    stopwatch.stop();

    final blocks = <RecognizedBlock>[];
    final fullTextBuffer = StringBuffer();

    for (final block in recognizedText.blocks) {
      final blockLines = block.lines.map((l) => l.text).toList();
      blocks.add(RecognizedBlock(
        text: block.text,
        boundingBox: block.boundingBox,
        lines: blockLines,
      ));
      fullTextBuffer.writeln(block.text);
    }

    final result = LocalOcrResult(
      fullText: fullTextBuffer.toString().trim(),
      blocks: blocks,
      processingTime: stopwatch.elapsed,
    );

    logger.i('[LocalOCR] Processed in ${result.processingTime.inMilliseconds}ms');
    logger.i('[LocalOCR] Found ${result.blocks.length} blocks');
    logger.d('[LocalOCR] Full text:\n${result.fullText}');

    return result;
  }

  /// Dispose resources
  void dispose() {
    _recognizer?.close();
    _recognizer = null;
  }
}
