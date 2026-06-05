import 'package:flutter/foundation.dart';

import 'ocr_engine_interface.dart';
import '../../utils/logger.dart';

/// OCR engine using Tesseract.js WASM for web platform.
///
/// On web, this uses JavaScript interop to call Tesseract.js.
/// On non-web platforms, this should not be instantiated.
class WebTesseractEngine implements OcrEngine {
  @override
  String get name => 'Tesseract.js';

  @override
  Future<OcrEngineResult> processImage(String imagePath) async {
    if (!kIsWeb) {
      throw UnsupportedError('WebTesseractEngine is only supported on web platform');
    }

    final stopwatch = Stopwatch()..start();

    // Web OCR via Tesseract.js WASM.
    //
    // Implementation requires:
    // 1. Add tesseract.min.js to web/index.html:
    //    <script src="https://cdn.jsdelivr.net/npm/tesseract.js@5/dist/tesseract.min.js"></script>
    // 2. Use dart:js_interop to call Tesseract.recognize()
    //
    // For now, this provides a placeholder that returns empty results.
    // Full implementation requires dart:js_interop which needs web compilation.
    //
    // Example JS interop (to be implemented):
    // ```dart
    // import 'dart:js_interop';
    //
    // @JS('Tesseract')
    // extension type Tesseract._(JSObject _) implements JSObject {
    //   external static JSPromise recognize(JSString image, JSString lang);
    // }
    // ```
    stopwatch.stop();

    logger.w('[WebTesseract] Tesseract.js integration pending. Returning empty result.');

    return OcrEngineResult(
      fullText: '',
      blocks: [],
      processingTime: stopwatch.elapsed,
    );
  }

  @override
  void dispose() {
    // No resources to release for the placeholder
  }
}
