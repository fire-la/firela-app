import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/logger.dart';

/// Service for scanning documents with automatic edge detection and perspective correction.
///
/// Uses `image_picker` as fallback on platforms that don't support
/// `document_camera_frame` (Web, desktop).
class DocumentScannerService {
  DocumentScannerService._();
  static final DocumentScannerService instance = DocumentScannerService._();

  /// Whether document scanning with edge detection is supported on this platform.
  bool get isSupported {
    // document_camera_frame only supports Android and iOS.
    // Web and desktop fall back to image_picker.
    return !kIsWeb && (defaultTargetPlatform == TargetPlatform.android || defaultTargetPlatform == TargetPlatform.iOS);
  }

  /// Scan a document using the camera with automatic edge detection.
  ///
  /// Returns the path to the corrected image, or `null` if the user cancelled.
  /// Falls back to `image_picker` on unsupported platforms.
  Future<String?> scanDocument() async {
    if (!isSupported) {
      logger.i('[DocScanner] Platform not supported, falling back to image_picker');
      return _fallbackCamera();
    }

    try {
      return await _scanWithDocumentCamera();
    } catch (e) {
      logger.w('[DocScanner] Document camera failed, falling back: $e');
      return _fallbackCamera();
    }
  }

  /// Scan using the native document camera (edge detection + perspective correction).
  Future<String?> _scanWithDocumentCamera() async {
    // document_camera_frame is a native-only plugin.
    // We use conditional import to avoid build errors on web.
    // For now, fall back to image_picker until the plugin is integrated
    // at the native level (Android: Activity, iOS: ViewController).
    //
    // The plugin requires platform-specific setup:
    // - Android: integrate DocumentCameraFrameActivity in AndroidManifest
    // - iOS: add NSCameraUsageDescription in Info.plist
    //
    // Once native setup is complete, this method should launch the
    // document camera and return the corrected image path.
    logger.i('[DocScanner] Using image_picker camera (document_camera_frame pending native setup)');
    return _fallbackCamera();
  }

  /// Fallback: use image_picker camera (no edge detection).
  Future<String?> _fallbackCamera() async {
    final picker = ImagePicker();
    final image = await picker.pickImage(
      source: ImageSource.camera,
      maxWidth: 1920,
      maxHeight: 1920,
      imageQuality: 85,
    );
    return image?.path;
  }
}
