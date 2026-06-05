import 'package:flutter/foundation.dart';

import 'mobile_mlkit_engine.dart';
import 'ocr_engine_interface.dart';
import 'web_tesseract_engine.dart';

/// Factory that creates the appropriate OCR engine for the current platform.
class OcrEngineFactory {
  OcrEngineFactory._();

  /// Create an OCR engine suitable for the current platform.
  ///
  /// - Web: [WebTesseractEngine] (Tesseract.js WASM)
  /// - Mobile (Android/iOS): [MobileMlKitEngine] (Google ML Kit)
  static OcrEngine create() {
    if (kIsWeb) {
      return WebTesseractEngine();
    }
    return MobileMlKitEngine();
  }
}
