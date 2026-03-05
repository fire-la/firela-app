import '../network/api_client.dart';
import '../constants/api_constants.dart';

/// OCR service for receipt image recognition
///
/// Provides methods to process receipt images using backend OCR API.
class OcrService {
  OcrService._();
  static final OcrService instance = OcrService._();

  final _client = ApiClient.instance;

  /// Process a receipt image and extract transaction data
  ///
  /// [imagePath] - Local file path to the receipt image
  ///
  /// Returns a map containing:
  /// - `success`: Whether OCR was successful
  /// - `data`: Extracted transaction data (if success)
  ///   - `date`: Transaction date
  ///   - `amount`: Transaction amount
  ///   - `merchant`: Merchant/payee name
  ///   - `category`: Suggested expense category
  ///   - `description`: Transaction description
  ///   - `confidence`: OCR confidence score (0.0-1.0)
  /// - `error`: Error message (if failed)
  Future<Map<String, dynamic>> processReceiptImage(String imagePath) async {
    final result = await _client.uploadFile(
      ApiConstants.ocrReceiptEndpoint,
      imagePath,
      fieldName: 'image',
    );
    return Map<String, dynamic>.from(result as Map);
  }
}
