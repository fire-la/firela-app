import '../receipt_text_parser.dart';

/// Structured receipt data extracted by AI models.
class StructuredReceipt {
  final String merchant;
  final double totalAmount;
  final DateTime? date;
  final List<StructuredItem> items;
  final double confidence;

  const StructuredReceipt({
    this.merchant = '',
    this.totalAmount = 0,
    this.date,
    this.items = const [],
    this.confidence = 0,
  });
}

/// A single line item extracted by AI.
class StructuredItem {
  final String name;
  final double totalPrice;

  const StructuredItem({required this.name, required this.totalPrice});
}

/// Interface for on-device AI semantic extraction.
///
/// Implementations use device-local large language models (Gemini Nano on
/// Android 15+, Foundation Models on iOS 18+) to extract structured receipt
/// data from raw OCR text, replacing complex regex patterns.
abstract class SemanticExtractor {
  /// Whether the device supports this AI extraction method.
  bool get isAvailable;

  /// Human-readable name for this extractor.
  String get name;

  /// Extract structured receipt data from raw OCR text.
  ///
  /// Returns `null` if extraction fails or is not available.
  Future<StructuredReceipt?> extract(String rawText);

  /// Merge AI extraction results with rule-based parsing results.
  ///
  /// For fields where the AI has higher confidence, use the AI result;
  /// otherwise keep the rule-based result.
  static ParsedReceipt merge(ParsedReceipt ruleResult, StructuredReceipt aiResult) {
    // If AI confidence is very high, prefer AI for merchant and date
    final useAiMerchant = aiResult.merchant.isNotEmpty &&
        (ruleResult.merchant.isEmpty || aiResult.confidence > ruleResult.confidence);
    final useAiAmount = aiResult.totalAmount > 0 &&
        (ruleResult.totalAmount == 0 || aiResult.confidence > 70);
    final useAiDate = aiResult.date != null && ruleResult.date == null;

    return ParsedReceipt(
      merchant: useAiMerchant ? aiResult.merchant : ruleResult.merchant,
      totalAmount: useAiAmount ? aiResult.totalAmount : ruleResult.totalAmount,
      date: useAiDate ? aiResult.date : ruleResult.date,
      lineItems: ruleResult.lineItems.isNotEmpty
          ? ruleResult.lineItems
          : aiResult.items.map((i) => ParsedLineItem(
                name: i.name,
                totalPrice: i.totalPrice,
              )).toList(),
      confidence: (ruleResult.confidence + aiResult.confidence) / 2,
      rawText: ruleResult.rawText,
      debugMatches: {
        ...ruleResult.debugMatches,
        'ai_merchant': aiResult.merchant,
        'ai_amount': aiResult.totalAmount.toStringAsFixed(2),
        'ai_confidence': aiResult.confidence.toStringAsFixed(1),
      },
    );
  }
}
