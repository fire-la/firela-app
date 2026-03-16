import 'generated/openapi.dart';
import '../features/review_center/data/models/pending_transaction_model.dart';
import '../features/review_center/domain/models/confidence_level.dart';

/// Adapter for converting generated API types to domain models and vice versa.
///
/// This adapter bridges the gap between:
/// - API types (from OpenAPI spec): TransactionDetail, Posting, etc.
/// - Domain models (app-specific): PendingTransactionModel, etc.
///
/// Usage:
/// ```dart
/// final transaction = TypeAdapter.toPendingTransaction(apiResponse);
/// final request = TypeAdapter.toCreateTransactionRequest(domainModel);
/// ```
class TypeAdapter {
  TypeAdapter._();

  // ============================================
  // TransactionDetail -> PendingTransactionModel
  // ============================================

  /// Convert API TransactionDetail to domain PendingTransactionModel
  ///
  /// Maps API fields to domain model:
  /// - id -> id
  /// - date -> transactionTime
  /// - payee/narration -> merchantName
  /// - first posting -> accountName, amount, currency
  /// - status -> confidenceLevel (inferred)
  static PendingTransactionModel toPendingTransaction(TransactionDetail dto) {
    // Get first posting for amount/currency/account info
    final firstPosting = dto.postings.isNotEmpty ? dto.postings.first : null;

    // Parse amount from posting
    final amount = _parseAmount(firstPosting?.units);

    // Get currency from posting
    final currency = firstPosting?.currency ?? 'CNY';

    // Get account name
    final accountName = firstPosting?.accountName ?? '';

    // Get merchant name (prefer payee, fallback to narration)
    final merchantName = dto.payee ?? dto.narration ?? '';

    // Parse transaction time
    final transactionTime = _parseDate(dto.date);

    // Infer confidence level from source type or status
    // In Review Center context, pending transactions come from various sources
    // with different confidence levels
    final confidenceLevel = _inferConfidenceLevel(dto.sourceType, dto.sourcePlatform);

    // Calculate confidence score (0-100)
    final confidenceScore = _calculateConfidenceScore(dto.sourceType, dto.sourcePlatform);

    // Parse created time
    final createdAt = _parseDateTime(dto.createdAt);

    return PendingTransactionModel(
      id: dto.id,
      accountName: accountName,
      merchantName: merchantName,
      amount: amount,
      currency: currency,
      transactionTime: transactionTime,
      confidenceLevel: confidenceLevel,
      confidenceScore: confidenceScore,
      createdAt: createdAt,
    );
  }

  /// Convert list of TransactionDetail to list of PendingTransactionModel
  static List<PendingTransactionModel> toPendingTransactionList(
    List<TransactionDetail> dtos,
  ) {
    return dtos.map(toPendingTransaction).toList();
  }

  // ============================================
  // PendingTransactionModel -> CreateTransactionRequest
  // ============================================

  /// Convert domain model to API create request
  ///
  /// Note: This creates a minimal transaction with the available data.
  /// Some fields may need to be populated by the caller.
  static CreateTransactionRequest toCreateTransactionRequest(
    PendingTransactionModel model, {
    String? accountId,
  }) {
    return CreateTransactionRequest(
      date: _formatDate(model.transactionTime),
      flag: TransactionFlag.complete,
      payee: model.merchantName,
      narration: 'Imported transaction',
      postings: [
        CreatePostingRequest(
          account: accountId ?? model.accountName,
          units: model.amount.toStringAsFixed(2),
          currency: model.currency,
        ),
      ],
    );
  }

  // ============================================
  // Helper Methods
  // ============================================

  /// Parse amount from string (decimal for precision)
  static double _parseAmount(String? value) {
    if (value == null || value.isEmpty) return 0.0;
    return double.tryParse(value) ?? 0.0;
  }

  /// Parse date string (YYYY-MM-DD format)
  static DateTime _parseDate(String? value) {
    if (value == null || value.isEmpty) return DateTime.now();
    return DateTime.tryParse(value) ?? DateTime.now();
  }

  /// Parse datetime string (ISO 8601 format)
  static DateTime _parseDateTime(String? value) {
    if (value == null || value.isEmpty) return DateTime.now();
    return DateTime.tryParse(value) ?? DateTime.now();
  }

  /// Format date to ISO format (YYYY-MM-DD)
  static String _formatDate(DateTime date) {
    return date.toIso8601String().split('T').first;
  }

  /// Infer confidence level from source type/platform
  ///
  /// This maps the API source types to the Review Center confidence levels:
  /// - HIGH: OCR/Imported from reliable sources
  /// - MEDIUM: NLP-categorized, rule matches
  /// - LOW: Manual entry required, validation needed
  static ConfidenceLevel _inferConfidenceLevel(String? sourceType, String? sourcePlatform) {
    if (sourceType == null) return ConfidenceLevel.low;

    switch (sourceType.toUpperCase()) {
      case 'OCR':
      case 'IMPORT':
      case 'API':
        return ConfidenceLevel.high;
      case 'NLP':
      case 'RULE_MATCH':
      case 'PAYEE_MATCH':
        return ConfidenceLevel.medium;
      case 'MANUAL':
      case 'DUPLICATE':
      case 'ACCOUNT_VALIDATION':
      case 'PIPELINE_ERROR':
      default:
        return ConfidenceLevel.low;
    }
  }

  /// Calculate confidence score (0-100) from source type
  static double _calculateConfidenceScore(String? sourceType, String? sourcePlatform) {
    final level = _inferConfidenceLevel(sourceType, sourcePlatform);
    switch (level) {
      case ConfidenceLevel.high:
        return 90.0;
      case ConfidenceLevel.medium:
        return 60.0;
      case ConfidenceLevel.low:
        return 30.0;
    }
  }

  // ============================================
  // Account Type Helpers
  // ============================================

  /// Parse account type from API string
  static AccountType toAccountType(String? value) {
    if (value == null) return AccountType.assets;
    return AccountType.fromString(value);
  }

  /// Parse account status from API string
  static AccountStatus toAccountStatus(String? value) {
    if (value == null) return AccountStatus.open;
    return AccountStatus.fromString(value);
  }

  /// Parse transaction status from API string
  static TxnStatus toTxnStatus(String? value) {
    if (value == null) return TxnStatus.active;
    return TxnStatus.fromString(value);
  }
}
