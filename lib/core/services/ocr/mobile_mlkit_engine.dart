import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

import '../../../shared/signals/region_signal.dart';
import 'ocr_engine_interface.dart';
import '../../utils/logger.dart';

/// OCR engine using Google ML Kit Text Recognition.
///
/// Works on Android and iOS. ML Kit internally uses Apple Vision on iOS.
/// Script selection is based on the current region signal.
class MobileMlKitEngine implements OcrEngine {
  TextRecognizer? _recognizer;
  String? _lastScriptKey;

  /// Determine the ML Kit script based on the current region.
  TextRecognitionScript _scriptForRegion() {
    final region = regionSignal.value;
    switch (region) {
      case 'cn':
        return TextRecognitionScript.chinese;
      case 'jp':
        return TextRecognitionScript.japanese;
      case 'kr':
        return TextRecognitionScript.korean;
      case 'de':
      case 'eu-core':
        return TextRecognitionScript.latin;
      default:
        return TextRecognitionScript.chinese;
    }
  }

  TextRecognizer get _textRecognizer {
    final scriptKey = regionSignal.value;
    // Recreate recognizer if region changed
    if (_recognizer != null && _lastScriptKey != scriptKey) {
      _recognizer!.close();
      _recognizer = null;
    }
    if (_recognizer == null) {
      final script = _scriptForRegion();
      _recognizer = TextRecognizer(script: script);
      _lastScriptKey = scriptKey;
      logger.i('[MobileMlKit] Created recognizer for region=$scriptKey, script=$script');
    }
    return _recognizer!;
  }

  @override
  String get name => 'ML Kit';

  @override
  Future<OcrEngineResult> processImage(String imagePath) async {
    final stopwatch = Stopwatch()..start();

    final inputImage = InputImage.fromFilePath(imagePath);
    final recognizedText = await _textRecognizer.processImage(inputImage);

    stopwatch.stop();

    final blocks = <OcrBlock>[];
    final fullTextBuffer = StringBuffer();

    for (final block in recognizedText.blocks) {
      final ocrLines = block.lines.map((l) => OcrLine(
        text: l.text,
        boundingBox: l.boundingBox,
      )).toList();

      blocks.add(OcrBlock(
        text: block.text,
        boundingBox: block.boundingBox,
        lines: ocrLines,
      ));
      fullTextBuffer.writeln(block.text);
    }

    final result = OcrEngineResult(
      fullText: fullTextBuffer.toString().trim(),
      blocks: blocks,
      processingTime: stopwatch.elapsed,
    );

    logger.i('[MobileMlKit] Processed in ${result.processingTime.inMilliseconds}ms, ${result.blocks.length} blocks');
    return result;
  }

  @override
  void dispose() {
    _recognizer?.close();
    _recognizer = null;
  }
}
